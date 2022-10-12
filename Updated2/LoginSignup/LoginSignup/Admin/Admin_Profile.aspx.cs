using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup.Admin
{
    public partial class Admin_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["emailfetched"] != null)
            {
                string emailfetched = Application["emailfetched"].ToString();
                //string emailfetched=Request.QueryString["EmailTextbox"];
                KuberXServiceReference.AdminClient client = new KuberXServiceReference.AdminClient();
                KuberXServiceReference.GetAdminDetailsModel model = client.GetAdminDetails(emailfetched);
                Label1.Text = model.adm_FirstName + " " + model.adm_LastName;
                Label3.Text = model.adm_AdminID.ToString();
                Label2.Text = model.adm_OfficialEmail;


            }
        }

        protected void btn_Logout(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Successfully Logged out!!');</script>");
            Server.Transfer("/Admin/AdminLogin.aspx");
        }
    }
}