﻿<%@ Control Language="VB" AutoEventWireup="false" CodeFile="MFSAdminProyectos.ascx.vb" Inherits="CMSWebParts_MFS_MFSAdminProyectos" %>
<%@ Register assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>
<%@ Register src="mensaje.ascx" tagname="mensaje" tagprefix="uc1" %>
<script type="text/javascript" language="javascript">
function Changed( mytxt,idotro,idtotal,dcm)
{
 
  // alert (mytxt.id);
  // mytxt.value= mytxt.value + '.00'
   var numval = Number( mytxt.value)
   if ( isNaN(numval))
   {
   mytxt.style.border = '1px solid red';;
   alert('revise el valor ingresado, se espera un numero');
   numval=0;
   }
   else
   {
   if ( isNaN(dcm))
   {
    dcm=2;
   }
   mytxt.value=numval.toFixed(dcm);
   mytxt.style.border = '';
   };
   
   var numval1 = Number( idotro.value)
   if ( isNaN(numval1))
   {
    numval1=0
   }
   var numtotal = numval +numval1
   idtotal.value = numtotal.toFixed(dcm)
   
  // alert ( numval.toString());
};
</script>
<style type="text/css">
    
    
    .RadNotification_Default.rnShadows
{
/*
	box-shadow: 2px 2px 3px #b0b0b0;
	-webkit-box-shadow: 2px 2px 3px #b0b0b0;
	*/
}

.rnRoundedCorners
{
	/*border-radius: 5px;*/
}

.RadNotification
{
	margin: 0;
	padding: 0;
	font-family: Oswald;
    font-size: 12px;
    word-wrap: break-word;
    z-index: 9001;
}

.RadNotification_Default
{
	border: 1px solid #87ae2a;
	background-color: #FFFFFF !important;
	font-family: Oswald !important;
}

.RadNotification_Default .rnTitleBar
{
	border-bottom: 1px solid transparent;
	background-image: url('../App_Themes/REC/REC_imagenes/notificacion.png');
}

.rnTitleBar
{
	height: 24px;
	background-repeat: repeat-x;
	background-position: 0 0;
	margin: 0;
	padding: 0 4px;
	border-radius: 5px 5px 0 0;
}

.rnTitleBarIcon
{
	display: block;
	float: left;
	width: 16px;
	height: 16px;
	margin: 4px 4px 0 0;
	overflow: hidden;
}

.rnTitleBarTitle
{
	display: block;
	float: left;
	width: 70%;
	height: 24px;
	line-height: 24px;
	overflow: hidden;
	font-weight: bold;
}

.RadNotification_Default .rnContentWrapper
{
	border-top: 1px solid transparent;
}

.rnContentWrapper
{
	padding: 5px 5px 5px 5px;
	border: 0;
}

.rnContentIconClipIn
{
	position: relative;
	float: left;
	margin: -2px 0 -34px 15px;
	width: 32px;
	height: 32px;
}

.rnContentIconClipIn .rnCustomIcon
{
	clip: auto;
	margin-top: 12px;
}

.rnContentIconClip
{
	position: absolute;
	top: -1px;
	clip: rect(16px 32px 48px 0);
}


.rnContent
{
	padding: 12px 20px 20px 67px;
}
    

.RadNotification_Default .rnCommands a
{
	background-image: url('../App_Themes/REC/REC_imagenes/notificacion.png');
}


.RadNotification_Default .rnContentWrapper
{
	border-top: 1px solid transparent;
}

.botoncancelar
{
/*
	background:url("../App_Themes/REC/REC_imagenes/botoncancelar.png") no-repeat scroll 0 0 transparent;
	height:39px;
	padding-top:15px;
	width:227px;
    text-align:center;
	display: block;
	*/
}
.botongrabar
{
/*
	background:url("../App_Themes/REC/REC_imagenes/botongrabar.png") no-repeat scroll 0 0 transparent;
	height:39px;
	padding-top:15px;
	width:227px;
    text-align:center;
	display: block;
	*/
}
.botonnuevo
{
/*
	background:url("../App_Themes/REC/REC_imagenes/botonnuevo.png") no-repeat scroll 0 0 transparent;
	height:39px;
	padding-top:15px;
	width:227px;
    text-align:center;
    display: block;
	*/
}
.WhiteButton , .botonnuevo, .botongrabar, .botoncancelar
{
/*
	background:url("../App_Themes/REC/REC_imagenes/button-dd.png") no-repeat scroll 0 0 transparent;
	height:39px;
	padding-top:15px;
	width:227px;
    text-align:center;
	display: block;*/
	
text-align: center;
display: block;
background: #87ae2a;
padding: 0px 12px;
text-decoration: none;
color: #FFF !important;
font-family: Oswald;
font-size: 14px;
line-height: 45px;
max-width: 200px;
max-height: 45px;
overflow: hidden;
}
    
.tdvalor
{
     text-align:left;
     border-bottom : solid 1 black;
     border-bottom-style: solid; 
     border-bottom-width: 1px; 
     border-bottom-color: #000000; 
     padding: 5px; 
     margin: 5px
    
}   
.tdvalorfin
{
     text-align:left;
     padding: 5px; 
     margin: 5px;
}   
.tdetiqueta
{
     widows:222px;
     text-align:left;     
     padding: 5px; 
     margin: 5px;
     font-size:small;
     /*font-weight:bold;*/
} 
    
       
    .style1
    {
        width: 17px;
    }
    
       
    .style2
    {
        font-size: x-small;
        font-family: Arial, Helvetica, sans-serif;
    }
    .style3
    {
        widows: 222px;
        text-align: left;
        padding: 5px;
        margin: 5px;
        font-size: small;
        /*font-weight: bold;*/
        width: 302px;
    }
    .style4
    {
        widows: 222px;
        text-align: left;
        padding: 5px;
        margin: 5px;
        font-size: small;
        /*font-weight: bold;*/
        width: 307px;
    }
    .style5
    {
        width: 307px;
    }
    .style6
    {
        width: 200px;
    }
    
       
    .style8
    {
        font-weight: normal;
    }
    .style9
    {
        font-size: x-small;
    }
    .style10
    {
        height: 45px;
    }
    .style11
    {
        width: 284px;
        height: 45px;
    }
    
       
    .style12
    {
        width: 5px;
    }
    
       
    </style>


