using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcomeMessage.Text = "Want to help make Cyber Day even better?!";
            lblWelcomeMsg2.Text = "Sign up below as a chaperone!";
        }
    }
}