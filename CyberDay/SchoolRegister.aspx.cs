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
    public partial class SchoolRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAddStatusFail.Visible = false;
            lblAddStatusSuccess.Visible = false;
            btnStep3.Visible = false;
        }

        protected void btnAddSchool_Click(object sender, EventArgs e)
        {
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[School] ";
            duplicateQuery += "WHERE [School].[SchoolName] = '" + txtSchoolName.Text.Trim() + "' ";
            duplicateQuery += "AND [School].[StreetAddress] = '" + txtStreet.Text.Trim() + "' ";
            duplicateQuery += "AND [School].[City] = '" + txtCity.Text.Trim() + "' ";
            duplicateQuery += "AND [School].[State] = '" + txtState.Text.Trim() + "' ";
            duplicateQuery += "AND [School].[Zip] = '" + txtZip.Text.Trim() + "' ";
            duplicateQuery += "AND [School].[CyberDayID] = '" + ddlCyberDay.SelectedValue + "' ";
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
            SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
            duplicateTable.Fill(duplicateSet);
            int i = duplicateSet.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblAddStatusSuccess.Visible = false;
                lblAddStatusFail.Visible = true;
                lblAddStatusFail.Text = "There is a Duplicate School CyberDay Already Saved";
                duplicateSet.Clear();
            }
            else
            {

                try
                {
                    String insertCmd = "INSERT INTO School VALUES (@txtSchoolName, @txtStreet, @txtCity, @txtState, @txtZip, @ddlCyberDayID)";
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                    SqlCommand sqlCommand = new SqlCommand(insertCmd, sqlConnect);
                    sqlCommand.Parameters.AddWithValue("@txtSchoolName", HttpUtility.HtmlEncode(txtSchoolName.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtStreet", HttpUtility.HtmlEncode(txtStreet.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtCity", HttpUtility.HtmlEncode(txtCity.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtState", HttpUtility.HtmlEncode(txtState.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtZip", HttpUtility.HtmlEncode(txtZip.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlCyberDayID", HttpUtility.HtmlEncode(ddlCyberDay.SelectedValue));
                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFail.Visible = false;
                    lblAddStatusSuccess.Visible = true;
                    lblAddStatusSuccess.Text = "School succesfully Added";
                    btnStep3.Visible = true;

                    txtSchoolName.Text = String.Empty;
                    txtStreet.Text = String.Empty;
                    txtCity.Text = String.Empty;
                    txtState.Text = String.Empty;
                    txtZip.Text = String.Empty;
                }
                catch (Exception)
                {
                    lblAddStatusSuccess.Visible = false;
                    lblAddStatusFail.Visible = true;
                    lblAddStatusFail.Text = "Failed to add School to CyberDay";
                    System.Diagnostics.Debug.WriteLine("Error");
                }
            }
        }

        protected void btnStep3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherRegister.aspx");
        }

        protected void btnPopulateBoxes_Click(object sender, EventArgs e)
        {
            txtSchoolName.Text = "Massanutten Middle";
            txtStreet.Text = "100 Massanutten Ln";
            txtCity.Text = "Elkton";
            txtState.Text = "VA";
            txtZip.Text = "23858";
        }
    }
}