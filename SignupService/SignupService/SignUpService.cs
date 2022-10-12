using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SignupService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "SignUpService" in both code and config file together.
    public class SignUpService : ISignUpService
    {
        public void Save_SignUp(SignUp signup)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spSignUp", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameterFirstName = new SqlParameter
                {
                    ParameterName = "@FirstName",
                    Value = signup.FirstName
                };
                cmd.Parameters.Add(parameterFirstName);

                SqlParameter parameterLastName = new SqlParameter
                {
                    ParameterName = "@LastName",
                    Value = signup.LastName
                };
                cmd.Parameters.Add(parameterLastName);

                SqlParameter parametersEmployeeID = new SqlParameter
                {
                    ParameterName = "@EmployeeID",
                    Value = signup.EmployeeID
                };
                cmd.Parameters.Add(parametersEmployeeID);

                SqlParameter parameterOfficialEmail = new SqlParameter
                {
                    ParameterName = "@OfficialEmail",
                    Value = signup.OfficialEmail
                };
                cmd.Parameters.Add(parameterOfficialEmail);

                SqlParameter parameterPassword = new SqlParameter
                {
                    ParameterName = "@Password",
                    Value = signup.Password
                };
                cmd.Parameters.Add(parameterPassword);

                //SqlParameter parameterConfirmPassword = new SqlParameter
                //{
                //    ParameterName = "@ConfirmPassword",
                //    Value = ConfirmPassword
                //};
                //cmd.Parameters.Add(parameterConfirmPassword);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
