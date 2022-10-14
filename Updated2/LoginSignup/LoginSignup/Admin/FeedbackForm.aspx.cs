using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSignup.Admin
{
    public partial class FeedbackForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitReview_Click(object sender, EventArgs e)
        {
            KuberXServiceReference.AdminFeedbackModel adminFeedback = new KuberXServiceReference.AdminFeedbackModel();
            adminFeedback.Employee_Name = Employee_Name.Text;
            adminFeedback.Employee_ID = Convert.ToInt32(Employee_ID.Text);
            adminFeedback.Skill1 = Skill1.Text + " " +  RadioButtonList1.SelectedValue.ToString();
            adminFeedback.Skill2 = Skill2.Text+ " " + RadioButtonList2.SelectedValue.ToString();
            adminFeedback.Skill3 = Skill3.Text + " " + RadioButtonList3.SelectedValue.ToString();
            adminFeedback.Skill4 = Skill4.Text + " " + RadioButtonList4.SelectedValue.ToString();
            adminFeedback.Skill5 = Skill5.Text + " " + RadioButtonList5.SelectedValue.ToString();
            adminFeedback.OtherSkills = OtherSkillstxtbox.Text;
            adminFeedback.RecommendedSkills = recommendedskillstxtbox.Text;
            adminFeedback.Result = Result.SelectedValue.ToString();
            adminFeedback.Communication=Communication.SelectedValue.ToString();




            KuberXServiceReference.AdminClient client = new KuberXServiceReference.AdminClient();
            client.InsertAdminFeedback(adminFeedback);
            ///done with frontend
            Response.Write("<script>alert('Feedback submitted Successfully');</script>");
            Server.Transfer("Admin_Profile.aspx");

        }
    }
}