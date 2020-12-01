using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration; //Lets us access our Web.config file!
using System.IO;

namespace CyberDay
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnExportExcel.Visible = false;
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
                string sqlQuery = "Select FirstName + ' ' + LastName as [Students With Permission Forms] From Student Inner Join StudentPermissionForms On Student.StudentID = " +
                    "StudentPermissionForms.StudentID and Student.CyberDayID = " + ddlCyberDayDate.SelectedValue;
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlQuery, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                gvFormsRoster.DataSource = dt;
                gvFormsRoster.DataBind();
                btnExportExcel.Visible = true;
            }
            else if(ddlForm.SelectedItem.Text == "Photo Release Form")
            {
                SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                string sqlQuery = "Select FirstName + ' ' + LastName as [Students With Photo Release Forms] From Student Inner Join StudentPhotoReleaseForms On Student.StudentID = " +
                    "StudentPhotoReleaseForms.StudentID and Student.CyberDayID = " + ddlCyberDayDate.SelectedValue;
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlQuery, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                gvFormsRoster.DataSource = dt;
                gvFormsRoster.DataBind();
                btnExportExcel.Visible = true;
            }
            else if(ddlForm.SelectedItem.Text == "Both")
            {
                SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                string sqlQuery = "Select FirstName + ' ' + LastName as [Students With Both Forms] From Student Inner Join StudentPhotoReleaseForms On Student.StudentID = " +
                    "StudentPhotoReleaseForms.StudentID Inner Join StudentPermissionForms On Student.StudentID = " +
                    "StudentPermissionForms.StudentID and Student.CyberDayID = " + ddlCyberDayDate.SelectedValue;
                SqlDataAdapter sqlDa = new SqlDataAdapter(sqlQuery, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                gvFormsRoster.DataSource = dt;
                gvFormsRoster.DataBind();
                btnExportExcel.Visible = true;
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "FormRoster" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gvFormsRoster.GridLines = GridLines.Both;
            gvFormsRoster.HeaderStyle.Font.Bold = true;
            gvFormsRoster.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }
        protected void btnExportExcel_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
    }
}