&nbsp;<asp:Panel ID="Pnlmensajeaceso" runat="server" Visible="False">
    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
        ForeColor="#993300" 
        Text="Su usuario no tiene acceso a esta pagina, por favor ingrese un usuario valido.  "></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/sconvocatoria/Registro.aspx">Iniciar 
    Sesión</asp:HyperLink>
</asp:Panel>
<asp:Panel ID="Pnlinfoproponente" runat="server" style="width: 900px;margin: 0 auto;">
    <table style="width:100%;">
        <tr>
            <td >
                </td>
            <td >
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <div  >
                    <asp:LinkButton class="WhiteButton" ID="btnInfoentidad" runat="server" CausesValidation="False" >
                                [-] Entidad Proponente
                    </asp:LinkButton>
                </div>
                        </td>
                        <td>
                             <div class="" style=" float:left;">
                    <asp:HyperLink ID="HyperLink2" CssClass=" Font15 WhiteButton" runat="server" enabled="false"
                        
                                     NavigateUrl="~/sconvocatoria/consultas-segunda-etapa.aspx" 
                                     Target="_self">Realizar Consulta</asp:HyperLink>
                    
                </div>
                        </td>
                        <td>&nbsp;
                            <div  style=" float:left;">
                    <asp:HyperLink ID="HyperLink2x" CssClass="Font15 WhiteButton" runat="server" 
                        NavigateUrl="~/Fondo-Concursable/Convocatoria-III/Consultas-a-las-Bases-etapa-II.aspx" Target="_blank">Respuesta a Consultas</asp:HyperLink>
                        </td>
                    </tr>
                   
                </table>
                
               <br />
            </td>
            <td >
                </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Panel ID="pnlRegInstitucion" runat="server" 
                    CssClass="RadNotification RadNotification_Default rnRoundedCorners rnShadows">
                    <table style="width:100%;">
                        <tr >
                            <td >&nbsp;
                                </td>
                            <td align="center" >
                                <b>
                                <asp:Label ID="lbltituloreginstitucion" runat="server"  
                                    Text="Ficha de Registro de Entidad Proponente"></asp:Label>
                                </b>
                            </td>
                            <td >&nbsp;
                                </td>
                        </tr>
                        <tr >
                            <td >&nbsp;
                                </td>
                            <td >&nbsp;
                                </td>
                            <td >&nbsp;
                                </td>
                        </tr>
                        <tr >
                            <td  >&nbsp;
                                </td>
                            <td >
                                <span >Bienvenido a nuestro Sistema en Línea.</span><b><br/>
                                <br />
                                </b><span >&nbsp;Por favor completar el siguiente formulario de 
                                registro, llenando todo los campos.<br />
                                </span><b>
                                <br />
                                </b>
                            </td>
                            <td >&nbsp;
                                </td>
                        </tr>
                        <tr >
                            <td  >
                                </td>
                            <td >
                                <asp:Label ID="lblmensajeproponente" runat="server"  
                                    Font-Bold="True" ForeColor="#990000" style="text-align: left" Visible="False"></asp:Label>
                            </td>
                            <td class="style1">
                                </td>
                        </tr>
                        <tr>
                            <td >&nbsp;
                                </td>
                            <td class="tdetiqueta" >
                                Datos Generales</td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td  align="left">&nbsp;
                                </td>
                            <td>
                                <table style="border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td  align="left" class="style3">
                                            Nombre de la Entidad</td>
                                        <td colspan="3" class="tdvalor">
                                            <asp:TextBox ID="nombre_entidad" runat="server" Width="528px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="nombre_entidad" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese el Nombre de la Entidad</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style3">
                                            Acrónimo</td>
                                        <td colspan="3" class="tdvalor">
                                            <asp:TextBox ID="acronimo" runat="server" Width="528px"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3" >
                                            Fecha de Constitucion<br />
                                            <span class="style8"><span class="style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (dd/mm/yyyy)</span></span></td>
                                        <td colspan="3" class="tdvalor" >
                                            <asp:TextBox ID="txtfechaconstitucion" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                ControlToValidate="txtfechaconstitucion" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                            &nbsp;<asp:Label ID="lblerror_fechacons" runat="server" ForeColor="Red" 
                                                Text="[lblerror_fechacons]" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            Nº de Registro Tributario(RUC/NIT/RUT)</td>
                                        <td class="tdvalor" colspan="3">
                                            <asp:TextBox ID="num_registro" runat="server" Width="245px" MaxLength="13"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="num_registro" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese el Número de Registro de la Entidad</asp:RequiredFieldValidator>
                                            &nbsp;<asp:Label ID="lblerror_rucproponente" runat="server" ForeColor="Red" 
                                                Text="[lblerror_rucproponente]" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            Tipo de Institucion</td>
                                        <td class="tdvalor" colspan="3" >
                                        <div>
                                            <asp:RadioButtonList ID="rbfin" runat="server" DataSourceID="SqlDatatipoep1" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Seleccione una opcion</asp:RequiredFieldValidator>
                                             </div>   
                                            <asp:SqlDataSource ID="SqlDatatipoep1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                DataSourceID="SqlDataSourceEPCons" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID" Width="351px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceEPCons" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE (([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID) AND ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID2))" 
                                                ProviderName="<%$ ConnectionStrings:FASERTConnectionString.ProviderName %>">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="-1" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                    <asp:Parameter DefaultValue="-1" Name="MFS_AEAEPCONSTID2" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:Panel ID="PnlConstOtro" runat="server">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TxtConstOtro" runat="server" Width="500px"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                                    ControlToValidate="TxtConstOtro" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoentidad">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                                <br />
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style3">
                                            País</td>
                                        <td>
                                            <table style="width:100%;">
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        Región</td>
                                                    <td>
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:DropDownList ID="paisentidad" runat="server" AutoPostBack="True" 
                                                            DataSourceID="sqlpaisentidad" DataTextField="Pais" DataValueField="CodPais" Width="200px">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="regionEndtidad" runat="server" AutoPostBack="True" 
                                                            DataSourceID="sqlregionentidad" DataTextField="Region" 
                                                            DataValueField="CodRegion" Width="200px">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ProvinciaEndtidad" runat="server" 
                                                            DataSourceID="sqlprovinciaentidad" DataTextField="Provincia" 
                                                            DataValueField="IdProvincia" Width="200px" Visible="False">
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:SqlDataSource ID="sqlpaisentidad" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                            SelectCommand="SELECT * FROM [PER_PAIS] ">
                                                        </asp:SqlDataSource>
                                                    </td>
                                                    <td>
                                                        <asp:SqlDataSource ID="sqlregionentidad" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                            SelectCommand="SELECT * FROM [PER_REGION] WHERE ([CodPais] = @CodPais)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="paisentidad" Name="CodPais" 
                                                                    PropertyName="SelectedValue" Type="String" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </td>
                                                    <td>
                                                        <asp:SqlDataSource ID="sqlprovinciaentidad" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                            SelectCommand="SELECT * FROM [PER_Provincia] WHERE ([CodRegion] = @CodRegion)">
                                                            <SelectParameters>
                                                                <asp:ControlParameter ControlID="regionEndtidad" Name="CodRegion" 
                                                                    PropertyName="SelectedValue" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td  align="left" class="style3">
                                            Dirección para correspondencia</td>
                                        <td colspan="3" class="tdvalor">
                                            <asp:TextBox ID="direccion" runat="server" Width="528px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="direccion" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese la Dirección a usarse para el envio de 
                                            correspondencia</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style3">
                                            Correo electrónico</td>
                                        <td colspan="3" class="tdvalor">
                                            <asp:TextBox ID="email" runat="server" Enabled="False" Width="525px"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  align="left" class="style3">
                                            Teléfono<span class="style2"><br />
                                            (Area Local) - (número de Teléfono)</span></td>
                                        <td colspan="3" class="tdvalorfin">
                                            <asp:TextBox ID="telefono" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="telefono" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese un número de Teléfono</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td >&nbsp;
                                </td>
                            <td class="tdetiqueta">
                                Representación Legal</td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td >&nbsp;
                                </td>
                            <td >
                                <table style="border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td 
                                            class="style4">
                                            Nombres</td>
                                        <td colspan="3" class="tdvalor">
                                            <asp:TextBox ID="nom_legal" runat="server" Width="591px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="nom_legal" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese el Nombre del Representante Legal</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td 
                                            class="style4">
                                            Apellidos</td>
                                        <td colspan="3" class="tdvalor">
                                            <asp:TextBox ID="app_legal" runat="server" Width="591px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ControlToValidate="app_legal" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese los Apellidos del Representante Legal</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4" >
                                            Tipo Documento</td>
                                        <td class="tdetiqueta" >
                                            <asp:DropDownList ID="tipo_doc_legal" runat="server">
                                                <asp:ListItem Value="1">DNI/CI/CC</asp:ListItem>
                                                <asp:ListItem Value="2">CARNET DE EXTRANJERIA</asp:ListItem>
                                                <asp:ListItem Value="3">PASAPORTE</asp:ListItem>
                                                <asp:ListItem Value="4">CÉDULA DIPLOMÁTICA DE IDENTIDAD</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="tdetiqueta" >
                                            Nº de Documento</td>
                                        <td class="tdetiqueta">
                                            <asp:TextBox ID="num_doc_legal" runat="server" Width="112px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style5" >&nbsp;
                                            </td>
                                        <td  colspan="3" class="tdvalor">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ControlToValidate="num_doc_legal" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese el Número de Documento de Identidad 
                                            del Representante Legal</asp:RequiredFieldValidator>
                                            &nbsp;<asp:Label ID="lblerror_dni" runat="server" ForeColor="Red" 
                                                Text="[lblerror_dni]" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4" >
                                            Correo electrónico</td>
                                        <td  colspan="3" class="tdvalor">
                                            <asp:TextBox ID="email_legal" runat="server" Width="590px"></asp:TextBox>
                                            <br />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                ControlToValidate="email_legal" ErrorMessage="RegularExpressionValidator" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                ValidationGroup="infoentidad">Ingrese una cuenta de correo valida para el 
                                            Representante Legal</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style4" >
                                            Teléfono<br />
                                            <span class="style2">(Area Local) - (número de Teléfono)</span></td>
                                        <td  colspan="3" class="tdvalorfin">
                                            <asp:TextBox ID="telefono_legal" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ControlToValidate="telefono_legal" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese un número de Telefono para el 
                                            Representante Legal</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td >&nbsp;
                                </td>
                            <td >&nbsp;
                                </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td >&nbsp;
                                </td>
                            <td align="center" >
                                <asp:Button ID="btngrabarentidad" runat="server" Text="Grabar" 
                                    ValidationGroup="infoentidad" />
                                &nbsp;
                                <asp:Button ID="btncancelarentidad" runat="server" CausesValidation="False" 
                                    onclientclick="if( !confirm('Los datos que no fueron grabados se perderan')){return false;}" 
                                    Text="Cancelar" />
                                &nbsp;
                                <asp:Button ID="Button3" runat="server" CausesValidation="False" 
                                    Text="Historial" Visible="False" />
                            </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Panel>

