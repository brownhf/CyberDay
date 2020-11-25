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
    public partial class EventRosters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSelectCyberDay_Click(object sender, EventArgs e)
        {
            if (ddlRosterType.SelectedValue == "Student")
            {
                String sqlQuery = "SELECT * ";
                sqlQuery += "FROM [Student] ";
                sqlQuery += "WHERE [Student].[CyberDayID] = " + ddlCyberDay.SelectedValue;

                SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
                DataTable dtForStudentRoster = new DataTable();
                sqlAdapter.Fill(dtForStudentRoster);
                grdvStudentRoster.DataSource = dtForStudentRoster;
                grdvStudentRoster.DataBind();
            }

            if (ddlRosterType.SelectedValue == "Volunteer")
            {
                String sqlQuery = "SELECT * ";
                sqlQuery += "FROM [Volunteer] ";
                sqlQuery += "WHERE [Volunteer].[CyberDayID] = " + ddlCyberDay.SelectedValue;

                SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
                DataTable dtForVolunteerRoster = new DataTable();
                sqlAdapter.Fill(dtForVolunteerRoster);
                grdvVolunteerRoster.DataSource = dtForVolunteerRoster;
                grdvVolunteerRoster.DataBind();
            }

            else
            {
                lblIncorrectSelections.Text = "Please Select a Roster Type to View a Given CyberDay Roster";
            }
        }
    }
}