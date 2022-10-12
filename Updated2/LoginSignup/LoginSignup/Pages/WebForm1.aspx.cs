using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
                hyperlink.Visible = false;
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".pdf" || fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                string cs = ConfigurationManager.ConnectionStrings["DBCS1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spUploadImage", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter paramName = new SqlParameter()
                    {
                        ParameterName = "@Name",
                        Value = filename
                    };
                    cmd.Parameters.Add(paramName);

                    SqlParameter paramSize = new SqlParameter()
                    {
                        ParameterName = "@Size",
                        Value = fileSize
                    };
                    cmd.Parameters.Add(paramSize);

                    SqlParameter paramImageData = new SqlParameter()
                    {
                        ParameterName = "@ImageData",
                        Value = bytes
                    };
                    cmd.Parameters.Add(paramImageData);

                    SqlParameter paramNewId = new SqlParameter()
                    {
                        ParameterName = "@NewId",
                        Value = -1,
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(paramNewId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Upload Successful";
                    hyperlink.Visible = true;
                    hyperlink.NavigateUrl = "~/WebForm2.aspx?Id=" +
                        cmd.Parameters["@NewId"].Value.ToString();
                }
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Only images (.jpg, .png,.pdf,.jpeg, .gif and .bmp) can be uploaded";
                hyperlink.Visible = false;
            }
        }
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    if (FileUpload1.HasFile)
    //    {
    //        string fileName = FileUpload1.FileName;
    //        FileUpload1.PostedFile
    //            .SaveAs(Server.MapPath("~/Data/") + fileName);
    //    }

    //    DataTable dt = new DataTable();
    //    dt.Columns.Add("File");
    //    dt.Columns.Add("Size");
    //    dt.Columns.Add("Type");

    //    foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data")))
    //    {
    //        FileInfo fi = new FileInfo(strfile);
    //        dt.Rows.Add(fi.Name, fi.Length.ToString(),
    //            GetFileTypeByExtension(fi.Extension));
    //    }

    //    GridView1.DataSource = dt;
    //    GridView1.DataBind();
    //}
    //private string GetFileTypeByExtension(string fileExtension)
    //{
    //    switch (fileExtension.ToLower())
    //    {
    //        case ".docx":
    //        case ".doc":
    //            return "Microsoft Word Document";
    //        case ".xlsx":
    //        case ".xls":
    //            return "Microsoft Excel Document";
    //        case ".txt":
    //            return "Text Document";
    //        case ".jpg":
    //        case ".png":
    //            return "Image";
    //        default:
    //            return "Unknown";
    //    }
    //}

    //protected void GridView1_RowCommand(object sender,
    //    GridViewCommandEventArgs e)
    //{
    //    Response.Clear();
    //    Response.ContentType = "application/octet-stream";
    //    Response.AppendHeader("Content-Disposition", "filename="
    //        + e.CommandArgument);
    //    Response.TransmitFile(Server.MapPath("~/Data/")
    //        + e.CommandArgument);
    //    Response.End();
    //}

    //protected void btnUpload_Click(object sender, EventArgs e)
    //    {

    //    }
    //}
}