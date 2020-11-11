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
    public partial class CreateAccountPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drpDwnUserType.Items.Add("Student");
            drpDwnUserType.Items.Add("Coordinator");
            drpDwnUserType.Items.Add("Volunteer");
            drpDwnUserType.Items.Add("Parent");
        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["LoginData"].ToString());
            SqlCommand createUser = new SqlCommand();
            createUser.Connection = sqlConnect;
            createUser.CommandText = "INSERT INTO [LoginCredentials] VALUES(@Username, @Password, @UserType)";
            createUser.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
            createUser.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(txtPassword.Text)));
            createUser.Parameters.Add(new SqlParameter("@UserType", drpDwnUserType.SelectedItem.ToString()));
            sqlConnect.Open();
            createUser.ExecuteNonQuery();
            sqlConnect.Close();

            lblBlankAccountCreated.Text = "Success! Account Created ";
            lnkBtnLogin.Visible = true;
            lblReturnToLogin.Visible = true;
        }

    }
}