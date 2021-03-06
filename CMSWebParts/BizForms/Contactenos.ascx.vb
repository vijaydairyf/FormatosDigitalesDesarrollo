﻿Imports CMS.PortalControls
Imports System.Linq
Imports System.Data
Imports System.Collections.Generic
Partial Class CMSWebParts_MFS_Contactenos
    Inherits CMSAbstractWebPart
    Private Sub enviomailconfirmacion()
        Dim emailTemplateName As String
        Dim replacements(9, 2) As String
        Dim destinatarios As String
        Dim envio As New SendEmailUsingTemplateHelper
        destinatarios = ""
        Select Case Me.ddpais.SelectedValue
            Case "Regional"
                destinatarios = "aea.regional@iica.int"
            Case "Bolivia"
                destinatarios = "aea.bolivia@iica.int"
            Case "Colombia"
                destinatarios = "aea.colombia@iica.int"
            Case "Ecuador"
                destinatarios = "aea.ecuador@iica.int"
            Case "Peru"
                destinatarios = "aea.peru@iica.int"
        End Select
        'destinatarios = CMS.CMSHelper.CMSContext.CurrentUser.Email

        emailTemplateName = "ContactenosAEA"
        replacements(0, 0) = "txtapellido"
        replacements(0, 1) = Me.txtapellido.Text
        replacements(1, 0) = "txtasunto"
        replacements(1, 1) = Me.txtasunto.Text
        replacements(2, 0) = "txtmail"
        replacements(2, 1) = Me.txtmail.Text
        replacements(3, 0) = "ddpais"
        replacements(3, 1) = Me.ddpais.SelectedValue
        replacements(4, 0) = "txtconsulta"
        replacements(4, 1) = Me.txtconsulta.Text

        envio.SendEmailUsingTemplateSubject(emailTemplateName, destinatarios, Me.txtmail.Text, Me.txtasunto.Text, replacements, "ContactenosAEA")

    End Sub
    Protected Sub btnenviar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnenviar.Click
        enviomailconfirmacion()
        Me.Mensaje("Su mensaje se envio satisfactoriamente")
        Me.Clear()
    End Sub
    Private Sub Clear()
        Me.txtapellido.Text = ""
        Me.txtasunto.Text = ""
        Me.txtconsulta.Text = ""
        Me.txtmail.Text = ""
    End Sub
    Private Sub Mensaje(ByVal cad As String)

        Me.fondo.Attributes("style") = "position:fixed;width:100%;height:100%;top:0px;left:0px;background-image:url('/App_Themes/REC/REC_imagenes/black.png');z-index:2;display:block"
        Me.fondo.Visible = True
        Me.Panel1.Attributes("style") = "position:absolute; top:50%; left:50%; width:30em; height:em; margin-top: -9em; margin-left: -15em; z-index:3; border:3px solid #d2b48c; padding:20px; background-color:#fafad2; display:block;   "
        Me.Panel1.Visible = True
        Me.Label2.Text = cad
        Me.Button4.Focus()
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        ' Me.fondo.Attributes("style") = "position:fixed;width:100%;height:100%;top:0px;left:0px;background-image:url('/MFS/App_Themes/REC/REC_imagenes/black.png');z-index:2;display:block"
        Me.fondo.Visible = False

        'Me.Panel1.Attributes("style") = "position:fixed; top:20%; z-index:3; border:3px solid #d2b48c; padding:20px; background-color:#fafad2; display:block;   "
        '"POSITION: absolute; TOP: " & posArriba & "px; LEFT: " & posDerecha & "px; WIDTH: " & ancho & "px; HEIGHT: " & alto & "px"
        Me.Panel1.Visible = False
    End Sub

    Protected Sub btnborrar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnborrar.Click
        Me.Clear()
    End Sub
End Class
