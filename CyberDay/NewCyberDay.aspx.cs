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
    public partial class NewCyberDay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAddStatusFail.Visible = false;
            lblAddStatusSuccess.Visible = false;
        }
        protected void btnCreateCyberDay_Click(object sender, EventArgs e)
        {
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[CyberDay] ";
            duplicateQuery += "WHERE [CyberDay].[Date] = '" + ddlMonth.SelectedValue + "/" + ddlDay.SelectedValue + "/" + ddlYear.SelectedValue + "' ";
            duplicateQuery += "AND [CyberDay].[StartTime] = '" + ddlHour.SelectedValue + ":" + ddlMinute.SelectedValue + ddlAmPm.Text.Trim() + "' ";
            duplicateQuery += "AND [CyberDay].[EndTime] = '" + ddlHourEnd.SelectedValue + ":" + ddlMinuteEnd.SelectedValue + ddlAmPmEnd.Text.Trim() + "' ";
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
            SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
            duplicateTable.Fill(duplicateSet);
            int i = duplicateSet.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblAddStatusSuccess.Visible = false;
                lblAddStatusFail.Visible = true;
                lblAddStatusFail.Text = "There is a Duplicate CyberDay Already Saved";
                duplicateSet.Clear();
            }
            else
            {

                try
                {
                    String insertCmd = "INSERT INTO CyberDay VALUES (@ddlDate, @ddlStartTime, @ddlEndTime, @ddlAddCoordinator)";
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                    SqlCommand sqlCommand = new SqlCommand(insertCmd, sqlConnect);
                    sqlCommand.Parameters.AddWithValue("@ddlDate", HttpUtility.HtmlEncode(ddlMonth.SelectedValue + "/" + ddlDay.SelectedValue + "/" + ddlYear.SelectedValue));
                    sqlCommand.Parameters.AddWithValue("@ddlStartTime", HttpUtility.HtmlEncode(ddlHour.SelectedValue + ":" + ddlMinute.SelectedValue + ddlAmPm.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlEndTime", HttpUtility.HtmlEncode(ddlHourEnd.SelectedValue + ":" + ddlMinuteEnd.SelectedValue + ddlAmPmEnd.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlAddCoordinator", HttpUtility.HtmlEncode(ddlAddCoordinator.SelectedValue));
                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFail.Visible = false;
                    lblAddStatusSuccess.Visible = true;
                    lblAddStatusSuccess.Text = "CyberDay succesfully created";
                }
                catch (Exception)
                {
                    lblAddStatusSuccess.Visible = false;
                    lblAddStatusFail.Visible = true;
                    lblAddStatusFail.Text = "Failed to create CyberDay";
                    System.Diagnostics.Debug.WriteLine("Error");
                }
            }
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[Event] ";
            duplicateQuery += "WHERE [Event].[EventName] = '" + txtEventName.Text.Trim() + "' ";
            duplicateQuery += "AND [Event].[Description] = '" + txtEventDescription.Text.Trim() + "' ";
            duplicateQuery += "AND [Event].[Building] = '" + txtBuilding.Text.Trim() + "' ";
            duplicateQuery += "AND [Event].[RoomNumber] = '" + txtRoomNumber.Text.Trim() + "' ";
            duplicateQuery += "AND [Event].[StartTime] = '" + ddlEventStartHour.SelectedValue + ":" + ddlEventStartMinute.SelectedValue + ddlEventStartAmPm.Text.Trim() + "' ";
            duplicateQuery += "AND [Event].[EndTime] = '" + ddlEventEndHour.SelectedValue + ":" + ddlEventEndMinute.SelectedValue + ddlEventEndAmPm.Text.Trim() + "' ";
            duplicateQuery += "AND [Event].[CyberDayID] = " + ddlCyberDay.SelectedValue + "";
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
            SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
            duplicateTable.Fill(duplicateSet);
            int i = duplicateSet.Tables[0].Rows.Count;
            if (i > 0)
            {
                lblAddStatusSuccessEvent.Visible = false;
                lblAddStatusFailEvent.Visible = true;
                lblAddStatusFailEvent.Text = "There is a Duplicate Event Already Saved for this CyberDay";
                duplicateSet.Clear();
            }
            else
            {

                try
                {
                    String insertCmd = "INSERT INTO Event VALUES (@txtEventName, @txtEventDescription, @txtBuilding, @txtRoomNumber, @ddlStartTime, @ddlEndTime, @ddlCyberDay)";
                    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                    SqlCommand sqlCommand = new SqlCommand(insertCmd, sqlConnect);
                    sqlCommand.Parameters.AddWithValue("@txtEventName", HttpUtility.HtmlEncode(txtEventName.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtEventDescription", HttpUtility.HtmlEncode(txtEventDescription.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtBuilding", HttpUtility.HtmlEncode(txtBuilding.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@txtRoomNumber", HttpUtility.HtmlEncode(txtRoomNumber.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlStartTime", HttpUtility.HtmlEncode(ddlEventStartHour.SelectedValue + ":" + ddlEventStartMinute.SelectedValue + ddlEventStartAmPm.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlEndTime", HttpUtility.HtmlEncode(ddlEventEndHour.SelectedValue + ":" + ddlEventEndMinute.SelectedValue + ddlEventEndAmPm.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlCyberDay", HttpUtility.HtmlEncode(ddlCyberDay.SelectedValue));
                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFailEvent.Visible = false;
                    lblAddStatusSuccessEvent.Visible = true;
                    lblAddStatusSuccessEvent.Text = "Event succesfully added";

                    txtEventName.Text = String.Empty;
                    txtEventDescription.Text = String.Empty;
                    txtBuilding.Text = String.Empty;
                    txtRoomNumber.Text = String.Empty;
                }
                catch (Exception)
                {
                    lblAddStatusSuccessEvent.Visible = false;
                    lblAddStatusFailEvent.Visible = true;
                    lblAddStatusFailEvent.Text = "Failed to Add Event";
                    System.Diagnostics.Debug.WriteLine("Error");
                }
            }
        }
    }
}