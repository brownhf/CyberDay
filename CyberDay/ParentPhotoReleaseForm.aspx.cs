using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;

namespace CyberDay
{
    public partial class ParentPhotoReleaseForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("File", typeof(string));
                dt.Columns.Add("Size", typeof(string));
                dt.Columns.Add("Type", typeof(string));

                foreach (string strFile in Directory.GetFiles(Server.MapPath("~/PermissionFormsDownload")))
                {
                    FileInfo fi = new FileInfo(strFile);

                    dt.Rows.Add(fi.Name, fi.Length, fi.Extension);
                }
                gvFormsDownload.DataSource = dt;
                gvFormsDownload.DataBind();
            }
        }

        protected void gvFormsDownload_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/PermissionFormsDownload/") + e.CommandArgument);
                Response.End();
            }
        }
    }
}