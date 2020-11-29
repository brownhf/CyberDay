using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration; //Lets us access our Web.config file!

namespace CyberDay
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblPrintError.Text = "";
            if(ddlForm.SelectedItem.Text == "--Select--") 
            {
                lblPrintError.Text = "Error - Must Select a Form";
            }
            else if(ddlForm.SelectedItem.Text == "Permission Form")
            {
                SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                string sqlQuery = "Select FirstName, LastName From Student Inner Join StudentPermissionForms On Student.StudentID = " +
                    "StudentPermissionForms.StudentID and Student.CyberDayID = " + ddlCyberDayDate.SelectedValue;
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlQuery, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                gvFormsRoster.DataSource = dt;
                gvFormsRoster.DataBind();
            }
            else if(ddlForm.SelectedItem.Text == "Photo Release Form")
            {
                SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                string sqlQuery = "Select FirstName, LastName From Student Inner Join StudentPhotoReleaseForms On Student.StudentID = " +
                    "StudentPhotoReleaseForms.StudentID and Student.CyberDayID = " + ddlCyberDayDate.SelectedValue;
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlQuery, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                gvFormsRoster.DataSource = dt;
                gvFormsRoster.DataBind();
            }
            else if(ddlForm.SelectedItem.Text == "Both")
            {
                SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                string sqlQuery = "Select FirstName, LastName From Student Inner Join StudentPhotoReleaseForms On Student.StudentID = " +
                    "StudentPhotoReleaseForms.StudentID Inner Join StudentPermissionForms On Student.StudentID = " +
                    "StudentPermissionForms.StudentID and Student.CyberDayID = " + ddlCyberDayDate.SelectedValue;
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlQuery, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                gvFormsRoster.DataSource = dt;
                gvFormsRoster.DataBind();
            }
        }
    }
}