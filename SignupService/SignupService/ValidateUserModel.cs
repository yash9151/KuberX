using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace SignupService
{
    [DataContract]
    public class ValidateUserModel
    {
        private string _emailId;
        private string _password;

        [DataMember]
        public string EmailId
        {
            get { return _emailId; }
            set { _emailId = value; }
        }

        [DataMember]
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
    }
}
