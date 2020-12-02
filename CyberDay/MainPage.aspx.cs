using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

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
            else if (Session["Username"].ToString() == "admin" && Session["UserType"].ToString() == "Coordinator")
            {
                Response.Redirect("CoordinatorHomePage.aspx");
            }
            else if (Session["Username"].ToString() != "admin" && Session["UserType"].ToString() != "Coordinator")
            {
                MessageBox.Show("Invalid Login Credentials");
            }
            else if (Session["UserType"].ToString() == "Parent")
            {
                MessageBox.Show("Invalid Credentials");
            }
            else if (Session["UserType"].ToString() == "Teacher")
            {
                MessageBox.Show("Invalid Credentials");
            }
        }

        protected void ddlUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);

            //if (ddlUser.SelectedItem.Value == "Logout")
            //{
            //    Session["Username"] = "";
            //    Session["UserType"] = "";
            //}
        }

        protected void btnUserLogin_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void parentLink_ServerClick(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("NonAdminLogin.aspx");
            }
            else if (Session["UserType"].ToString() == "Parent" || Session["Username"].ToString() == "admin")
            {
                Response.Redirect("ParentsHome.aspx");
            }
            else if (Session["Username"].ToString() != "admin" || Session["UserType"].ToString() != "Parent")
            {
                MessageBox.Show("Must be logged in as a parent or admin");
            }
            else if (Session["UserType"].ToString() == "Teacher")
            {
                MessageBox.Show("Invalid Credentials");
            }
        }

        protected void teacherLink_ServerClick(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("NonAdminLogin.aspx");
            }
            else if (Session["UserType"].ToString() == "Teacher" || Session["Username"].ToString() == "admin")
            {
                Response.Redirect("TeacherHomePage.aspx");
            }
            else if (Session["Username"].ToString() != "admin" || Session["UserType"].ToString() != "Teacher")
            {
                MessageBox.Show("Must be logged in as a teacher or admin");
            }
            else if (Session["UserType"].ToString() == "Parent")
            {
                MessageBox.Show("Invalid Credentials");
            }
        }
    }
}