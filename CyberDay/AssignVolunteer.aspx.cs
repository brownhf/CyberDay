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
            lblAddStatusSuccess.Visible = false;
            lblAddStatusFail.Visible = false;
            lblAddStatusSuccess2.Visible = false;
            lblAddStatusFail2.Visible = false;
        }
        //protected void btnStudentVolunteerAssign_Click(object sender, EventArgs e)
        //{
        //    DataSet duplicateSet = new DataSet();
        //    String duplicateQuery = "SELECT * FROM [dbo].[StudentVolEvent] ";
        //    duplicateQuery += "WHERE [StudentVolEvent].[Event_ID] = " + ddlSelectStudentEvent.SelectedValue + " ";
        //    duplicateQuery += "AND [StudentRoster].[Student_ID] = " + ddlSelectStudent.SelectedValue + " ";
        //    SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["Lab3"].ToString());
        //    SqlCommand duplicateCmd = new SqlCommand(duplicateQuery, sc);
        //    SqlDataAdapter duplicateTable = new SqlDataAdapter(duplicateCmd);
        //    duplicateTable.Fill(duplicateSet);
        //    int i = duplicateSet.Tables[0].Rows.Count;
        //    if (i > 0)
        //    {
        //        lblAddStatusSuccess.Visible = false;
        //        lblAddStatusFail.Visible = true;
        //        lblAddStatusFail.Text = "There is a Duplicate Row Already Saved";
        //        duplicateSet.Clear();
        //    }
        //    else
        //    {
        //        try
        //        {
        //            String insertStatement = "INSERT INTO CyberDayEvent VALUES (@ddlSelectCyberDay, @ddlSelectEvent, @ddlSelectStudentVolunteer, @ddlSelectStudentVolunteer)";
        //            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
        //            SqlCommand sqlCommand = new SqlCommand(insertStatement, sqlConnect);
        //            sqlCommand.Parameters.AddWithValue("@ddlSelectStudentVolunteer", HttpUtility.HtmlEncode(ddlSelectStudentVolunteer.SelectedValue));
        //            sqlCommand.Parameters.AddWithValue("@ddlSelectCyberDay", HttpUtility.HtmlEncode(ddlSelectStudentCyberDay.SelectedValue));
        //            sqlCommand.Parameters.AddWithValue("@ddlSelectFacultyEvent", HttpUtility.HtmlEncode(ddlSelectStudentEvent.SelectedValue));
        //            sqlConnect.Open();
        //            sqlCommand.ExecuteNonQuery();
        //            sqlConnect.Close();
        //            lblAddStatusFail.Visible = false;
        //            lblAddStatusSuccess.Visible = true;
        //            lblAddStatusSuccess.Text = "Student Volunteer Succesfully Added to Event";
        //        }
        //    }
        //}

        //protected void btnFacultyVolunteerAssign_Click(object sender, EventArgs e)
        //{
        //    String insertStatement = "INSERT INTO StudentRoster VALUES (@ddlSelectFacultyVolunteer, @ddlSelectFacultyCyberDay, @ddlSelectFacultyEvent)";
        //    SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
        //    SqlCommand sqlCommand = new SqlCommand(insertStatement, sqlConnect);
        //    sqlCommand.Parameters.AddWithValue("@ddlSelectFacultyVolunteer", HttpUtility.HtmlEncode(ddlSelectFacultyVolunteer.SelectedValue));
        //    sqlCommand.Parameters.AddWithValue("@ddlSelectFacultyCyberDay", HttpUtility.HtmlEncode(ddlSelectFacultyCyberDay.SelectedValue));
        //    sqlCommand.Parameters.AddWithValue("@ddlSelectFacultyEvent", HttpUtility.HtmlEncode(ddlSelectFacultyEvent.SelectedValue));
        //    sqlConnect.Open();
        //    sqlCommand.ExecuteNonQuery();
        //    sqlConnect.Close();
        //    lblAddStatusFail.Visible = false;
        //    lblAddStatusSuccess.Visible = true;
        //    lblAddStatusSuccess.Text = "Student Volunteer Succesfully Added to Event";
        //}
    }
}