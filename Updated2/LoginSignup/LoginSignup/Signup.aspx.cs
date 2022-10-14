using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {

        }

        protected void signupclick(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
            Response.Write("<script>alert('User Registered Successfully');</script>");
        }

        protected void btn_Register(object sender, EventArgs e)
        {
            KuberXServiceReference.registrationmodel signUp =new KuberXServiceReference.registrationmodel();
            signUp.FirstName = FirstName.Text;
            signUp.LastName = LastName.Text;
            signUp.EmployeeID = Convert.ToInt32(EmployeeID.Text);
            signUp.OfficialEmail = OfficialEmail.Text;
            signUp.Password = Password.Text;

            KuberXServiceReference.RegistrationClient client =new KuberXServiceReference.RegistrationClient();
            client.SaveUser(signUp);
            ///done with frontend
            Response.Write("<script>alert('User Registered Successfully');</script>");
            Server.Transfer("Login.aspx");
        }
    }
}