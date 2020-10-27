using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class CreateAccountPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["LoginData"].ToString());
            SqlCommand createUser = new SqlCommand();
            createUser.Connection = sqlConnect;
            createUser.CommandText = "INSERT INTO [CoordinatorLogin] VALUES(@Username, @Password)";
            createUser.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
            createUser.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(txtPassword.Text)));
            sqlConnect.Open();
            createUser.ExecuteNonQuery();
            sqlConnect.Close();

            lblBlankAccountCreated.Text = "Success! Account Created ";
            lnkBtnLogin.Visible = true;
            lblReturnToLogin.Visible = true;
        }
    }
}