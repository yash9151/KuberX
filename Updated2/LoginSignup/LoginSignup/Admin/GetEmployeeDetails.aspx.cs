using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup.Admin
{
    public partial class GetEmployeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //KuberXServiceReference.AdminClient client = new KuberXServiceReference.AdminClient();
            //KuberXServiceReference.SearchEmployeeModel model = client.searchemployeedetails();
            //Label1.Text = model.FirstName + " " + model.LastName;
            //Label3.Text = model.EmployeeID.ToString();
            //Label2.Text = model.OfficialEmail;
        }

        protected void btn_Logout(object sender, EventArgs e)
        {
        
        }
    }
}