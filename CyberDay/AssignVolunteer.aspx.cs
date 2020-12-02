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
    public partial class AssignVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAssignVolunteer_Click(object sender, EventArgs e)
        {
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[VolunteerRoster] ";
            duplicateQuery += "WHERE [VolunteerRoster].[VolunteerID] = '" + ddlVolunteer.SelectedValue + "' ";
            duplicateQuery += "AND [VolunteerRoster].[CyberDayID] = '" + ddlCyberday.SelectedValue + "' ";

            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
            SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
            duplicateTable.Fill(duplicateSet);
            int i = duplicateSet.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblAddStatusSuccess.Visible = false;
                lblAddStatusFail.Visible = true;
                lblAddStatusFail.Text = "This volunteer is already attending the selected CyberDay";
                duplicateSet.Clear();
            }
            else
            {

                try
                {
                    String insertCmd = "INSERT INTO VolunteerRoster VALUES (@volunteer, @cyberday, @lunch)";
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                    SqlCommand sqlCommand = new SqlCommand(insertCmd, sqlConnect);
                    sqlCommand.Parameters.AddWithValue("@volunteer", HttpUtility.HtmlEncode(ddlVolunteer.SelectedValue));
                    sqlCommand.Parameters.AddWithValue("@cyberday", HttpUtility.HtmlEncode(ddlCyberday.SelectedValue));
                    sqlCommand.Parameters.AddWithValue("@lunch", HttpUtility.HtmlEncode(ddlLunchAttendance.SelectedValue));

                    string firstName = "Select FirstName From Volunteer Where VolunteerID = " + ddlVolunteer.SelectedItem.Value;
                    string lastName = "Select LastName From Volunteer Where VolunteerID = " + ddlVolunteer.SelectedItem.Value;
                    string sqlInsertLunch = "Insert Into Lunch Values (@FirstName, @LastName, @Attendance, @CyberDayID)";

                    SqlCommand getFirstName = new SqlCommand(firstName, sqlConnect);
                    SqlCommand getLastName = new SqlCommand(lastName, sqlConnect);
                    sqlConnect.Open();
                    string firstNameValue = Convert.ToString(getFirstName.ExecuteScalar());
                    string lastNameValue = Convert.ToString(getLastName.ExecuteScalar());
                    sqlConnect.Close();
                    SqlCommand sqlComInsertLunch = new SqlCommand(sqlInsertLunch, sqlConnect);
                    sqlComInsertLunch.Parameters.AddWithValue("@FirstName", firstNameValue);
                    sqlComInsertLunch.Parameters.AddWithValue("@LastName", lastNameValue);
                    sqlComInsertLunch.Parameters.AddWithValue("@Attendance", ddlLunchAttendance.SelectedValue);
                    sqlComInsertLunch.Parameters.AddWithValue("@CyberDayID", ddlCyberday.SelectedValue);

                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlComInsertLunch.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFail.Visible = false;
                    lblAddStatusSuccess.Visible = true;
                    lblAddStatusSuccess.Text = "Volunteer succesfully assigned";
                }
                catch (Exception)
                {
                    lblAddStatusSuccess.Visible = false;
                    lblAddStatusFail.Visible = true;
                    lblAddStatusFail.Text = "Failed to assign Volunteer";
                    System.Diagnostics.Debug.WriteLine("Error");
                }
            }
        }
    }
}