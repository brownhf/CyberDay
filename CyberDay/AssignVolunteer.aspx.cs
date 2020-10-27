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
    public partial class AssignVolunteer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblAddStatusSuccess.Visible = false;
            lblAddStatusFail.Visible = false;
            lblAddStatusSuccess2.Visible = false;
            lblAddStatusFail2.Visible = false;
        }
        protected void btnStudentVolunteerAssign_Click(object sender, EventArgs e)
        {

        }

        protected void btnFacultyVolunteerAssign_Click(object sender, EventArgs e)
        {

        }
    }
}