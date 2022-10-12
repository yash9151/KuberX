using LoginSignup.KuberXServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonadmlogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (KuberXServiceReference.AdminClient client = new KuberXServiceReference.AdminClient())
                {
                    AdminModel admin = new AdminModel();
                    admin.adm_Email = adm_EmailTextbox.Text;
                    admin.adm_Password = adm_Passwordtextbox.Text;
                    Application["emailfetched"] = adm_EmailTextbox.Text;

                    bool isvalid = client.ValidateAdmin(admin);
                    if (isvalid)
                    {
                        Response.Redirect("/Admin/Vesperr/index.html");

                        //Response.Redirect("Backup/Vesperr/index.html@EmailTextbox="+this.EmailTextbox.Text);
                    }
                    else
                    {
                        Response.Write("<script>alert('Your Admin Email or Password is invalid!');</script>");
                    }
                }



            }
            catch (Exception ex)
            {
                //ExceptionLogging.SendErrorToText(ex);
                Response.Write("<script>alert('Some Technical Error occurred,Please visit after some time');</script>");
            }
        }
    }
}