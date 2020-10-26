using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class CoordinatorHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnNewCyberDay_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCyberDay.aspx");
        }

        protected void btnRoster_Click(object sender, EventArgs e)
        {
            Response.Redirect("EventRosters.aspx");
        }

        protected void btnAssignVolunteer_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignVolunteer.aspx");
        }

        protected void btnMealTicket_Click(object sender, EventArgs e)
        {
            Response.Redirect("MealTicket.aspx");
        }

        protected void btnCreateVolunteer_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewVolunteer.aspx");
        }

        protected void btnSchedule_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuildSchedule.aspx");
        }
    }
}