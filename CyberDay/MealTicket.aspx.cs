using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Web.Configuration;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;

namespace CyberDay
{
    public partial class MealTicket : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //btnPdf.Visible = false;

            }
        }

        protected void btnTicketQuantity_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sc.Open();
            SqlCommand counter = sc.CreateCommand();
            counter.CommandText = "SELECT count(Attendance) from Lunch WHERE Attendance = 'yes' AND CyberDayID =" + ddlSelectCyberDay.SelectedValue;
            int count = (int)counter.ExecuteScalar();


            lblTicketQuantity.Text = "Total Lunch Tickets: " + count.ToString();
        }

        protected void btnTicketPrice_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sc.Open();
            SqlCommand counter = sc.CreateCommand();
            counter.CommandText = "SELECT count(Attendance) from Lunch WHERE Attendance = 'yes' AND CyberDayID =" + ddlSelectCyberDay.SelectedValue;
            int count = (int)counter.ExecuteScalar();

            lblTicketPrice.Text = "Total Price of Lunch Tickets: $" + (count * 14).ToString();
        }

        protected void ddlSelectCyberDay_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ConnectionString))
            {
                con1.Open();
                String cmd = "select FirstName, LastName from [Lunch] where CyberDayID =" + ddlSelectCyberDay.SelectedValue;
                SqlDataAdapter sda = new SqlDataAdapter(cmd, con1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                grdLunchAttendance.DataSource = dt;
                grdLunchAttendance.DataBind();
                btnPdf.Visible = true;
            }
        }

        protected void btnPdf_Click(object sender, EventArgs e)
        {

            Paragraph para = new Paragraph();
            Chunk c = new Chunk("    ");
            para.Add(c);

            iTextSharp.text.Font textFont = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA
                                                , 18
                                                , iTextSharp.text.Font.BOLD
                                                , BaseColor.DARK_GRAY); ;
            Paragraph p = new Paragraph();
            Chunk cd = new Chunk("CyberDay:  " + ddlSelectCyberDay.SelectedItem + "    ", textFont);
            p.Add(cd);

            PdfPTable pdfTable = new PdfPTable(grdLunchAttendance.HeaderRow.Cells.Count);
            pdfTable.SpacingBefore = 50;
            pdfTable.SpacingAfter = 100;
            pdfTable.HorizontalAlignment = Element.ALIGN_CENTER;
            pdfTable.DefaultCell.Padding = 5;
            pdfTable.DefaultCell.FixedHeight = 50;


            foreach (TableCell headerCell in grdLunchAttendance.HeaderRow.Cells)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text));
                pdfTable.AddCell(pdfCell);
            }

            foreach (GridViewRow gridViewRow in grdLunchAttendance.Rows)
            {
                foreach (TableCell tableCell in gridViewRow.Cells)
                {
                    PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));
                    pdfTable.AddCell(pdfCell);
                }
            }

            Document pdfDocument = new Document(PageSize.A4, 50, 50, 50, 50);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

            pdfDocument.Open();
            pdfDocument.Add(para);
            pdfDocument.Add(p);
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();

            Response.ContentType = "document/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=CyberDayLunchInfo.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}