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
    public partial class LoginBackup : System.Web.UI.Page
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
            if (ddlSelectUserType.Text == "Coordinator")
            {
                sqlConnect.Open();
                loginCommand.CommandText = "spCoordinatorLogin";
                loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Text.Trim()));
                SqlDataReader loginResults = loginCommand.ExecuteReader();
                if (loginResults.HasRows)
                {
                    while (loginResults.Read())
                    {
                        string storedHash = loginResults["Password"].ToString();
                        if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Text.Trim()), storedHash))
                        {
                            Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Text);
                            Response.Redirect("CoordinatorHomePage.aspx");
                            sqlConnect.Close();
                        }
                    }
                }
            }
            if (ddlSelectUserType.Text == "Teacher")
            {
                sqlConnect.Open();
                loginCommand.CommandText = "spTeacherLogin";
                loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Text.Trim()));
                SqlDataReader loginResults = loginCommand.ExecuteReader();
                if (loginResults.Read())
                {
                    string storedHash = loginResults["Password"].ToString();
                    if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Text.Trim()), storedHash))
                    {
                        Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Text);
                        Response.Redirect("TeacherHomePage.aspx");
                        sqlConnect.Close();
                    }
                }
            }
            if (ddlSelectUserType.Text == "Parent")
            {
                sqlConnect.Open();
                loginCommand.CommandText = "spStudentLogin";
                loginCommand.Parameters.AddWithValue("@Username", HttpUtility.HtmlEncode(txtUsername.Text.Trim()));
                SqlDataReader loginResults = loginCommand.ExecuteReader();
                if (loginResults.Read())
                {
                    string storedHash = loginResults["Password"].ToString();
                    if (PasswordHash.ValidatePassword(HttpUtility.HtmlEncode(txtPassword.Text.Trim()), storedHash))
                    {
                        Session["Username"] = HttpUtility.HtmlEncode(txtUsername.Text);
                        Response.Redirect(".aspx");
                        sqlConnect.Close();
                    }
                }
            }
            else
            {
                lblIncorrectLogin.Text = "* Incorrect Username or Password";
            }

        }
    }
}