using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace CyberDay
{
    public partial class NonAdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["LoginData"].ToString());
            SqlCommand loginCommand = new SqlCommand();
            loginCommand.Connection = sqlConnect;
            loginCommand.CommandType = CommandType.StoredProcedure;
            loginCommand.CommandText = "spLoginCredentials";
            loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Value.ToString()));
            sqlConnect.Open();
            SqlDataReader loginResults = loginCommand.ExecuteReader();
            if (loginResults.Read())
            {
                string storedHash = loginResults["Password"].ToString();
                string userType = loginResults["UserType"].ToString();
                if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Value.ToString()), storedHash))
                {
                    Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Value.ToString());
                    Session["UserType"] = userType;
                    if (userType == "Parent")
                    {
                        Response.Redirect("ParentsHome.aspx");
                    }
                    else if(userType == "Teacher")
                    {
                        Response.Redirect("TeacherHomePage.aspx");
                    }
                    else
                    {
                        Response.Redirect("MainPage.aspx");
                    }
                    //if (userType == "Coordinator")
                    //{
                    //    Response.Redirect("CoordinatorHomePage.aspx");

                    //}
                    ////if (userType == "Volunteer")
                    ////{
                    ////    Response.Redirect("VolunteerrHomePage.aspx");

                    ////}
                    //if (userType == "Parent")
                    //{
                    //    Response.Redirect("ParentsHome.aspx");

                    //}
                    //if (userType == "Student")
                    //{
                    //    Response.Redirect("StudentHome.aspx");

                    //}
                    ////Response.Redirect("MainPage.aspx");
                }
                else
                {
                    lblBlankIncorrectLogin.Text = "* Incorrect Username or Password";
                }
            }


        }

        //protected void drpDwnUserType_Click(object sender, EventArgs e)
        //{
        //    drpDwnUserType.Text = drpDwnUserType.
        //}
    }
}
