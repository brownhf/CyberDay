using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CyberDay
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblWelcomeText.Text = "Welcome Parents! Thank you for \n" +
                  " deciding to make your child a part of Cyber Day! \n" +
                  " We are beyond excited to provide your child with a \n" +
                  " technology filled day. With the help of students \n" +
                  "in our CIS major, your child will participate in a \n" +
                  " variety of technical events that will further grow their \n" +
                  " curiosity and knowledge. Thank you parents!";

            lblChaperoneText.Text = "We would love to have you as a chaperone! \n" +
                "Use the chaperone link in the menu to sign up! \n" +
                "All chaperones recieve a free T-Shirt and meal!";
        }
    }
}