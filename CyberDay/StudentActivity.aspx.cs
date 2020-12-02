using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Windows.Documents;
using Paragraph = iTextSharp.text.Paragraph;

namespace CyberDay
{
    public partial class StudentActivity : System.Web.UI.Page
    {
        String con = ConfigurationManager.ConnectionStrings["CyberDayDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pdfbttn.Visible = false;

            }
        }


        protected void searchbttn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberDayDB"].ConnectionString))
            {
                sqlcon.Open();
                String sqlcmd = "Select EventName, Description,Building,RoomNumber,StartTime,EndTime From Event Where CyberDayID = " + cyberDayDDL.SelectedValue;
                SqlDataAdapter da = new SqlDataAdapter(sqlcmd, sqlcon);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvActivity.DataSource = dt;
                gvActivity.DataBind();
                pdfbttn.Visible = true;

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
            gvActivity.GridLines = GridLines.Both;
            gvActivity.HeaderStyle.Font.Bold = true;
            gvActivity.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }

        protected void pdfbttn_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
            //Paragraph para = new Paragraph();
            //Chunk c = new Chunk("    ");
            //para.Add(c);

            //iTextSharp.text.Font textFont = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA
            //                                    , 20
            //                                    , iTextSharp.text.Font.BOLD
            //                                    , BaseColor.DARK_GRAY); ;
            //Paragraph p = new Paragraph();
            //Chunk cd = new Chunk("CyberDay:  " + cyberDayDDL.SelectedItem + "    ", textFont);

            //p.Add(cd);

            //int rows = 6;
            //int cols = 2;
            //PdfPTable pdftbl = new PdfPTable(2);
            //pdftbl.SpacingBefore = 100;
            //pdftbl.SpacingAfter = 100;
            //pdftbl.HorizontalAlignment = Element.ALIGN_CENTER;
            //pdftbl.DefaultCell.Padding = 5;
            //pdftbl.DefaultCell.FixedHeight = 50;



            //for (int rowCounter = 0; rowCounter < rows; rowCounter++)
            //{
            //    for (int columnCounter = 0; columnCounter < cols; columnCounter++)
            //    {
            //        string strValue = gvActivity.Rows[rowCounter].Cells[columnCounter].Text;
            //        pdftbl.AddCell(strValue);
            //    }
            //}

            //Document Doc = new Document(PageSize.A4, 50, 50, 50, 50);
            //PdfWriter.GetInstance(Doc, Response.OutputStream);

            //Doc.Open();
            //Doc.Add(para);
            //Doc.Add(p);
            //Doc.Add(pdftbl);
            //Doc.Close();
            //Response.ContentType = "document/pdf";
            //Response.AddHeader("content-disposition", "attachment;filename=CyberDayActivityInfo.pdf");
            //Response.End();



        }

    }
}