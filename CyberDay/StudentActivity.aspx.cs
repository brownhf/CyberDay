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


        protected void CyberDayDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
            // eventDDL.Items.Clear();
            //eventDDL.Items.Add("Select Activity");

            using (SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberDayDB"].ConnectionString))
            {
                con1.Open();
                String cmd = "select * from [Event] where CyberDayID =" + cyberDayDDL.SelectedItem.Value;
                SqlDataAdapter sda = new SqlDataAdapter(cmd, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                eventDDL.DataSource = dt;
                eventDDL.DataBind();
            }
        }

        protected void searchbttn_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["CyberDayDB"].ConnectionString))
            {
                sqlcon.Open();
                String sqlcmd = "Select EventName, Description,Building,RoomNumber,StartTime,EndTime From Event Where CyberDayID = " + cyberDayDDL.SelectedValue + " And EventID = " + eventDDL.SelectedValue;
                SqlDataAdapter da = new SqlDataAdapter(sqlcmd, sqlcon);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DV.DataSource = dt;
                DV.DataBind();
                pdfbttn.Visible = true;

            }
        }



        protected void pdfbttn_Click(object sender, EventArgs e)
        {

            Paragraph para = new Paragraph();
            Chunk c = new Chunk("    ");
            para.Add(c);

            iTextSharp.text.Font textFont = new iTextSharp.text.Font(iTextSharp.text.Font.FontFamily.HELVETICA
                                                , 20
                                                , iTextSharp.text.Font.BOLD
                                                , BaseColor.DARK_GRAY); ;
            Paragraph p = new Paragraph();
            Chunk cd = new Chunk("CyberDay:  " + cyberDayDDL.SelectedItem + "    ", textFont);
            Chunk act = new Chunk("     Activity: " + eventDDL.SelectedItem, textFont);

            p.Add(cd);
            p.Add(act);

            int rows = 6;
            int cols = 2;
            PdfPTable pdftbl = new PdfPTable(2);
            pdftbl.SpacingBefore = 100;
            pdftbl.SpacingAfter = 100;
            pdftbl.HorizontalAlignment = Element.ALIGN_CENTER;
            pdftbl.DefaultCell.Padding = 5;
            pdftbl.DefaultCell.FixedHeight = 50;



            for (int rowCounter = 0; rowCounter < rows; rowCounter++)
            {
                for (int columnCounter = 0; columnCounter < cols; columnCounter++)
                {
                    string strValue = DV.Rows[rowCounter].Cells[columnCounter].Text;
                    pdftbl.AddCell(strValue);
                }
            }

            Document Doc = new Document(PageSize.A4, 50, 50, 50, 50);
            PdfWriter.GetInstance(Doc, Response.OutputStream);

            Doc.Open();
            Doc.Add(para);
            Doc.Add(p);
            Doc.Add(pdftbl);
            Doc.Close();
            Response.ContentType = "document/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=CyberDayActivityInfo.pdf");
            Response.End();

        }

    }
}