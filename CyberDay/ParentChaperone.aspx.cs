using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration; //Lets us access our Web.config file!

using System.Text;
using System.Drawing;

namespace CyberDay
{
    public partial class ParentChaperone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string insertChaperone = "Insert Into Chaperone Values (@FirstName, @LastName, @Phone, @Email, @Allergies)";
            string chaperoneCheck = "Select Count(1) From Chaperone Where FirstName = @FirstName " +
                "and LastName = @LastName and Phone = @Phone and Email = @Email and Allergies = @Allergies";
            string sqlInsertLunch = "Insert Into Lunch Values (@FirstName, @LastName, @Attendance, @CyberDayID)";

            SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());

            SqlCommand sqlComCheck = new SqlCommand(chaperoneCheck, sqlCon);
            sqlComCheck.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            sqlComCheck.Parameters.AddWithValue("@LastName", txtLastName.Text);
            sqlComCheck.Parameters.AddWithValue("@Phone", txtPhoneNumber.Text);
            sqlComCheck.Parameters.AddWithValue("@Email", txtEmail.Text);
            sqlComCheck.Parameters.AddWithValue("@Allergies", txtAllergies.Text);

            sqlCon.Open();
            int numCheck = Convert.ToInt32(sqlComCheck.ExecuteScalar());
            sqlCon.Close();

            lblFirstNameError.Text = "";
            lblLastNameError.Text = "";
            lblPhoneError.Text = "";
            lblEmailError.Text = "";
            lblAllergiesError.Text = "";

            if(numCheck == 1)
            {
                lblDuplicateError.ForeColor = Color.Red;
                lblDuplicateError.Text = "Error - Chaperone already exists";
            }
            else if(txtFirstName.Text == "")
            {
                lblFirstNameError.Text = "Error - field cannot be blank";
            }
            else if(txtLastName.Text == "")
            {
                lblLastNameError.Text = "Error - field cannot be blank";
            }
            else if(txtPhoneNumber.Text == "")
            {
                lblPhoneNumber.Text = "Error - field cannot be blank";
            }
            else if(txtEmail.Text == "")
            {
                lblEmailError.Text = "Error - field cannot be blank";
            }
            else if (ddlLunchAttendance.SelectedValue == "select")
            {
                lblLunchAttendanceError.Text = "Error - field left blank";
            }
            else if(txtAllergies.Text == "")
            {
                lblAllergiesError.Text = "Error - field cannot be blank";
            }
            else
            {
                SqlCommand sqlComInsertChaperone = new SqlCommand(insertChaperone, sqlCon);
                sqlComInsertChaperone.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                sqlComInsertChaperone.Parameters.AddWithValue("@LastName", txtLastName.Text);
                sqlComInsertChaperone.Parameters.AddWithValue("@Phone", txtPhoneNumber.Text);
                sqlComInsertChaperone.Parameters.AddWithValue("@Email", txtEmail.Text);
                sqlComInsertChaperone.Parameters.AddWithValue("@Allergies", txtAllergies.Text);

                SqlCommand sqlComInsertLunch = new SqlCommand(sqlInsertLunch, sqlCon);
                sqlComInsertLunch.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                sqlComInsertLunch.Parameters.AddWithValue("@LastName", txtLastName.Text);
                sqlComInsertLunch.Parameters.AddWithValue("@Attendance", ddlLunchAttendance.SelectedValue);
                sqlComInsertLunch.Parameters.AddWithValue("@CyberDayID", ddlCyberDay.SelectedValue);

                sqlCon.Open();
                sqlComInsertChaperone.ExecuteNonQuery();
                sqlComInsertLunch.ExecuteNonQuery();
                sqlCon.Close();

                lblDuplicateError.ForeColor = Color.Green;
                lblDuplicateError.Text = "Chaperone Successfully Signed Up!";
            }
        }
    }
}