<asp:Panel ID="PnlBandejaProyecto" CssClass="RadNotification RadNotification_Default" runat="server" style="width: 900px;margin: 0 auto;">
    <table style="width:100%;">
        <tr>
            <td  colspan="2">&nbsp;
                </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td >&nbsp;
                </td>
            <td >
                <asp:SqlDataSource ID="SqlDataSourceProyecto" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                    SelectCommand="SELECT * FROM [VWProyectos] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="UserID" SessionField="UserId" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Panel ID="Panel3" runat="server" 
                    CssClass="RadNotification RadNotification_Default rnRoundedCorners rnShadows">
                    <table style="width:100%;">
                        <tr>
                            <td class="style1">
                                <asp:LinkButton ID="LinkButton2" runat="server" ToolTip="Ocultar Ayuda">[-]</asp:LinkButton>
                            </td>
                            <td>&nbsp;
                                </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="style1">&nbsp;
                                </td>
                            <td>
                                <asp:Panel ID="Panel2" runat="server">
                                    <table style="width:100%;">
                                        <tr>
                                            <td align="right" >
                                                <asp:ImageButton ID="ImageButton5" runat="server" Height="20px" 
                                                    ImageUrl="~/App_Themes/CorporateSite/Images/edit.gif" Width="20px" />
                                            </td>
                                            <td>
                                                Esta opción le permitirá editar la información que usted proporcionó para el 
                                                registro de su Proyecto, sólo algunos campos podrán ser editados.</td>
                                            <td>&nbsp;
                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="right" style="display: none" >
                                                <asp:ImageButton ID="ImageButton6" runat="server" Height="20px" 
                                                    ImageUrl="~/App_Themes/CorporateSite/Images/delete.gif" Width="20px" />
                                            </td>
                                            <td style="display: none">
                                                Esta opción le permitirá eliminar su Proyecto registrado, con toda la 
                                                información proporcionada bajo ese Proyecto. Esta opción no podrá ser revertida.</td>
                                            <td style="display: none">&nbsp;
                                                </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td>&nbsp;
                                </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td >&nbsp;
                </td>
            <td >
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="IdProyecto" DataSourceID="SqlDataSourceProyecto" 
                    EmptyDataText="Actualmente no tiene ningún Proyecto Registrado. Para registrar un proyecto haga clic en “Registrar Proyecto” " 
                    ForeColor="#333333" GridLines="None" Width="100%" CellSpacing="0">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="40px" />
                    <Columns>
                        <asp:ButtonField CommandName="workflow" 
                            ImageUrl="~/App_Themes/CorporateSite/Images/MediaLibrary/Menu/modelist.gif" 
                            Text="Presentar Propuesta" />
                        <asp:ButtonField ButtonType="Image" CommandName="Editar" 
                            ImageUrl="~/App_Themes/CorporateSite/Images/edit.gif" Text="Botón" />
                        <asp:ButtonField ButtonType="Image" CommandName="Eliminar" 
                            ImageUrl="~/App_Themes/CorporateSite/Images/delete.gif" Text="Botón" 
                            Visible="False" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" 
                            Visible="False" />
                        <asp:BoundField DataField="IdProyecto" HeaderText="IdProyecto" ReadOnly="True" 
                            SortExpression="IdProyecto" Visible="False" />
                        <asp:BoundField DataField="CodProyecto" HeaderText="Código" 
                            ReadOnly="True" SortExpression="CodProyecto" />
                        <asp:BoundField DataField="desconvocatoria" HeaderText="Convocatoria" 
                            SortExpression="desconvocatoria" />
                        <asp:BoundField DataField="NombreProyecto" HeaderText="Proyecto" 
                            ReadOnly="True" SortExpression="NombreProyecto">
                            <ItemStyle Width="250px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Ubicacion" HeaderText="Ubicación" ReadOnly="True" 
                            SortExpression="Ubicacion">
                            <ItemStyle Width="250px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EstadoProyecto" HeaderText="EstadoProyecto" 
                            SortExpression="EstadoProyecto" Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
            <td>&nbsp;
                </td>
        </tr>
        <tr>
            <td >&nbsp;
                </td>
            <td >
                <div  >
                    <asp:LinkButton class="botonnuevo" ID="LinkButton1" runat="server">Registrar Proyecto</asp:LinkButton>
                </div>
            </td>
            <td>&nbsp;
                </td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="PnlregistroProyecto" runat="server" Visible="False" style="width: 900px;margin: 0 auto;" 
    CssClass="RadNotification RadNotification_Default ">
    <table style="width:100%;">
        <tr>
            <td class="style8" >
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
                    ContextTypeName="MFSDataContext" TableName="MFSProyecto">
                </asp:LinqDataSource>
            </td>
        </tr>
        <tr>
            <td>
                Bienvenido a nuestro proceso de Convocatoria 2014, le agradecemos registrar su 
                proyecto en nuestro sistema para completar el proceso de concurso.
            </td>
        </tr>
        <tr>
            <td>
                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                    <tr style="border-style: none none solid none; border-width: 1px; border-color: #000000;">
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Código Proyecto</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:TextBox ID="IdProyecto" runat="server" Enabled="False" ForeColor="#990000">Autogenerado</asp:TextBox>
                        </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Convocatoria</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:DropDownList ID="IdConvocatoria" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="DesConvocatoria" 
                                DataValueField="IdConvocatoria"  Width="230px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                
                                SelectCommand="SELECT [IdConvocatoria], [DesConvocatoria] FROM [MFSConvocatoria] WHERE (([EstadoConvocatoria] = @EstadoConvocatoria) AND ([idPrograma] = @idPrograma))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="EstadoConvocatoria" Type="Int32" />
                                    <asp:Parameter DefaultValue="3" Name="idPrograma" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold" 
                            colspan="2">
                            <asp:CheckBox ID="PostulacionAsociada" runat="server" 
                                Text="Postula en Alianza con otra institución" AutoPostBack="True" />
                        </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td colspan="2" 
                            style="font-family: Calibri; font-size: small; font-weight: bold">
                            <asp:Panel ID="pnlentidadasociada" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="EntidadAsociada1" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                ControlToValidate="EntidadAsociada1" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el Nombre de la Entidad Asociada</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style10">
                                            &nbsp;
                                        </td>
                                        <td class="style11">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td class="style10">
                                            <asp:TextBox ID="fechaconstitucionEA1" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                                ControlToValidate="fechaconstitucionEA1" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="rbfin0" runat="server" datasourceid="SqlDatatipoep2" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                                ControlToValidate="rbfin0" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDatatipoep2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons0" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceEPCons0" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="PnlConstOtro0" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TxtConstOtro0" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                                    ControlToValidate="TxtConstOtro0" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoproyecto">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="btnEA1" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle" colspan="2">
                            <asp:Panel ID="pnlentidadasociada0" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000;width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="EntidadAsociada2" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td>
                                            <asp:TextBox ID="txtfechaconstitucion1" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                                                ControlToValidate="txtfechaconstitucion1" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="rbfin1" runat="server" datasourceid="SqlDatatipoep3" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoentidad">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDatatipoep3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons1" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceEPCons1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="PnlConstOtro1" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TxtConstOtro1" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                                                    ControlToValidate="TxtConstOtro" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoentidad">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="Button8" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button10" runat="server" Text="Eliminar Entidad Asociada" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" 
                            style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle">
                            <asp:Panel ID="pnlentidadasociada1" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="EntidadAsociada3" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td>
                                            <asp:TextBox ID="txtfechaconstitucion2" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                                                ControlToValidate="txtfechaconstitucion2" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="rbfin2" runat="server" datasourceid="SqlDatatipoep4" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDatatipoep4" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons2" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceEPCons2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="PnlConstOtro2" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TxtConstOtro2" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                                                    ControlToValidate="TxtConstOtro2" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoproyecto">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="Button11" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button9" runat="server" Text="Eliminar Entidad Asociada" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" 
                            style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle">
                            <asp:Panel ID="pnlentidadasociada2" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                ControlToValidate="txtfechaconstitucion2" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" datasourceid="SqlDatatipoep4" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons2" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="Panel6" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TextBox3" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                                    ControlToValidate="TxtConstOtro2" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoproyecto">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="Button1" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" Text="Eliminar Entidad Asociada" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" 
                            style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle">
                            <asp:Panel ID="pnlentidadasociada3" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                                ControlToValidate="txtfechaconstitucion2" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" datasourceid="SqlDatatipoep4" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons2" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="Panel7" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TextBox6" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                                                    ControlToValidate="TxtConstOtro2" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoproyecto">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="Button7" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button12" runat="server" Text="Eliminar Entidad Asociada" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" 
                            style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle">
                            <asp:Panel ID="pnlentidadasociada4" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                                                ControlToValidate="txtfechaconstitucion2" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" datasourceid="SqlDatatipoep4" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons2" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="Panel8" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TextBox9" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                                                    ControlToValidate="TxtConstOtro2" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoproyecto">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="Button13" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button14" runat="server" Text="Eliminar Entidad Asociada" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" 
                            style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle">
                            <asp:Panel ID="pnlentidadasociada5" runat="server" Visible="False">
                                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Nombre</td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" Width="589px"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            Fecha constitucion (dd/mm/yyyy)</td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="date"></asp:TextBox>
                                            <br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" 
                                                ControlToValidate="txtfechaconstitucion2" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Ingrese la Fecha de Constitucion</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6" rowspan="3">
                                            Tipo Institucion</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" datasourceid="SqlDatatipoep4" 
                                                DataTextField="MFS_AEAEPFINDes" DataValueField="MFS_AEAEPFINid" 
                                                RepeatDirection="Horizontal" Width="251px">
                                            </asp:RadioButtonList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                                                ControlToValidate="rbfin" ErrorMessage="RequiredFieldValidator" 
                                                ValidationGroup="infoproyecto">Seleccione una opcion</asp:RequiredFieldValidator>
                                            <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                                SelectCommand="SELECT [MFS_AEAEPFINid], [MFS_AEAEPFINDes] FROM [MFS_AEAEPFIN]">
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                                                datasourceid="SqlDataSourceEPCons2" DataTextField="MFS_AEAEPCONSTDES" 
                                                DataValueField="MFS_AEAEPCONSTID">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                
                                                SelectCommand="SELECT [MFS_AEAEPCONSTID], [MFS_AEAEPCONSTDES] FROM [MFS_AEAEPCONST] WHERE ([MFS_AEAEPCONSTID] &lt;&gt; @MFS_AEAEPCONSTID)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="7" Name="MFS_AEAEPCONSTID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            <asp:Panel ID="Panel9" runat="server" Visible="False">
                                                Especifique su clasificacion<br />
                                                <asp:TextBox ID="TextBox12" runat="server" Width="500px"></asp:TextBox>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                                                    ControlToValidate="TxtConstOtro2" ErrorMessage="RequiredFieldValidator" 
                                                    ValidationGroup="infoproyecto">Ingrese su Clasificacion</asp:RequiredFieldValidator>
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td class="style6">
                                            <asp:Button ID="Button15" runat="server" Text="Agregar Entidad Asociada" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button16" runat="server" Text="Eliminar Entidad Asociada" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold" 
                            valign="middle">
                            País de Postulación
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageAlign="Middle" 
                                ImageUrl="~/App_Themes/REC/REC_imagenes/symbol-help32.png" 
                                
                                ToolTip="Selecciones por favor el Pais donde su Perfil de Proyecto debera ser Evaluado" 
                                Visible="False" />
                        </td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:DropDownList ID="AmbitoPais0" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSourcePais" DataTextField="Pais" DataValueField="CodPais" 
                                 Width="152px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcePais1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                SelectCommand="SELECT [CodPais], [Pais] FROM [PER_PAIS]">
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Titulo del Proyecto</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:TextBox ID="NombreProyecto" runat="server" Width="589px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoproyecto">Ingrese el Titulo del Proyecto</asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Duracion (meses)</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:TextBox ID="Duracionmes" runat="server" AutoPostBack="True"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                                ControlToValidate="txtfechaconstitucion" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoentidad">Ingrese la duracion en meses de su proyecto</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Financiamiento Solicitado<br />
                            a AEA (USD)</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:TextBox ID="financiamientosolicitado" runat="server" ></asp:TextBox>
                            &nbsp;&nbsp; Financiamiento Mínimo = USD 100,000.00 - Financiamiento Maximo = USD 
                            250,000.00<br />
                            <asp:Label ID="lblerror_financiamiento" runat="server" ForeColor="Red" 
                                Text="[lblerror_financiamiento]" Visible="False"></asp:Label>
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Cofinanciamiento - Contrapartida (USD)</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:TextBox ID="contrapartida" runat="server"></asp:TextBox>
                            &nbsp; Al menos el 50% del total del Proyecto<br />
                            <asp:Label ID="lblerror_contrapartida" runat="server" ForeColor="Red" 
                                Text="[lblerror_contrapartida]" Visible="False"></asp:Label>
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Total Proyecto (USD)</td>
                        <td style="border-style: none none solid none; border-width: 1px; border-color: #000000; font-family: Calibri; font-size: x-small; font-weight: bold">
                            <asp:TextBox ID="TotalProyecto" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="font-family: Calibri; font-size: small; font-weight: bold">
                            Ámbito Geografico</td>
                        <td >
                            <table style="width:100%;">
                                <tr>
                                    <td align="center" 
                                        
                                        style="border-bottom: 1px solid #000000; margin: 5px; font-family: Calibri; font-size: small; font-weight: bold; text-align: left;" 
                                        colspan="2">
                                        Agregue la(s) ubicación(es) geográfica(s) donde se desarrollará el Proyecto. 
                                        Para ello seleccione el Pais y la Region y haga clic en el botón 
                                        “Agregar Ubicación Geográfica”
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: Calibri; font-size: x-small; font-weight: bold">
                                        <table style="width:100%;">
                                            <tr>
                                                <td>
                                                    País</td>
                                                <td>
                                                    Región</td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:DropDownList ID="AmbitoPais" runat="server" AutoPostBack="True" 
                                                        DataSourceID="SqlDataSourcePais" DataTextField="Pais" DataValueField="CodPais" 
                                                        Width="152px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourcePais" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                        SelectCommand="SELECT [CodPais], [Pais] FROM [PER_PAIS]">
                                                    </asp:SqlDataSource>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="AmbitoRegion" runat="server" AutoPostBack="True" 
                                                        DataSourceID="SqlDataSourceRegion" DataTextField="Region" 
                                                        DataValueField="CodRegion"  Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSourceRegion" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" SelectCommand="SELECT [CodRegion], [Region] FROM [PER_REGION] WHERE ([CodPais] = @CodPais)
