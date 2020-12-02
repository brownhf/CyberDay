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
    public partial class CoordinatorEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAddStatusFailEvent.Visible = false;
            lblAddStatusSuccessEvent.Visible = false;
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

        protected void gvbind()
        {
            String sqlQuery = "SELECT * ";
            sqlQuery += "FROM [Event] ";
            sqlQuery += "WHERE [Event].[CyberDayID] = " + ddlCyberDay.SelectedValue;

            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
            DataTable dtCyberDayEvents = new DataTable();
            sqlAdapter.Fill(dtCyberDayEvents);
            grdvEvents.DataSource = dtCyberDayEvents;
            grdvEvents.DataBind();
        }

        protected void btnRefreshEvents_Click(object sender, EventArgs e)
        {
            gvbind();
        }

        protected void grdvEvents_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdvEvents.EditIndex = -1;
            gvbind();
        }

        protected void grdvEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdvEvents.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void grdvEvents_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label EventID = grdvEvents.Rows[e.RowIndex].FindControl("lblEventID") as Label;
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sqlConnect.Open();
            SqlCommand eventDelete = new SqlCommand("DELETE FROM [dbo].[Event] WHERE [dbo].[Event].[EventID] = @eventID");
            eventDelete.Parameters.AddWithValue("@eventID", EventID.Text);
            eventDelete.Connection = sqlConnect;
            eventDelete.ExecuteNonQuery();
            gvbind();
            sqlConnect.Close();
        }

        protected void grdvEvents_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblEventID = grdvEvents.Rows[e.RowIndex].FindControl("lblEventID") as Label;
            TextBox txtActivity = grdvEvents.Rows[e.RowIndex].FindControl("lblActivity") as TextBox;
            TextBox txtDescription = grdvEvents.Rows[e.RowIndex].FindControl("lblDescription") as TextBox;
            TextBox txtBuilding= grdvEvents.Rows[e.RowIndex].FindControl("lblBuilding") as TextBox;
            TextBox txtRoomNumber = grdvEvents.Rows[e.RowIndex].FindControl("lblRoomNumber") as TextBox;
            TextBox txtStartTime = grdvEvents.Rows[e.RowIndex].FindControl("lblStartTime") as TextBox;
            TextBox txtEndTime = grdvEvents.Rows[e.RowIndex].FindControl("lblEndTime") as TextBox;
            Label lblCyberDayID = grdvEvents.Rows[e.RowIndex].FindControl("lblCyberDayID") as Label;
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sqlConnect.Open();
            SqlCommand eventUpdate = new SqlCommand("UPDATE [dbo].[Event] SET EventName = @activity, Description = @description, Building = @building, RoomNumber = @room, StartTime = @start, EndTime = @end, CyberDayID = @cyber WHERE [dbo].[Event].[EventID] = @eventID");
            eventUpdate.Parameters.AddWithValue("@eventID", lblEventID.Text);
            eventUpdate.Parameters.AddWithValue("@activity", txtActivity.Text);
            eventUpdate.Parameters.AddWithValue("@description", txtDescription.Text);
            eventUpdate.Parameters.AddWithValue("@building", txtBuilding.Text);
            eventUpdate.Parameters.AddWithValue("@room", txtRoomNumber.Text);
            eventUpdate.Parameters.AddWithValue("@start", txtStartTime.Text);
            eventUpdate.Parameters.AddWithValue("@end", txtEndTime.Text);
            eventUpdate.Parameters.AddWithValue("@cyber", lblCyberDayID.Text);
            eventUpdate.Connection = sqlConnect;
            eventUpdate.ExecuteNonQuery();
            gvbind();
            sqlConnect.Close();
        }

        protected void btnPopulateBoxes_Click(object sender, EventArgs e)
        {
            txtEventName.Text = "PowerPoint";
            txtEventDescription.Text = "Learn the basics of ppt";
            txtBuilding.Text = "Showker";
            txtRoomNumber.Text = "105";
        }
    }
}