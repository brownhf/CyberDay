using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class LoginPage : System.Web.UI.Page
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
            if (rBtnCoordinator.Checked)
            {
                loginCommand.CommandText = "spCoordinatorLogin";
                loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Value.ToString()));
                sqlConnect.Open();
                SqlDataReader loginResults = loginCommand.ExecuteReader();
                if (loginResults.Read())
                {
                    string storedHash = loginResults["Password"].ToString();
                    if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Value.ToString()), storedHash))
                    {
                        Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Value.ToString());
                        Response.Redirect("CoordinatorHomePage.aspx");
                    }
                }
            }
            if (rBtnTeacher.Checked)
            {
                loginCommand.CommandText = "spTeacherLogin";
                loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Value.ToString()));
                sqlConnect.Open();
                SqlDataReader loginResults = loginCommand.ExecuteReader();
                if (loginResults.Read())
                {
                    string storedHash = loginResults["Password"].ToString();
                    if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Value.ToString()), storedHash))
                    {
                        Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Value.ToString());
                        Response.Redirect("TeacherHomePage.aspx");

                    }
                }
            }
            if (rBtnStudent.Checked)
            {
                loginCommand.CommandText = "spStudentLogin";
                loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Value.ToString()));
                sqlConnect.Open();
                SqlDataReader loginResults = loginCommand.ExecuteReader();
                if (loginResults.Read())
                {
                    string storedHash = loginResults["Password"].ToString();
                    if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Value.ToString()), storedHash))
                    {
                        Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Value.ToString());
                        Response.Redirect("StudentHomePage.aspx");

                    }
                }
            }
            else
            {
                lblBlankIncorrectLogin.Text = "* Incorrect Username or Password";
            }

        }

        //protected void drpDwnUserType_Click(object sender, EventArgs e)
        //{
        //    drpDwnUserType.Text = drpDwnUserType.
        //}
    }
}