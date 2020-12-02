using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration; //Lets us access our Web.config file!
using System.Drawing;

namespace CyberDay
{
    public partial class ParentsRegisterChild : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string sqlInsertStudent = "Insert Into Student Values (@FirstName, @LastName, @Age, @Gender, @Email, @Notes, @Dietary, @Allergies, @TeacherID, @LunchAttendance, @CyberDayID)";
            string sqlCheck = "Select Count(1) From Student Where FirstName = @FirstName and LastName = @LastName and TeacherID = @TeacherID and Email = @Email";
            string sqlInsertLunch = "Insert Into Lunch Values (@FirstName, @LastName, @Attendance, @CyberDayID)";
            SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand sqlComCheck = new SqlCommand(sqlCheck, sqlCon);

            sqlComCheck.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            sqlComCheck.Parameters.AddWithValue("@LastName", txtLastName.Text);
            sqlComCheck.Parameters.AddWithValue("@TeacherID", ddlTeacher.SelectedValue);
            sqlComCheck.Parameters.AddWithValue("@Email", txtStudentEmail.Text);

            lblStudentSubmitError.Text = "";
            lblFirstNameError.Text = "";
            lblLastNameError.Text = "";
            lblNotesError.Text = "";
            lblAgeError.Text = "";
            lblGenderError.Text = "";
            lblAllergiesError.Text = "";
            lblSelectMealError.Text = "";

            sqlCon.Open();
            int userCheckNum = Convert.ToInt32(sqlComCheck.ExecuteScalar());
            sqlCon.Close();
            int parsedValue;
            if(userCheckNum == 1)
            {
                lblStudentSubmitError.ForeColor = Color.Red;
                lblStudentSubmitError.Text = "Error - Duplicate Student Record";
            }
            else if(txtFirstName.Text == "")
            {
                lblFirstNameError.Text = "Error - field left blank";
            }
            else if(txtLastName.Text == "")
            {
                lblLastNameError.Text = "Error - field left blank";
            }
            else if(txtAge.Text == "")
            {
                lblAgeError.Text = "Error - field left blank";
            }
            else if(txtNotes.Text == "")
            {
                lblNotesError.Text = "Error - field left blank";
            }
            else if(ddlGenders.SelectedValue == "select")
            {
                lblGenderError.Text = "Error - field left blank";
            }
            else if (ddlLunchAttendance.Text == "select")
            {
                lblLunchAttendanceError.Text = "Error - field left blank";
            }
            else if(ddlDietaryNeeds.SelectedValue == "select")
            {
                lblSelectMealError.Text = "Error - field left blank";
            }
            else if(txtAllergies.Text == "")
            {
                lblAllergiesError.Text = "Error - field left blank";
            }
            else if(!int.TryParse(txtAge.Text, out parsedValue))
            {
                lblAgeError.Text = "Error - Input must be a number";
            }
            else
            {
                SqlCommand sqlComInsertStudent = new SqlCommand(sqlInsertStudent, sqlCon);
                sqlComInsertStudent.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@LastName", txtLastName.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@Age", txtAge.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@Gender", ddlGenders.SelectedValue);
                sqlComInsertStudent.Parameters.AddWithValue("@Email", txtStudentEmail.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@Notes", txtNotes.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@Dietary", ddlDietaryNeeds.SelectedValue);
                sqlComInsertStudent.Parameters.AddWithValue("@Allergies", txtAllergies.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@TeacherID", ddlTeacher.SelectedValue);
                sqlComInsertStudent.Parameters.AddWithValue("@LunchAttendance", ddlLunchAttendance.Text);
                sqlComInsertStudent.Parameters.AddWithValue("@CyberDayID", ddlCyberDay.SelectedValue);

                SqlCommand sqlComInsertLunch = new SqlCommand(sqlInsertLunch, sqlCon);
                sqlComInsertLunch.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                sqlComInsertLunch.Parameters.AddWithValue("@LastName", txtLastName.Text);
                sqlComInsertLunch.Parameters.AddWithValue("@Attendance", ddlLunchAttendance.SelectedValue);
                sqlComInsertLunch.Parameters.AddWithValue("@CyberDayID", ddlCyberDay.SelectedValue);

                sqlCon.Open();
                sqlComInsertStudent.ExecuteNonQuery();
                sqlComInsertLunch.ExecuteNonQuery();
                sqlCon.Close();
                lblStudentSubmitError.ForeColor = Color.Green;
                lblStudentSubmitError.Text = "Student Signed Up!";
                //Clear text fields
                Session["FirstName"] = txtFirstName.Text.ToString();
                Session["LastName"] = txtLastName.Text.ToString();
                Session["CyberDayID"] = ddlCyberDay.SelectedValue;

            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAge.Text = "";
            txtNotes.Text = "";
            txtStudentEmail.Text = "";
            txtAllergies.Text = "";
            ddlGenders.SelectedIndex = 0;
            ddlDietaryNeeds.SelectedIndex = 0;
            ddlLunchAttendance.SelectedIndex = 0;
        }

        protected void btnPopulate_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "Elon";
            txtLastName.Text = "Musk";
            txtAge.Text = "13";
            txtNotes.Text = "Student notes would go here";
            txtStudentEmail.Text = "musk@tesla.com";
            txtAllergies.Text = "None";
            ddlGenders.SelectedIndex = 1;
            ddlDietaryNeeds.SelectedIndex = 1;
            ddlLunchAttendance.SelectedIndex = 1;

        }
    }
}