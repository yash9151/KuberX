using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
namespace KuberXServices
{
    [ServiceContract]
    public interface IRegistration
    {

        [OperationContract]
        bool SaveUser(registrationmodel registration);


        [OperationContract]
        registrationmodel GetDetails(string Official_Email);



        //List<registrationmodel> GetDetails();
        //[OperationContract]
        //object GetPDF(int fileId);
    }
}