order by [Region] asc">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="AmbitoPais" DefaultValue="0" Name="CodPais" 
                                                                PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ProvinciaEndtidad0" runat="server" 
                                                        DataSourceID="sqlprovinciaentidad0" DataTextField="Provincia" 
                                                        DataValueField="IdProvincia" Width="200px" Visible="False">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="sqlprovinciaentidad0" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                                        SelectCommand="SELECT * FROM [PER_Provincia] WHERE ([CodRegion] = @CodRegion)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="AmbitoRegion" Name="CodRegion" 
                                                                PropertyName="SelectedValue" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="font-family: Calibri; font-size: x-small; font-weight: bold">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2" 
                                        style="font-family: Calibri; font-size: x-small; font-weight: bold">
                                        <asp:TextBox ID="AmbitoUbicacion" runat="server" Width="579px" Visible="False"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="PnlProyUbicacion" runat="server">
                                <table style="width:100%;">
                                    <tr>
                                        <td>&nbsp;
                                            </td>
                                        <td align="center" valign="middle">
                                            <asp:Button ID="BtnUbicacion" runat="server" 
                                                Text="Agregar Ubicación Geografica" />
                                            &nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Middle" 
                                                ImageUrl="~/App_Themes/REC/REC_imagenes/symbol-help32.png" 
                                                ToolTip="Podra Usted agregar todas las ubicaciones geograficas donde su proyecto se ejecutara, una a una, seleccionando el Pais y la Region correspondiente y haciendo clic en el boton Agregar Ubicacion Geografica" />
                                        </td>
                                        <td>&nbsp;
                                            </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;
                                            </td>
                                        <td>
                                            <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000" 
                                                
                                                
                                                
                                                
                                                Text="Ninguna ubicación geográfica ha sido asignada al Proyecto, para agregar la(s) ubicación(es) haga clic en el botón “Agregar Ubicación Geográfica, puede agregar las que sean necesarias”"></asp:Label>
                                        </td>
                                        <td>&nbsp;
                                            </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;
                                            </td>
                                        <td align="center">
                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="IdProyectoUbicacion" ForeColor="#333333" 
                                                GridLines="None" Width="285px">
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <Columns>
                                                    <asp:BoundField DataField="IdProyectoUbicacion" Visible="False" />
                                                    <asp:BoundField DataField="Pais" HeaderText="Pais">
                                                        <ControlStyle Width="50px" />
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Region" HeaderText="Region">
                                                        <ItemStyle Width="150px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Provincia" HeaderText="Provincia" Visible="False"/>
                                                    <asp:BoundField DataField="AmbitoRegion" HeaderText="Territorio" 
                                                        Visible="False" />
                                                    <asp:BoundField DataField="AmbitoUbicacion" HeaderText="Ubicacion" 
                                                        Visible="False" />
                                                    <asp:ButtonField ButtonType="Image" CommandName="eliminar" 
                                                        ImageUrl="~/App_Themes/CorporateSite/Images/delete.gif" Text="Botón" />
                                                </Columns>
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#999999" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            </asp:GridView>
                                        </td>
                                        <td>&nbsp;
                                            </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;
                                            </td>
                                        <td>&nbsp;
                                            </td>
                                        <td>&nbsp;
                                            </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>&nbsp;
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr style="display: none;">
            <td valign="middle" >
                Indicar con cual categoría de producto se relaciona mejor el proyecto propuesto:</td>
        </tr>
        <tr style="display: none;">
            <td valign="middle">
                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                    <tr style="display: none;">
                        <td class="style12">
                            &nbsp;
                        </td>
                        <td class="style6">
                            <asp:RadioButtonList ID="rbproducto" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="TIPOPROY2DES" 
                                DataValueField="TIPOPROY2ID" Width="98%" Visible="False">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:KenticoCMSConnectionString %>" 
                                SelectCommand="SELECT [TIPOPROY2ID], [TIPOPROY2DES] FROM [TIPOPROY2]">
                            </asp:SqlDataSource>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                                ControlToValidate="rbproducto" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoproyecto" Width="500px" Visible="False">Seleccione una categoria</asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="middle">
                Responsable del Proyecto (Los datos proporcionados en esta sección serán usados 
                como datos de contacto)
                <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Middle" 
                    ImageUrl="~/App_Themes/REC/REC_imagenes/symbol-help32.png" 
                    ToolTip="Los datos proporcionados en esta sección serán  usados como datos de contacto" />
            </td>
        </tr>
        <tr>
            <td  >
                <table style="padding: 1px; margin: 1px; border: 1px solid #000000; width: 95%;margin: 0 auto;">
                    <tr>
                        <td >&nbsp;
                            </td>
                        <td class="style6" >
                            Nombres</td>
                        <td>
                            <asp:TextBox ID="NomCoord" runat="server" Width="589px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="NomCoord" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoproyecto">Ingrese el (los) Nombre del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td >&nbsp;
                            </td>
                        <td class="style6" >
                            Apellidos</td>
                        <td>
                            <asp:TextBox ID="AppCoord" runat="server" Width="589px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="AppCoord" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoproyecto">Ingrese los Apellidos del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td >&nbsp;
                            </td>
                        <td class="style6" >
                            Cargo</td>
                        <td>
                            <asp:TextBox ID="CargoCoord" runat="server" Width="589px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="CargoCoord" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoproyecto">Ingrese el Cargo del Coordinador del Proyecto</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td >&nbsp;
                            </td>
                        <td class="style6" >
                            Dirección de contacto</td>
                        <td>
                            <table style="width:100%;">
                                <tr>
                                    <td style="font-family: Calibri; font-size: x-small; font-weight: bold">
                                        <table style="width: 65%;">
                                            <tr>
                                                <td>
                                                    País</td>
                                                <td>
                                                    Región</td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:DropDownList ID="PaisCoord" runat="server" AutoPostBack="True" 
                                                        DataSourceID="SqlDataSourcePais0" DataTextField="Pais" DataValueField="CodPais" 
                                                         Width="106px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="RegionCoord" runat="server" 
                                                        DataSourceID="SqlDataSourceRegion0" DataTextField="Region" 
                                                        DataValueField="CodRegion"  Width="174px" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ProvinciaEndtidad1" runat="server" 
                                                        DataSourceID="sqlprovinciaentidad1" DataTextField="Provincia" 
                                                        DataValueField="IdProvincia" Width="210px" Visible="False">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" 
                                        >
                                        <asp:SqlDataSource ID="SqlDataSourcePais0" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                            SelectCommand="SELECT [CodPais], [Pais] FROM [PER_PAIS] ">
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="sqlprovinciaentidad1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                            SelectCommand="SELECT * FROM [PER_Provincia] WHERE ([CodRegion] = @CodRegion)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="RegionCoord" Name="CodRegion" 
                                                    PropertyName="SelectedValue" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSourceRegion0" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:FASERTConnectionString %>" 
                                            
                                            SelectCommand="SELECT [CodRegion], [Region] FROM [PER_REGION] WHERE ([CodPais] = @CodPais)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="PaisCoord" DefaultValue="0" Name="CodPais" 
                                                    PropertyName="SelectedValue" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        Ubicación específica</td>
                                </tr>
                                <tr>
                                    <td 
                                        >
                                        <asp:TextBox ID="DireccionCoord" runat="server" Width="579px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                            ControlToValidate="DireccionCoord" ErrorMessage="RequiredFieldValidator" 
                                            ValidationGroup="infoproyecto">Ingrese la direccion de envio de 
                                        Correspondencia para el Coordinador del Proyecto</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td >&nbsp;
                            </td>
                        <td class="style6" >
                            Correo Electrónico</td>
                        <td>
                            <asp:TextBox ID="EmailCoord" runat="server" Width="589px"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="EmailCoord" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="infoproyecto">Ingrese una cuenta de correo valida para el 
 Coordinador  del Proyecto</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td >&nbsp;
                            </td>
                        <td class="style6" >
                            Teléfono<br />
                            <span class="style2">(Cod País) - (Area Local) - (número de Teléfono)</span></td>
                        <td>
                            <asp:TextBox ID="telefonoCoord" runat="server" Width="589px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="telefonoCoord" ErrorMessage="RequiredFieldValidator" 
                                ValidationGroup="infoproyecto">Ingrese el Teléfono del Coordinador del 
                            Proyecto</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" >
                <table style="width:100%;">
                    <tr>
                        <td align="center">
                            <div  >
                                <asp:LinkButton class="botongrabar" ID="btngrabar1" runat="server" ValidationGroup="infoproyecto">Grabar</asp:LinkButton>
                            </div>
                        </td>
                        <td align="center">
                            <div  >
                                <asp:LinkButton class="botoncancelar" ID="btncancelar2" runat="server" 
                                    onclientclick="Alert('Esta seguro de cancelar la edicion')">Cancelar</asp:LinkButton>
                            </div>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnGrabar" runat="server" Text="Grabar" ValidationGroup="infoproyecto" 
                    Visible="False" />
