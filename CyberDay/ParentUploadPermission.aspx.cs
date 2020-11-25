using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration; //Lets us access our Web.config file!

namespace CyberDay
{
    public partial class WebForm1 : System.Web.UI.Page
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
                                string query = "Insert Into StudentPermissionForms Values(@Name, @ContentType, @Data, @StudentID)";
                                string queryCheck = "Select Count(1) From StudentPermissionForms Where StudentID = @StudentID";
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

                                        lblError.Text = "Success! CyberDay Permission Form Uploaded!";
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