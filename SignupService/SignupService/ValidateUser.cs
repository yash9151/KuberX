using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SignupService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ValidateUser" in both code and config file together.
    public class ValidateUser : IValidateUser
    {
        public bool ValidateUserLogin(ValidateUserModel ValidateUser)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(cs))
                {

                    SqlCommand cmd = new SqlCommand("spValidateUsers", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@EmailId", ValidateUser.EmailId);
                    cmd.Parameters.AddWithValue("@Password", ValidateUser.Password);
                    SqlParameter outputPara = new SqlParameter();
                    outputPara.ParameterName = "@Status";
                    outputPara.Direction = System.Data.ParameterDirection.Output;
                    outputPara.SqlDbType = System.Data.SqlDbType.Bit;
                    cmd.Parameters.Add(outputPara);
                    //cmd.Parameters.Add("@Status", SqlDbType.Bit, 250);
                    //cmd.Parameters["@Status"].Direction = ParameterDirection.Output;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    //bool result = (bool)cmd.Parameters["@Status"].Value;
                    //bool RetrievedEmpId = (bool)outputPara.Value;
                    bool isUserValidationSuccess = (bool)outputPara.Value;
                    return isUserValidationSuccess;

                }
            }
            catch (Exception ex)
            {
                //ExceptionLogging.SendErrorToText(ex);
                throw ex;
            }
        }
    }
}
