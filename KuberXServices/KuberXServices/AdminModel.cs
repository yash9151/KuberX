using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace KuberXServices
{
    [DataContract]
    public class AdminModel
    {
        private string adm_email;
        private string adm_password;

        [DataMember(Order = 1)]
        public string adm_Email
        {
            get { return adm_email; }
            set { adm_email = value; }
        }

        [DataMember(Order = 2)]
        public string adm_Password
        {
            get { return adm_password; }
            set { adm_password = value; }
        }
    }
}