&nbsp;
                <asp:Button ID="BtnCancelar" runat="server" 
                    onclientclick="Alert('Esta seguro de cancelar la edicion')" 
                    Text="Cancelar" Visible="False" />
            </td>
        </tr>
    </table>
</asp:Panel>








<asp:Panel ID="Panel1" runat="server" Height="61px" Visible="False" 
    Width="417px">
    <table style="width:100%;">
        <tr>
            <td valign="middle">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/App_Themes/REC/REC_imagenes/information-messagebox.png" />
            </td>
            <td align="center" valign="middle">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button4" runat="server" Text="Aceptar" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
<asp:Panel ID="fondo" runat="server">
</asp:Panel>







<asp:Panel ID="Panel4" runat="server" Height="61px" Visible="False" 
    Width="417px">

    <table style="width:100%;">
        <tr>
            <td valign="middle">
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/App_Themes/REC/REC_imagenes/information-messagebox.png" />
            </td>
            <td align="center" valign="middle">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button5" runat="server" Text="Aceptar" />
                &nbsp;
                <asp:Button ID="Button6" runat="server" Text="Presentar Perfil" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>

</asp:Panel>
</br>
<asp:Panel ID="pnlinfoetapa2" runat="server" Height="61px" Visible="False" 
    Width="417px">

    <table style="width:100%;">
        <tr>
            <td valign="middle">
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/App_Themes/REC/REC_imagenes/information-messagebox.png" />
            </td>
            <td align="center" valign="middle">
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Names="oswald" 
                    Font-Size="14pt"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
            <a href="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Orientaciones-para-EBDH-y-OT-en-PN_vdef.aspx" target="_blank"
             title="ORIENTACIONES 
