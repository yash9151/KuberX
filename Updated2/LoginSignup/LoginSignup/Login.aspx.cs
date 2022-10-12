using LoginSignup;
using LoginSignup.KuberXServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        //public string getemailfromloginpage()
        //{
        //    return EmailTextbox.Text;
        //}

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (KuberXServiceReference.UserClient client = new KuberXServiceReference.UserClient())
                {
                    UserModel user = new UserModel();
                    user.Email = EmailTextbox.Text;
                    user.Password = Passwordtextbox.Text;
                    Application["emailfetched"] = EmailTextbox.Text;

                    bool isvalid = client.ValidateUser(user);
                    if (isvalid)
                    {
                        Response.Redirect("Backup/Vesperr/index.html");

                        //Response.Redirect("Backup/Vesperr/index.html@EmailTextbox="+this.EmailTextbox.Text);
                    }
                    else
                    {
                        Response.Write("<script>alert('Your Email or Password is invalid!');</script>");
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