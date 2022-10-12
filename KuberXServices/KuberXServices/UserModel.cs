using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace KuberXServices
{
    [DataContract]
    public class UserModel
    {
        private string _email;
        private string _password;

        [DataMember(Order = 1)]
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        [DataMember(Order = 2)]
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
    }
}