PARA LA INCORPORACIÓN DEL ENFOQUE 
BASADO EN DERECHOS HUMANOS (EBDH) EN 
PROPUESTAS DE PLANES DE NEGOCIO, 
HACIENDO HINCAPIÉ EN LA EQUIDAD DE 
GÉNERO (EG), LA REDUCCIÓN DE 
DESIGUALDADES (ED) Y LA SOSTENIBILIDAD 
CLIMÁTICA (SC) ">
                <img alt="" 
                    src="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Orientaciones-para-EBDH-y-OT-en-PN_vdef-(1).aspx" /></a>
                    <span lang="es-mx"> </span>
                    <a href="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Orientaciones-EP-Etapa-2_vdef.aspx" target="_blank" 
                    title="Fondo Regional Concursable
TERCERA 
CONVOCATORIA
Orientaciones a las Entidades Proponentes para 
segunda etapa">
                <img alt="" 
                    src="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Orientaciones-EP-Etapa-2_vdef-(1).aspx" /></a><span 
                    lang="es-mx"> </span>
                    <a href="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Instructivo-PdN-vdef.aspx" target ="_blank" 
                    title ="Fondo Regional Concursable
TERCERA 
CONVOCATORIA
Instructivo para la preparación del
plan de negocio" >
                <img alt="" 
                    src="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Instructivo-PdN-vdef-(1).aspx" /></a><span 
                    lang="es-mx"> </span>
                    <a href="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Plan-Financiero-vFIN.aspx" target="_blank" 
                    title = "Este es un plan financiero simplificado, que le permite alguna flexibilidad">
                <img alt="" 
                    src="http://energiayambienteandina.net/Fondo-Concursable/Convocatoria-III/Doc_etapa2/Plan-Financiero-vFIN-(1).aspx" /></a></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button17" runat="server" Text="Aceptar" />
                &nbsp;
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>

</asp:Panel>






