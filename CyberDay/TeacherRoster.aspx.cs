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
    public partial class TeacherRoster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPrintRoster_Click(object sender, EventArgs e)
        {
            String sqlQuery = "SELECT * ";
            sqlQuery += "FROM [Student] ";
            sqlQuery += "WHERE [Student].[TeacherID] = " + ddlSelectTeacher.SelectedValue;

            SqlConnection sqlConnect = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);
            DataTable dtForClassRoster = new DataTable();
            sqlAdapter.Fill(dtForClassRoster);
            grdvClassRoster.DataSource = dtForClassRoster;
            grdvClassRoster.DataBind();
        }
    }
}