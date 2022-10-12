using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;


namespace KuberXServices
{
    [DataContract]
    public class AdminFeedbackModel
    {
        [DataMember]
        public string Employee_Name { get; set; }

        [DataMember]
        public int Employee_ID { get; set; }

        [DataMember]
        public string  Skill1 { get; set; }

        [DataMember]
        public string  Skill2 { get; set; }

        [DataMember]
        public string Skill3 { get; set; }

        [DataMember]
        public string Skill4 { get; set; }

        [DataMember]
        public string Skill5 { get; set; }

        [DataMember]
        public string Communication { get; set; }

        [DataMember]
        public string OtherSkills { get; set; }

        [DataMember]
        public string RecommendedSkills { get; set; }

        [DataMember]
        public string Result { get; set; }

    }
}