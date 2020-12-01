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
    public partial class TeacherRosters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnViewRoster_Click(object sender, EventArgs e)
        {
            gvbind();
        }

        protected void gvbind()
        {
            String sqlQuery = "SELECT * ";
            sqlQuery += "FROM [Student] ";
            sqlQuery += "WHERE [Student].[TeacherID] = " + ddlTeacher.SelectedValue;

            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
            DataTable dtForStudentRoster = new DataTable();
            sqlAdapter.Fill(dtForStudentRoster);
            grdvStudentRoster.DataSource = dtForStudentRoster;
            grdvStudentRoster.DataBind();
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
    }
}