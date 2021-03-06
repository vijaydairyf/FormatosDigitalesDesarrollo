﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using CMS.GlobalHelper;
using CMS.SiteProvider;
using CMS.CMSHelper;
using CMS.UIControls;
using CMS.SettingsProvider;

using CMS.DatabaseHelper;
using CMS.DataEngine;

using CMS.PortalControls;
using CMS.WebAnalytics;
using CMS.TreeEngine;

using CMS.FormControls;
using CMS.FormEngine;

public partial class CMSWebParts_SPATS_AdministrarUsuarios : CMSAbstractWebPart
{
    private CurrentUserInfo currentUser = null;

    /// <summary>
    /// Gets the current user info.
    /// </summary>
    protected CurrentUserInfo CurrentUserObj
    {
        get
        {
            if (currentUser == null)
            {
                currentUser = CMSContext.CurrentUser;
            }
            return currentUser;
        }
    }


    protected override void OnInit(EventArgs e)
    {

        userFilterElem.SiteID = CMS.CMSHelper.CMSContext.CurrentSiteID; // ((CMSUsersPage)this.Page).SiteID;
        base.OnInit(e);
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptHelper.RegisterDialogScript(this.Page);
        ScriptHelper.RegisterClientScriptBlock(this, typeof(string), "ManageRoles", ScriptHelper.GetScript(
            "function manageRoles(userId) {" +
            "    modalDialog('User_ManageRoles.aspx?userId=' + userId, 'ManageUserRoles', 650, 400);" +
            "}"));

        // New item link
        string[,] actions = new string[1, 6];
        actions[0, 0] = HeaderActions.TYPE_HYPERLINK;
        actions[0, 1] = GetString("Administration-User_List.NewUser");
        actions[0, 2] = null;
       // actions[0, 3] = ((CMSUsersPage)this.Page).SiteID > 0 ? ResolveUrl("user_new.aspx?siteid=" + ((CMSUsersPage)this.Page).SiteID) : ResolveUrl("user_new.aspx");
        actions[0, 3] = CMS.CMSHelper.CMSContext.CurrentSiteID > 0 ? ResolveUrl("user_new.aspx?siteid=" + CMS.CMSHelper.CMSContext.CurrentSiteID) : ResolveUrl("user_new.aspx");
        
        actions[0, 4] = null;
        actions[0, 5] = GetImageUrl("Objects/CMS_User/add.png");
        
        //((CMSUsersPage) this.Page).CurrentMaster.HeaderActions.Actions = actions;

        gridElem.OnBeforeDataReload += new OnBeforeDataReload(gridElem_OnBeforeDataReload);

        // Unigrid initialization
        gridElem.OnAction += gridElem_OnAction;
        gridElem.OnExternalDataBound += gridElem_OnExternalDataBound;
    }


    /// <summary>
    /// Handles setting the grid where condition before data binding.
    /// </summary>    
    protected void gridElem_OnBeforeDataReload()
    {
        if (!RequestHelper.IsAsyncPostback())
        {
            if (gridElem.QueryParameters == null)
            {
                gridElem.QueryParameters = new QueryDataParameters();
            }
            gridElem.QueryParameters.Add("@Now", DateTime.Now);
            gridElem.WhereCondition = userFilterElem.WhereCondition;
            gridElem.FilterIsSet = true;

        }
    }


