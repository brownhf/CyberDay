using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Drawing;

namespace CyberDay
{
    public partial class NonAdminCreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["LoginData"].ToString());
            string insertQuery = "INSERT INTO [LoginCredentials] VALUES(@Username, @Password, @UserType)";
            string queryCheck = "Select Count(1) From [LoginCredentials] Where Username = @Username";
            SqlCommand sqlComCheck = new SqlCommand(queryCheck, sqlConnect);
            sqlComCheck.Parameters.AddWithValue("@Username", txtUsername.Text);
            sqlConnect.Open();
            int check = Convert.ToInt32(sqlComCheck.ExecuteScalar());
            sqlConnect.Close();
            if (check == 0 && (txtPassword.Text == txtRePassword.Text))
            {
                SqlCommand sqlCom = new SqlCommand(insertQuery, sqlConnect);
                sqlCom.Parameters.AddWithValue("@Username", txtUsername.Text);
                sqlCom.Parameters.AddWithValue("@Password", PasswordHash.HashPassword(txtRePassword.Text));
                sqlCom.Parameters.AddWithValue("@UserType", ddlUser.SelectedItem.Text);
                sqlConnect.Open();
                sqlCom.ExecuteNonQuery();
                sqlConnect.Close();
                lblError.ForeColor = Color.Green;
                lblError.Text = "Account successfully created!";
            }
            else if(check > 0)
            {
                lblError.ForeColor = Color.Red;
                lblError.Text = "Error - Username already exists";
            }
            else if(txtPassword.Text != txtRePassword.Text)
            {
                lblError.ForeColor = Color.Red;
                lblError.Text = "Error - Passwords do not match";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("NonAdminLogin.aspx");
        }
    }
}