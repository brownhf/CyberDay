﻿using System;
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
            btnStep2.Visible = false;
        }

        protected void btnCreateCyberDay_Click(object sender, EventArgs e)
        {
            
            DataSet duplicateSet = new DataSet();
            String duplicateQuery = "SELECT * FROM [dbo].[CyberDay] ";
            duplicateQuery += "WHERE [CyberDay].[Date] = '" + Calendar1.SelectedDate.ToShortDateString() + "' ";
            duplicateQuery += "AND [CyberDay].[StartTime] = '" + ddlHour.SelectedValue + ":" + ddlMinute.SelectedValue + ddlAmPm.Text.Trim() + "' ";
            duplicateQuery += "AND [CyberDay].[EndTime] = '" + ddlHourEnd.SelectedValue + ":" + ddlMinuteEnd.SelectedValue + ddlAmPmEnd.Text.Trim() + "' ";
            duplicateQuery += "AND [CyberDay].[CoordinatorID] = '" + ddlAddCoordinator.SelectedValue + "' ";




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
                    sqlCommand.Parameters.AddWithValue("@ddlDate", HttpUtility.HtmlEncode(Calendar1.SelectedDate.ToShortDateString()));
                    sqlCommand.Parameters.AddWithValue("@ddlStartTime", HttpUtility.HtmlEncode(ddlHour.SelectedValue + ":" + ddlMinute.SelectedValue + ddlAmPm.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlEndTime", HttpUtility.HtmlEncode(ddlHourEnd.SelectedValue + ":" + ddlMinuteEnd.SelectedValue + ddlAmPmEnd.Text.Trim()));
                    sqlCommand.Parameters.AddWithValue("@ddlAddCoordinator", HttpUtility.HtmlEncode(ddlAddCoordinator.SelectedValue));
                    sqlConnect.Open();
                    sqlCommand.ExecuteNonQuery();
                    sqlConnect.Close();
                    lblAddStatusFail.Visible = false;
                    lblAddStatusSuccess.Visible = true;
                    lblAddStatusSuccess.Text = "CyberDay succesfully created";
                    btnStep2.Visible = true;
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

    protected void btnStep2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SchoolRegister.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string cal = Calendar1.SelectedDate.ToShortDateString();

        }
    }
}

