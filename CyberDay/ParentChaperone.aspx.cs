using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class ParentChaperone : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcomeMessage.Text = "Want to make Cyber Day even better!?";
            lblWelcomeMsg2.Text = "Sign up to be a chaperone for the event!";
        }
    }
}