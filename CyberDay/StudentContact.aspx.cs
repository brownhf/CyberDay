using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;


namespace CyberDay
{
    public partial class StudentContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendbttn_Click(object sender, EventArgs e)
        {
            try
             {


                string credEmail = "thisIsATestExample1234@gmail.com";
                string credPasswd = "Dukes98!";
                MailMessage message = new MailMessage();
                message.From = new MailAddress(credEmail,fromtxt.Text);
              
                message.To.Add("lopriesn@dukes.jmu.edu");
                message.Subject = "Subject: " + subjecttxt.Text;
                message.Body = mesgtxt.Text;
                message.IsBodyHtml = false;
                message.ReplyToList.Add(fromtxt.Text);

                SmtpClient smtpClient = new SmtpClient("smtpserver");
                smtpClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;

                smtpClient.UseDefaultCredentials = false;
                //MUST SET CREDENTIALS EMAIL TO ALLOW LESS SECURE APPS 
                smtpClient.Credentials = new System.Net.NetworkCredential(credEmail, credPasswd);
               
                smtpClient.EnableSsl = true;
                smtpClient.Send(message);
                MessageBox.Show("Your email has been sent!");

                fromtxt.Text = "";
                subjecttxt.Text = "";
                mesgtxt.Text = "";
            }

            catch
            {
                MessageBox.Show("Something went wrong, please try again");
            }

           
        }
    }
}