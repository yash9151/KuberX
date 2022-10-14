using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup.Admin.Vesperr
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("GetEmployeeDetails.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}