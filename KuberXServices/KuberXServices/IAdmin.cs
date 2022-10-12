using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace KuberXServices
{
    [ServiceContract]
    internal interface IAdmin
    {

        [OperationContract]
        bool ValidateAdmin(AdminModel admin);

        [OperationContract]
        GetAdminDetailsModel GetAdminDetails(string adm_Official_Email);

        [OperationContract]
        bool InsertAdminFeedback(AdminFeedbackModel feedback);
    }
}
