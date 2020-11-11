using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class TeacherHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddContactTeacher.aspx");
        }

        protected void btnAddFaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("OtherFacultyMembers.aspx");
        }
    }
}