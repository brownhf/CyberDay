using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class TeacherPortal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnReturnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherHomePage.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
        }
    }
}