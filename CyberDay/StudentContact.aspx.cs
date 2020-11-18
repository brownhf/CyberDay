using System;
using System.Net.Mail;
using System.Windows;

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

                MailMessage message = new MailMessage();
                message.From = new MailAddress(fromtxt.Text);
                message.To.Add("lopriesn@dukes.jmu.edu");
                message.To.Add("sloprieno98@gmail.com");
                message.Subject = "Subject: " + subjecttxt.Text;
                message.Body = mesgtxt.Text;
                message.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;

                smtpClient.UseDefaultCredentials = false;
                //MUST SET CREDENTIALS EMAIL TO ALLOW LESS SECURE APPS 
                smtpClient.Credentials = new System.Net.NetworkCredential("thisisatestexample1234@gmail.com", "Dukes98!");
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