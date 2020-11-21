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
    public partial class NewVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAddStatusFail.Visible = false;
            lblAddStatusSuccess.Visible = false;
        }

        protected void btnSaveVolunteer_Click(object sender, EventArgs e)
        {
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[Volunteer] ";
            duplicateQuery += "WHERE [Volunteer].[FirstName] = '" + txtFirst.Text.Trim() + "' ";
            duplicateQuery += "AND [Volunteer].[LastName] = '" + txtLast.Text.Trim() + "' ";
            duplicateQuery += "AND [Volunteer].[Gender] = '" + ddlGender.Text.Trim() + "' ";
            duplicateQuery += "AND [Volunteer].[CISRelation] = '" + ddlVolunteerType.Text.Trim() + "' ";
            duplicateQuery += "AND [Volunteer].[PreviousParticipation] = '" + ddlPreviousParticipation.Text.Trim() + "' ";
            duplicateQuery += "AND [Volunteer].[Email] = '" + txtEmail.Text.Trim() + "' ";
            duplicateQuery += "AND [Volunteer].[PhoneNumber] = '" + txtPhone.Text.Trim() + "' ";
            //duplicateQuery += "AND [Volunteer].[ShirtSize] = '" + ddlShirtSize.Text.Trim() + "' ";
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
            SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
            duplicateTable.Fill(duplicateSet);
            int i = duplicateSet.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblAddStatusSuccess.Visible = false;
                lblAddStatusFail.Visible = true;
                lblAddStatusFail.Text = "There is a Duplicate Volunteer Already Saved";
                duplicateSet.Clear();
            }
            else
            {

                try
                {
                    String insertCmd = "INSERT INTO Volunteer VALUES (@txtFirst, @txtLast, @ddlGender, @ddlCISRelation, @ddlPreviousParticipation, @txtEmail, @txtPhone, @ddlShirtSize)";
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                    SqlCommand sqlCommand = new SqlCommand(insertCmd, sqlConnect);
                    sqlCommand.Parameters.AddWithValue("@txtFirst", HttpUtility.HtmlEncode(txtFirst.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtLast", HttpUtility.HtmlEncode(txtLast.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlGender", HttpUtility.HtmlEncode(ddlGender.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlCISRelation", HttpUtility.HtmlEncode(ddlVolunteerType.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlPreviousParticipation", HttpUtility.HtmlEncode(ddlPreviousParticipation.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtEmail", HttpUtility.HtmlEncode(txtEmail.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtPhone", HttpUtility.HtmlEncode(txtPhone.Text.Trim()));
                    //sqlCommand.Parameters.AddWithValue("@ddlShirtSize", HttpUtility.HtmlEncode(ddlShirtSize.Text.Trim()));
                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFail.Visible = false;
                    lblAddStatusSuccess.Visible = true;
                    lblAddStatusSuccess.Text = "Volunteer succesfully created";

                    txtFirst.Text = String.Empty;
                    txtLast.Text = String.Empty;
                    txtEmail.Text = String.Empty;
                    txtPhone.Text = String.Empty;
                }
                catch (Exception)
                {
                    lblAddStatusSuccess.Visible = false;
                    lblAddStatusFail.Visible = true;
                    lblAddStatusFail.Text = "Failed to add new Volunteer";
                    System.Diagnostics.Debug.WriteLine("Error");
                }
            }
        }
    }
}