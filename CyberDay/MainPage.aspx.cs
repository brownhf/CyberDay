using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                //btnLogin.Visible = false;
                btnUserLogin.Visible = false;

                string currentUser = Session["Username"].ToString();

                ddlUser.Visible = true;
                ddlUser.Items.Insert(0, currentUser);
                ListItem separator = new ListItem("----------", "");
                separator.Attributes.Add("disabled", "true");
                ddlUser.Items.Insert(1, separator);
                ddlUser.Items.Insert(2, "Logout");
                //if(ddlUser.SelectedIndex == 2)
                //{
                //    Session.Abandon();
                //    Response.Redirect(Request.RawUrl);
                //}

            }
        }

        protected void coordinatorLink_ServerClick(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                Response.Redirect("CoordinatorHomePage.aspx");
            }
        }

        protected void ddlUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);

            //if (ddlUser.SelectedItem.Value == "Logout")
            //{

            //}
        }

        protected void btnUserLogin_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}