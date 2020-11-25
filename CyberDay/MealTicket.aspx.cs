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
    public partial class MealTicket : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTicketQuantity_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sc.Open();
            SqlCommand counter = sc.CreateCommand();
            counter.CommandText = "SELECT count(Attendance) from Lunch WHERE Attendance = 'yes' AND CyberDayID =" + ddlSelectCyberDay.SelectedValue;
            int count = (int)counter.ExecuteScalar();


            lblTicketQuantity.Text = count.ToString();
        }

        protected void btnTicketPrice_Click(object sender, EventArgs e)
        {
            SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            sc.Open();
            SqlCommand counter = sc.CreateCommand();
            counter.CommandText = "SELECT count(Attendance) from Lunch WHERE Attendance = 'yes' AND CyberDayID =" + ddlSelectCyberDay.SelectedValue;
            int count = (int)counter.ExecuteScalar();

            lblTicketPrice.Text = "$" + (count * 14).ToString();
        }
    }
}