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
            gvbind();
        }

        protected void gvbind()
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
                sqlQuery += "INNER JOIN [VolunteerRoster] ON [Volunteer].[VolunteerID] = [VolunteerRoster].[VolunteerID] ";
                sqlQuery += "AND [VolunteerRoster].[CyberDayID] = " + ddlCyberDay.SelectedValue;

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

        protected void grdvStudentRoster_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdvStudentRoster.EditIndex = -1;
            gvbind();
        }

        protected void grdvStudentRoster_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdvStudentRoster.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void grdvStudentRoster_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label studentID = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentID") as Label;
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sqlConnect.Open();
            SqlCommand studentPermissionsDelete = new SqlCommand("DELETE FROM [dbo].[StudentPermissionForms] WHERE [dbo].[StudentPermissionForms].[StudentID] = @studentID");
            studentPermissionsDelete.Parameters.AddWithValue("@studentID", studentID.Text);
            studentPermissionsDelete.Connection = sqlConnect;
            studentPermissionsDelete.ExecuteNonQuery();
            SqlCommand studentPhotoDelete = new SqlCommand("DELETE FROM [dbo].[StudentPhotoReleaseForms] WHERE [dbo].[StudentPhotoReleaseForms].[StudentID] = @studentID");
            studentPhotoDelete.Parameters.AddWithValue("@studentID", studentID.Text);
            studentPhotoDelete.Connection = sqlConnect;
            studentPhotoDelete.ExecuteNonQuery();
            SqlCommand studentDelete = new SqlCommand("DELETE FROM [dbo].[Student] WHERE [dbo].[Student].[StudentID] = @studentID");
            studentDelete.Parameters.AddWithValue("@studentID", studentID.Text);
            studentDelete.Connection = sqlConnect;
            studentDelete.ExecuteNonQuery();
            gvbind();
            sqlConnect.Close();
        }

        protected void grdvStudentRoster_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblStudentID = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentID") as Label;
            TextBox txtStudentFirst = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentFirst") as TextBox;
            TextBox txtStudentLast = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentLast") as TextBox;
            TextBox txtStudentAge = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentAge") as TextBox;
            TextBox txtStudentGender = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentGender") as TextBox;
            TextBox txtStudentEmail = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentEmail") as TextBox;
            TextBox txtStudentNotes = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentNotes") as TextBox;
            TextBox txtStudentDietary = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentDietary") as TextBox;
            TextBox txtStudentAllergies = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentAllergies") as TextBox;
            TextBox txtStudentTeacher = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentTeacher") as TextBox;
            TextBox txtStudentLunch = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentLunch") as TextBox;
            TextBox txtStudentCyberDay = grdvStudentRoster.Rows[e.RowIndex].FindControl("lblStudentCyberDay") as TextBox; 
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sqlConnect.Open();
            SqlCommand studentUpdate = new SqlCommand("UPDATE [dbo].[Student] SET FirstName = @first, LastName = @last, Age = @age, Gender = @gender, Email = @email, Notes = @notes, Dietary = @dietary, Allergies = @allergies, TeacherID = @teacher, LunchAttendance = @lunch, CyberDayID = @cyber WHERE [dbo].[Student].[StudentID] = @studentID");
            studentUpdate.Parameters.AddWithValue("@studentID", lblStudentID.Text);
            studentUpdate.Parameters.AddWithValue("@first", txtStudentFirst.Text);
            studentUpdate.Parameters.AddWithValue("@last", txtStudentLast.Text);
            studentUpdate.Parameters.AddWithValue("@age", txtStudentAge.Text);
            studentUpdate.Parameters.AddWithValue("@gender", txtStudentGender.Text);
            studentUpdate.Parameters.AddWithValue("@email", txtStudentEmail.Text);
            studentUpdate.Parameters.AddWithValue("@notes", txtStudentNotes.Text);
            studentUpdate.Parameters.AddWithValue("@dietary", txtStudentDietary.Text);
            studentUpdate.Parameters.AddWithValue("@allergies", txtStudentAllergies.Text);
            studentUpdate.Parameters.AddWithValue("@teacher", txtStudentTeacher.Text);
            studentUpdate.Parameters.AddWithValue("@lunch", txtStudentLunch.Text);
            studentUpdate.Parameters.AddWithValue("@cyber", txtStudentCyberDay.Text);
            studentUpdate.Connection = sqlConnect;
            studentUpdate.ExecuteNonQuery();
            gvbind();
            sqlConnect.Close();
        }


        protected void grdvVolunteerRoster_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdvVolunteerRoster.EditIndex = -1;
            gvbind();
        }

        protected void grdvVolunteerRoster_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdvVolunteerRoster.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void grdvVolunteerRoster_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label volunteerID = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerID") as Label;
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sqlConnect.Open();
            SqlCommand volunteerRosterDelete = new SqlCommand("DELETE FROM [dbo].[VolunteerRoster] WHERE [dbo].[VolunteerRoster].[VolunteerID] = @volunteerID");
            volunteerRosterDelete.Parameters.AddWithValue("@volunteerID", volunteerID.Text);
            volunteerRosterDelete.Connection = sqlConnect;
            volunteerRosterDelete.ExecuteNonQuery();
            SqlCommand volunteerDelete = new SqlCommand("DELETE FROM [dbo].[Volunteer] WHERE [dbo].[Volunteer].[VolunteerID] = @volunteerID");
            volunteerDelete.Parameters.AddWithValue("@volunteerID", volunteerID.Text);
            volunteerDelete.Connection = sqlConnect;
            volunteerDelete.ExecuteNonQuery();
            gvbind();
            sqlConnect.Close();
        }

        protected void grdvVolunteerRoster_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblVolunteerID = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerID") as Label;
            TextBox txtVolunteerFirst = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerFirst") as TextBox;
            TextBox txtVolunteerLast = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerLast") as TextBox;
            TextBox txtVolunteerGender = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerGender") as TextBox;
            TextBox txtVolunteerAffiliation = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerAffiliation") as TextBox;
            TextBox txtVolunteerParticipation = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerParticipation") as TextBox;
            TextBox txtVolunteerEmail = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerEmail") as TextBox;
            TextBox txtVolunteerPhone = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerPhone") as TextBox;
            TextBox txtVolunteerLunch = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerLunch") as TextBox;
            TextBox txtVolunteerCyberDay = grdvVolunteerRoster.Rows[e.RowIndex].FindControl("lblVolunteerCyberDay") as TextBox;
            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sqlConnect.Open();
            SqlCommand volunteerUpdate = new SqlCommand("UPDATE [dbo].[Volunteer] SET FirstName = @first, LastName = @last, Gender = @gender, CISRelation = @affiliation, PreviousParticipation = @participation, Email = @email, LunchAttendance = @lunch, CyberDayID = @cyber WHERE [dbo].[Volunteer].[VolunteerID] = @volunteerID");
            volunteerUpdate.Parameters.AddWithValue("@volunteerID", lblVolunteerID.Text);
            volunteerUpdate.Parameters.AddWithValue("@first", txtVolunteerFirst.Text);
            volunteerUpdate.Parameters.AddWithValue("@last", txtVolunteerLast.Text);
            volunteerUpdate.Parameters.AddWithValue("@gender", txtVolunteerGender.Text);
            volunteerUpdate.Parameters.AddWithValue("@affiliation", txtVolunteerAffiliation.Text);
            volunteerUpdate.Parameters.AddWithValue("@participation", txtVolunteerParticipation.Text);
            volunteerUpdate.Parameters.AddWithValue("@email", txtVolunteerEmail.Text);
            volunteerUpdate.Parameters.AddWithValue("@phone", txtVolunteerPhone.Text);
            volunteerUpdate.Parameters.AddWithValue("@lunch", txtVolunteerLunch.Text);
            volunteerUpdate.Parameters.AddWithValue("@cyber", txtVolunteerCyberDay.Text);
            volunteerUpdate.Connection = sqlConnect;
            volunteerUpdate.ExecuteNonQuery();
            gvbind();
            sqlConnect.Close();
        }

    }
}