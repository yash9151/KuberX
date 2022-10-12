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
    public partial class Skills_Profile : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    KuberXServiceReference.registrationmodel registrationmodel = new KuberXServiceReference.registrationmodel();
        //    try
        //    {
        //        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //        using (SqlConnection con = new SqlConnection(cs))
        //        {
        //            SqlCommand cmd = new SqlCommand("spGetDetails", con);
        //            cmd.CommandType = CommandType.StoredProcedure;
        //            cmd.Parameters.AddWithValue("@officialemail", registrationmodel.OfficialEmail);
        //            if (con.State == ConnectionState.Closed)
        //            {
        //                con.Open();
        //            }
        //            cmd.Parameters.Add("@response", SqlDbType.Bit, 250);
        //            cmd.Parameters["@response"].Direction = ParameterDirection.Output;
        //            cmd.ExecuteNonQuery();
        //            bool result = (bool)cmd.Parameters["@response"].Value;

        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        //ExceptionLogging.SendErrorToText(ex);
        //        throw ex;
        //    }
        //}


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Application["emailfetched"] != null)
            {
                string emailfetched = Application["emailfetched"].ToString();
                //string emailfetched=Request.QueryString["EmailTextbox"];
                KuberXServiceReference.RegistrationClient client = new KuberXServiceReference.RegistrationClient();
                KuberXServiceReference.registrationmodel model = client.GetDetails(emailfetched);
                Label1.Text = model.FirstName + " " + model.LastName;
                Label3.Text = model.EmployeeID.ToString();
                Label2.Text = model.OfficialEmail;
                

            }
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
                hyperlink.Visible = false;
            }
            //if (!IsPostBack)
            //{
            //    BindGridviewData();
            //}
            //if(!IsPostBack)
            //{
            //    BindGrid();
            //}

            //Page loginpage = (Page)Context.Handler;
            //string emailfetched=(loginpage.FindControl("EmailTextbox")).ToString();
            //string emailfetched=Request.QueryString["EmailTextbox"];
            //KuberXServiceReference.RegistrationClient client = new KuberXServiceReference.RegistrationClient();
            //KuberXServiceReference.registrationmodel model = client.GetDetails(emailfetched);
            //Label1.Text = model.FirstName + model.LastName;
            //Label2.Text = model.EmployeeID.ToString();
            //Label3.Text = model.OfficialEmail;

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string emailfetched = Application["emailfetched"].ToString();
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
                        ParameterName = @"Name",
                        Value = filename
                    };
                    cmd.Parameters.Add(paramName);

                    SqlParameter paramOfficial_Email = new SqlParameter()
                    {
                        ParameterName = @"Official_Email",
                        Value = emailfetched
                    };
                    cmd.Parameters.Add(paramOfficial_Email);

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
                    hyperlink.NavigateUrl = "WebForm2.aspx?Id=" +
                        cmd.Parameters["@NewId"].Value.ToString();
                }
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
                hyperlink.Visible = false;
            }
        }
    
        protected void btn_Logout(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Successfully Logged out!!');</script>");
            Server.Transfer("/Login.aspx");
        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //}


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

        protected void Upload(object sender, EventArgs e)
        {

        }


        //private SqlConnection con = new SqlConnection("Data Source=SureshDasari;Integrated Security=true;Initial Catalog=MySampleDB");
        //private void BindGridviewData()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from FilesTable", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    con.Close();
        //    gvDetails.DataSource = ds;
        //    gvDetails.DataBind();
        //}
        //protected void btnUpload_Click(object sender, EventArgs e)
        //{
        //    string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);
        //    fileUpload1.SaveAs(Server.MapPath("Files/" + filename));
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("insert into FilesTable(FileName,FilePath) values(@Name,@Path)", con);
        //    cmd.Parameters.AddWithValue("@Name", filename);
        //    cmd.Parameters.AddWithValue("@Path", "Files/" + filename);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    BindGridviewData();
        //}
        //protected void lnkDownload_Click(object sender, EventArgs e)
        //{
        //    LinkButton lnkbtn = sender as LinkButton;
        //    GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        //    string filePath = gvDetails.DataKeys[gvrow.RowIndex].Value.ToString();
        //    Response.ContentType = "image/jpg";
        //    Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
        //    Response.TransmitFile(Server.MapPath(filePath));
        //    Response.End();
        //}
        //protected void Upload(object sender, EventArgs e)
        //{
        //    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        //    string contentType = FileUpload1.PostedFile.ContentType;
        //    using (Stream fs = FileUpload1.PostedFile.InputStream)
        //    {
        //        using (BinaryReader br = new BinaryReader(fs))
        //        {
        //            byte[] bytes = br.ReadBytes((Int32)fs.Length);
        //            string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //            using (SqlConnection con = new SqlConnection(constr))
        //            {
        //                string query = "INSERT INTO FileUpload VALUES (@File, @Name, @ContentType)";
        //                using (SqlCommand cmd = new SqlCommand(query))
        //                {
        //                    cmd.Connection = con;
        //                    cmd.Parameters.AddWithValue("@Name", filename);
        //                    cmd.Parameters.AddWithValue("@ContentType", contentType);
        //                    cmd.Parameters.AddWithValue("@File", bytes);
        //                    con.Open();
        //                    cmd.ExecuteNonQuery();
        //                    con.Close();
        //                }
        //            }
        //        }
        //    }

        //    Response.Redirect(Request.Url.AbsoluteUri);
        //}

        //protected void BindGrid()
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand())
        //        {
        //            cmd.CommandText = "SELECT Friendly_ID, Name FROM FileUpload";
        //            cmd.Connection = con;
        //            con.Open();
        //            gvFiles.DataSource = cmd.ExecuteReader();
        //            gvFiles.DataBind();
        //            con.Close();
        //        }
        //    }
        //}
    }
}