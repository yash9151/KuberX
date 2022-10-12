using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace KuberXServices
{
    [ServiceContract]
    public interface IUser
    {
        [OperationContract]
        bool ValidateUser(UserModel user);
    }
}