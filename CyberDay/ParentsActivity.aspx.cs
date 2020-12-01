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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblRegisterWelcome.Text = "Register " + Session["FirstName"].ToString() + " " + Session["LastName"].ToString() + " For Activities!";

                SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                string queryAllActivities = "Select EventName as Event, Description, StartTime as Starts, EndTime as Ends From Event Where CyberDayID = " + Session["CyberDayID"];
                SqlDataAdapter sqlDaAllActivities = new SqlDataAdapter(queryAllActivities, sqlCon);
                DataTable dt = new DataTable();
                sqlDaAllActivities.Fill(dt);
                sqlCon.Open();
                gvActivities.DataSource = dt;
                gvActivities.DataBind();
                sqlCon.Close();

                string activityQuery = "Select EventID, EventName From Event Where CyberDayId = " + Session["CyberDayID"].ToString();
                SqlDataAdapter daAct1 = new SqlDataAdapter(activityQuery, sqlCon);
                DataTable dtAct1 = new DataTable();
                daAct1.Fill(dtAct1);
                ddlActivity1.DataSource = dtAct1;
                sqlCon.Open();
                ddlActivity1.DataValueField = "EventID";
                ddlActivity1.DataTextField = "EventName";
                ddlActivity1.DataBind();
                sqlCon.Close();

                SqlConnection sqlCon2 = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
                SqlDataAdapter daAct2 = new SqlDataAdapter(activityQuery, sqlCon2);
                DataTable dtAct2 = new DataTable();
                daAct2.Fill(dtAct2);
                ddlActivity2.DataSource = dtAct2;
                sqlCon2.Open();
                ddlActivity2.DataValueField = "EventID";
                ddlActivity2.DataTextField = "EventName";
                ddlActivity2.DataBind();
                sqlCon2.Close();
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString());
            string sqlQuery = "Insert Into StudentEvent Values (@EventID, @StudentID)";
            string sqlCheck = "Select Count(1) From StudentEvent Where EventID = @EventID and StudentID = @StudentID";
            string sqlCheck2 = "Select Count(1) From StudentEvent Where EventID = @EventID and StudentID = @StudentID";
            string studentIDQuery = "Select StudentID From Student Where FirstName = '" + Session["FirstName"].ToString() + "' and LastName = '" + Session["LastName"].ToString() + "'";
            SqlCommand sqlComCheckID = new SqlCommand(studentIDQuery, sqlCon);
            sqlCon.Open();
            int studentID = Convert.ToInt32(sqlComCheckID.ExecuteScalar());
            sqlCon.Close();

            SqlCommand sqlComCheck = new SqlCommand(sqlCheck, sqlCon);
            sqlComCheck.Parameters.AddWithValue("@StudentID", studentID);
            sqlComCheck.Parameters.AddWithValue("@EventID", ddlActivity1.SelectedValue);
            sqlCon.Open();
            int check1 = Convert.ToInt32(sqlComCheck.ExecuteScalar());
            sqlCon.Close();

            SqlCommand sqlComCheck2 = new SqlCommand(sqlCheck2, sqlCon);
            sqlComCheck2.Parameters.AddWithValue("@StudentID", studentID);
            sqlComCheck2.Parameters.AddWithValue("@EventID", ddlActivity2.SelectedValue);
            sqlCon.Open();
            int check2 = Convert.ToInt32(sqlComCheck2.ExecuteScalar());
            sqlCon.Close();

            if (check1 == 0 && check2 == 0 && (ddlActivity1.SelectedValue != ddlActivity2.SelectedValue))
            {
                SqlCommand sqlCom1 = new SqlCommand(sqlQuery, sqlCon);
                sqlCom1.Parameters.AddWithValue("@StudentID", studentID);
                sqlCom1.Parameters.AddWithValue("@EventID", ddlActivity1.SelectedValue);
                sqlCon.Open();
                sqlCom1.ExecuteNonQuery();
                sqlCon.Close();

                string sqlQuery2 = "Insert Into StudentEvent Values (@EventID, @StudentID)";
                SqlCommand sqlCom2 = new SqlCommand(sqlQuery2, sqlCon);
                sqlCom2.Parameters.AddWithValue("@StudentID", studentID);
                sqlCom2.Parameters.AddWithValue("@EventID", ddlActivity2.SelectedValue);
                sqlCon.Open();
                sqlCom2.ExecuteNonQuery();
                sqlCon.Close();
                lblSignUpError.Text = "Student Successfully Signed Up For Events!";
            }
            else
            {
                lblErrorActivity1.Text = "Error - Student may already be signed up for one or more event";
                lblErrorActivity2.Text = "**Please make sure activity 1 and activity 2 are not the same!";
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParentsHome.aspx");
        }
    }
}