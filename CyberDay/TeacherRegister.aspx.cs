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
    public partial class TeacherRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAddStatusFail.Visible = false;
            lblAddStatusSuccess.Visible = false;
        }

        protected void btnAddSchool_Click(object sender, EventArgs e)
        {
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[Teacher] ";
            duplicateQuery += "WHERE [Teacher].[FirstName] = '" + txtFirst.Text.Trim() + "' ";
            duplicateQuery += "AND [Teacher].[LastName] = '" + txtLast.Text.Trim() + "' ";
            duplicateQuery += "AND [Teacher].[Email] = '" + txtEmail.Text.Trim() + "' ";
            duplicateQuery += "AND [Teacher].[PhoneNumber] = '" + txtPhone.Text.Trim() + "' ";
            duplicateQuery += "AND [Teacher].[SchoolID] = '" + ddlSchool.Text.Trim() + "' ";
            duplicateQuery += "AND [Teacher].[LunchAttendance] = '" + ddlLunchAttendance.SelectedValue.Trim() + "' ";
            duplicateQuery += "AND [Teacher].[CyberDayID] = '" + ddlCyberDay.SelectedValue + "' ";
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
            SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
            duplicateTable.Fill(duplicateSet);
            int i = duplicateSet.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblAddStatusSuccess.Visible = false;
                lblAddStatusFail.Visible = true;
                lblAddStatusFail.Text = "There is a Duplicate Teacher Already Saved";
                duplicateSet.Clear();
            }
            else
            {

                try
                {
                    String insertCmd = "INSERT INTO Teacher VALUES (@txtFirst, @txtLast, @txtEmail, @txtPhone, @ddlSchool, @LunchAttendance, @CyberDayID)";
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                    SqlCommand sqlCommand = new SqlCommand(insertCmd, sqlConnect);
                    sqlCommand.Parameters.AddWithValue("@txtFirst", HttpUtility.HtmlEncode(txtFirst.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtLast", HttpUtility.HtmlEncode(txtLast.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtEmail", HttpUtility.HtmlEncode(txtEmail.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtPhone", HttpUtility.HtmlEncode(txtPhone.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlSchool", HttpUtility.HtmlEncode(ddlSchool.SelectedValue));
                    sqlCommand.Parameters.AddWithValue("@LunchAttendance", HttpUtility.HtmlEncode(ddlLunchAttendance.SelectedValue));
                    sqlCommand.Parameters.AddWithValue("@CyberDayID", HttpUtility.HtmlEncode(ddlCyberDay.SelectedValue));

                    string sqlInsertLunch = "Insert Into Lunch Values (@FirstName, @LastName, @Attendance, @CyberDayID)";

                    SqlCommand sqlComInsertLunch = new SqlCommand(sqlInsertLunch, sqlConnect);
                    sqlComInsertLunch.Parameters.AddWithValue("@FirstName", txtFirst.Text.Trim());
                    sqlComInsertLunch.Parameters.AddWithValue("@LastName", txtLast.Text.Trim());
                    sqlComInsertLunch.Parameters.AddWithValue("@Attendance", ddlLunchAttendance.SelectedValue);
                    sqlComInsertLunch.Parameters.AddWithValue("@CyberDayID", ddlCyberDay.SelectedValue);

                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlComInsertLunch.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFail.Visible = false;
                    lblAddStatusSuccess.Visible = true;
                    lblAddStatusSuccess.Text = "Teacher succesfully created";

                    txtFirst.Text = String.Empty;
                    txtLast.Text = String.Empty;
                    txtEmail.Text = String.Empty;
                    txtPhone.Text = String.Empty;
                }
                catch (Exception)
                {
                    lblAddStatusSuccess.Visible = false;
                    lblAddStatusFail.Visible = true;
                    lblAddStatusFail.Text = "Failed to add Teacher";
                    System.Diagnostics.Debug.WriteLine("Error");
                }
            }
        }

        protected void btnRedirectHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("CoordinatorHomePage.aspx");
        }

        protected void btnPopulateBoxes_Click(object sender, EventArgs e)
        {
            txtFirst.Text = "Daniel";
            txtLast.Text = "Rosen";
            txtEmail.Text = "rosen@yahoo.com";
            txtPhone.Text = "483-384-7629";
        }
    }
}