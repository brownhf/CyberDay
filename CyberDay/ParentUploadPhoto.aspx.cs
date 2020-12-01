using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Data;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.Configuration; //Lets us access our Web.config file!

namespace CyberDay
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileUploadPermission.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fileUploadPermission.PostedFile.FileName);
                    string contentType = fileUploadPermission.PostedFile.ContentType;
                    int check;
                    using (Stream fs = fileUploadPermission.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);
                            using (SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["CyberDayDB"].ToString()))
                            {
                                string query = "Insert Into StudentPhotoReleaseForms Values(@Name, @ContentType, @Data, @StudentID)";
                                string queryCheck = "Select Count(1) From StudentPhotoReleaseForms Where StudentID = @StudentID";
                                using (SqlCommand cmdCheck = new SqlCommand(queryCheck, sqlCon))
                                {
                                    cmdCheck.Parameters.AddWithValue("@StudentID", ddlStudents.SelectedValue);
                                    sqlCon.Open();
                                    check = Convert.ToInt32(cmdCheck.ExecuteScalar());
                                    sqlCon.Close();
                                }
                                if (check == 1)
                                {
                                    lblError.Text = "This students form has already been uploaded";
                                }
                                else
                                {
                                    using (SqlCommand cmd = new SqlCommand(query, sqlCon))
                                    {
                                        cmd.Parameters.AddWithValue("@Name", filename);
                                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                                        cmd.Parameters.AddWithValue("@Data", bytes);
                                        cmd.Parameters.AddWithValue("@StudentID", ddlStudents.SelectedValue);

                                        sqlCon.Open();
                                        cmd.ExecuteNonQuery();
                                        sqlCon.Close();

                                        lblError.Text = "Success! Photo Release Form Uploaded!";

                                        //Send Confirmation Email
                                        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                                        mail.To.Add(txtConfirmEmail.Text);
                                        mail.From = new MailAddress("thisIsATestExample1234@gmail.com", "Permission Slip Successfully Uploaded", System.Text.Encoding.UTF8);
                                        mail.Subject = "Permission Form Successfully Uploaded";
                                        mail.SubjectEncoding = System.Text.Encoding.UTF8;
                                        mail.Body = "You have successfully uploaded a permission form for your student!";
                                        mail.BodyEncoding = System.Text.Encoding.UTF8;
                                        mail.IsBodyHtml = true;
                                        mail.Priority = MailPriority.High;
                                        SmtpClient client = new SmtpClient();
                                        client.Credentials = new System.Net.NetworkCredential("thisIsATestExample1234@gmail.com", "Dukes98!");
                                        client.Port = 587;
                                        client.Host = "smtp.gmail.com";
                                        client.EnableSsl = true;
                                        try
                                        {
                                            client.Send(mail);
                                        }
                                        catch (Exception ex)
                                        {
                                            Exception ex2 = ex;
                                            string errorMessage = string.Empty;
                                            while (ex2 != null)
                                            {
                                                errorMessage += ex2.ToString();
                                                ex2 = ex2.InnerException;
                                            }
                                        }

                                    }

                                }


                            }
                        }

                    }
                }
                catch
                {

                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ParentPhotoReleaseForm.aspx");
        }
    }
}