using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SignupService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IValidateUser" in both code and config file together.
    [ServiceContract]
    public interface IValidateUser
    {
        [OperationContract]
        bool ValidateUserLogin(ValidateUserModel ValidateUser);

    }
}
