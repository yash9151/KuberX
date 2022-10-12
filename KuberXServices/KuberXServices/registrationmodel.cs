using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
namespace KuberXServices
{
    [DataContract]
    public class registrationmodel
    {
        private string _firstname;
        private string _lastname;
        private int _employeeid;
        private string _officialemail;
        private string _password;

      

        [DataMember(Order = 1)]
        public string FirstName
        {
            get { return _firstname; }
            set { _firstname = value; }
        }
        [DataMember(Order = 2)]
        public string LastName
        {
            get { return _lastname; }
            set { _lastname = value; }
        }
        [DataMember(Order = 3)]
        public int EmployeeID
        {
            get { return _employeeid; }
            set { _employeeid = value; }
        }
        [DataMember(Order = 4)]
        public string OfficialEmail
        {
            get { return _officialemail; }
            set { _officialemail = value; }
        }
        [DataMember(Order = 5)]
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

    }
}