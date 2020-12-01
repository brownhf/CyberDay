using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace CyberDay
{
    public partial class StudentUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uploadbttn_Click(object sender, EventArgs e)
        {

            string sqlConnect = WebConfigurationManager.ConnectionStrings["CyberDayDB"].ConnectionString;





          try
           {
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string contentType = FileUpload1.PostedFile.ContentType;
                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);

                        using (SqlConnection con = new SqlConnection(sqlConnect))
                        {
                        

                        string query = "INSERT INTO ProjectUploads VALUES (@Project_Name, @FileType, @DataFile, @Comments, @Date, @StudentID)";
                       



                        using (SqlCommand cmd = new SqlCommand(query,con))
                            {
                                
                                cmd.Parameters.AddWithValue("@Project_Name", filename);
                                cmd.Parameters.AddWithValue("@FileType", contentType);
                                cmd.Parameters.AddWithValue("@DataFile", bytes);
                                cmd.Parameters.AddWithValue("@Comments", cmmttxt.Text);
                                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("yyyy-MM-dd h:mm:ss tt"));
                                cmd.Parameters.AddWithValue("@StudentID", studentDDL.SelectedValue);
                                
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                        }
                    }
                }

                StatusLabel.ForeColor = System.Drawing.Color.Green;
                StatusLabel.Text = "File uploaded successfully.";
                cmmttxt.Text = "";
                

            }

            catch
            {
                StatusLabel.ForeColor = System.Drawing.Color.Red;
                StatusLabel.Text = "Oops, something wen wrong.. Please try again";
            }



        }

        protected void browsebttn_Click(object sender, EventArgs e)
        {

        }
    }
}