    /// <summary>
    /// Handles Unigrid's OnExternalDataBound event.
    /// </summary>
    protected object gridElem_OnExternalDataBound(object sender, string sourceName, object parameter)
    {
        int userID;
        bool isUserAdministrator;
        switch (sourceName.ToLower())
        {
            case "userenabled":
                return UniGridFunctions.ColoredSpanYesNo(parameter);

            case "edit":
                // Edit action                
                userID = ValidationHelper.GetInteger(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserID"], 0);
                isUserAdministrator = ValidationHelper.GetBoolean(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserIsGlobalAdministrator"], false);
                if ((!CurrentUserObj.IsGlobalAdministrator || (CurrentUserObj.IsGlobalAdministrator && CurrentUserObj.UserSiteManagerDisabled)) && isUserAdministrator && (userID != CurrentUserObj.UserID))
                {
                    ImageButton button = ((ImageButton)sender);
                    button.ImageUrl = GetImageUrl("Design/Controls/UniGrid/Actions/Editdisabled.png");
                    button.Enabled = false;
                }

                break;

            case "delete":
                // Delete action
                isUserAdministrator = ValidationHelper.GetBoolean(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserIsGlobalAdministrator"], false);
                if ((!CurrentUserObj.IsGlobalAdministrator || (CurrentUserObj.IsGlobalAdministrator && CurrentUserObj.UserSiteManagerDisabled)) && isUserAdministrator)
                {
                    ImageButton button = ((ImageButton)sender);
                    button.ImageUrl = GetImageUrl("Design/Controls/UniGrid/Actions/Deletedisabled.png");
                    button.Enabled = false;
                }
                break;

            case "roles":
                // Roles action
                userID = ValidationHelper.GetInteger(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserID"], 0);
                isUserAdministrator = ValidationHelper.GetBoolean(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserIsGlobalAdministrator"], false);
                //((GridViewRow)parameter).Visible = false;
                if ((!CurrentUserObj.IsGlobalAdministrator || (CurrentUserObj.IsGlobalAdministrator && CurrentUserObj.UserSiteManagerDisabled)) && isUserAdministrator && (userID != CurrentUserObj.UserID))
                {
                    ImageButton button = ((ImageButton)sender);
                    button.ImageUrl = GetImageUrl("Design/Controls/UniGrid/Actions/Managerolesdisabled.png");
                    button.Enabled = false;
                }
                if (!CurrentUserObj.IsGlobalAdministrator)
                {

                    GeneralConnection cn = ConnectionHelper.GetConnection();
                    DataSet Territorio = new DataSet();
                    QueryDataParameters parameters = new QueryDataParameters();

                    parameters.Add("@UserIDCurrent", CurrentUserObj.UserID);
                    parameters.Add("@UserID", userID);

                    Territorio = ConnectionHelper.ExecuteQuery("cms.user.GetTerritorioAdministrado", parameters);
                    if (Territorio.Tables[0].Rows.Count == 0)
                    {
                        ((GridViewRow)parameter).Visible = false;
                    }

                }
                break;

            case "haspassword":
                // Has password action
                {
                    ImageButton button = ((ImageButton)sender);

                    if (!CurrentUserObj.IsGlobalAdministrator)
                    {
                        button.Visible = false;
                    }
                    else
                    {
                        bool isExternal = ValidationHelper.GetBoolean(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserIsExternal"], false);
                        bool isPublic = ValidationHelper.GetString(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserName"], "").Equals("public", StringComparison.InvariantCultureIgnoreCase);
                        bool hasPassword = ValidationHelper.GetBoolean(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserHasPassword"], true);

                        button.OnClientClick = "return false;";
                        button.Style.Add("cursor", "default");
                        button.Visible = !hasPassword && !isPublic && !isExternal;
                    }
                }
                break;

            case "formattedusername":
                return HTMLHelper.HTMLEncode(Functions.GetFormattedUserName(Convert.ToString(parameter)));

            case "#objectmenu":
                userID = ValidationHelper.GetInteger(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserID"], 0);
                isUserAdministrator = ValidationHelper.GetBoolean(((DataRowView)((GridViewRow)parameter).DataItem).Row["UserIsGlobalAdministrator"], false);
                if ((!CurrentUserObj.IsGlobalAdministrator || (CurrentUserObj.IsGlobalAdministrator && CurrentUserObj.UserSiteManagerDisabled)) && isUserAdministrator && (userID != CurrentUserObj.UserID))
                {
                    ImageButton button = ((ImageButton)sender);
                    button.Visible = false;
                }
                break;
        }
        return parameter;
    }


    /// <summary>
    /// Handles the UniGrid's OnAction event.
    /// </summary>
    /// <param name="actionName">Name of item (button) that threw event</param>
    /// <param name="actionArgument">ID (value of Primary key) of corresponding data row</param>
    protected void gridElem_OnAction(string actionName, object actionArgument)
    {
        if (actionName == "edit")
        {
            URLHelper.Redirect("User_Edit_Frameset.aspx?userid=" + actionArgument + "&siteid=" + CMS.CMSHelper.CMSContext.CurrentSiteID);

        }
        else if (actionName == "delete")
        {
            // Check "modify" permission
            if (!CMSContext.CurrentUser.IsAuthorizedPerResource("CMS.Users", "Modify"))
            {
                //RedirectToAccessDenied("CMS.Users", "Modify");
                URLHelper.Redirect("url");
            }

            try
            {

                int userId = Convert.ToInt32(actionArgument);
                UserInfo delUser = UserInfoProvider.GetUserInfo(userId);
                CurrentUserInfo CurrentUserObj = CMSContext.CurrentUser;

                if (delUser != null)
                {
                    // Global administrator account could be deleted only by global administrator
                    if (delUser.IsGlobalAdministrator && (!CurrentUserObj.IsGlobalAdministrator || (CurrentUserObj.IsGlobalAdministrator && CurrentUserObj.UserSiteManagerDisabled)))
                    {
                        lblError.Visible = true;
                        lblError.Text = GetString("Administration-User_List.ErrorNoGlobalAdmin");
                        return;
                    }

                    // It is not possible to delete own user account
                    if (userId == CurrentUserObj.UserID)
                    {
                        lblError.Visible = true;
                        lblError.Text = GetString("Administration-User_List.ErrorOwnAccount");
                        return;
                    }

                    SessionManager.RemoveUser(userId);
                    UserInfoProvider.DeleteUser(delUser.UserName);
                }
            }
            catch (Exception ex)
            {
                lblError.Visible = true;
                lblError.Text = ex.Message;
            }
        }
    }
}
