using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace KuberXServices
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IUser,IRegistration, IAdmin
    {
        public bool ValidateUser(UserModel user)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spValidateUsers", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@EmailId", user.Email);
                    cmd.Parameters.AddWithValue("@Password", user.Password);
                    cmd.Parameters.Add("@Status", SqlDbType.Bit, 250);
                    cmd.Parameters["@Status"].Direction = ParameterDirection.Output;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    bool result = (bool)cmd.Parameters["@Status"].Value;
                    return result;
                }
                catch (Exception ex)
                {
                    //ExceptionLogging.SendErrorToText(ex);
                    throw ex;
                }
            }
        }

        public registrationmodel GetDetails(string Official_Email)
        {
            registrationmodel model = new registrationmodel();
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spGetDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameterId = new SqlParameter();
                parameterId.ParameterName = "@Official_Email";
                parameterId.Value = Official_Email;
                cmd.Parameters.Add(parameterId);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    model.FirstName = reader["First_Name"].ToString();
                    model.LastName = reader["Last_Name"].ToString();
                    model.OfficialEmail = reader["Official_Email"].ToString();
                    model.EmployeeID = Convert.ToInt32(reader["Employee_ID"]);
                }
            }
            return model;
        }

        public GetAdminDetailsModel GetAdminDetails(string adm_Official_Email)
        {
            GetAdminDetailsModel model = new GetAdminDetailsModel();
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spAdminGetDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameterId = new SqlParameter();
                parameterId.ParameterName = "@adm_Official_Email";
                parameterId.Value = adm_Official_Email;
                cmd.Parameters.Add(parameterId);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    model.adm_FirstName = reader["adm_First_Name"].ToString();
                    model.adm_LastName = reader["adm_Last_Name"].ToString();
                    model.adm_OfficialEmail = reader["adm_Official_Email"].ToString();
                    model.adm_AdminID = Convert.ToInt32(reader["adm_Employee_ID"]);
                }
            }
            return model;
        }

        //public object GetPDF(int fileId)
        //{
        //    byte[] bytes;
        //    string fileName, contentType;
        //    string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand())
        //        {
        //            cmd.CommandText = "SELECT Name, File, ContentType FROM FileUpload WHERE Friendly_ID = @Friendly_ID";
        //            cmd.Parameters.AddWithValue("@Friendly_ID", fileId);
        //            cmd.Connection = con;
        //            con.Open();
        //            using (SqlDataReader sdr = cmd.ExecuteReader())
        //            {
        //                sdr.Read();
        //                bytes = (byte[])sdr["File"];
        //                contentType = sdr["ContentType"].ToString();
        //                fileName = sdr["Name"].ToString();
        //            }
        //            con.Close();
        //        }
        //    }

        //    return new { FileName = fileName, ContentType = contentType, Data = bytes };
        //}

        //public List<registrationmodel> GetDetails(string Official_Email)
        //{
        //    try
        //    {
        //        List<registrationmodel> details = new List<registrationmodel>();
        //        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        //        using (SqlConnection con = new SqlConnection(cs))
        //        {
        //            SqlCommand cmd = new SqlCommand("spGetDetails", con);
        //            {
        //                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
        //                {
        //                    cmd.CommandType = CommandType.StoredProcedure;
        //                    DataSet ds = new DataSet();
        //                    da.Fill(ds);
        //                    if (ds.Tables.Count > 0)
        //                    {
        //                        foreach (DataRow dr in ds.Tables[0].Rows)
        //                        {
        //                            details.Add(new registrationmodel
        //                            {
        //                                FirstName = dr["First_Name"].ToString(),
        //                                LastName = dr["Last_Name"].ToString(),
        //                                EmployeeID = Convert.ToInt32(dr["Employee_ID"]),
        //                                OfficialEmail = dr["Official_Email"].ToString()
        //                            });
        //                        }
        //                    }

        //                }
        //            }
        //            return details;
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        //ExceptionLogging.SendErrorToText(ex);
        //        throw ex;
        //    }
        //}

        public bool SaveUser(registrationmodel registration)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("InsertRegistration", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter parameterFirstName = new SqlParameter
                    {
                        ParameterName = "@FirstName",
                        Value = registration.FirstName
                    };
                    cmd.Parameters.Add(parameterFirstName);

                    SqlParameter parameterLastName = new SqlParameter
                    {
                        ParameterName = "@LastName",
                        Value = registration.LastName
                    };
                    cmd.Parameters.Add(parameterLastName);

                    SqlParameter parameterEmployeeID = new SqlParameter
                    {
                        ParameterName = "@Employee_ID",
                        Value = registration.EmployeeID
                    };
                    cmd.Parameters.Add(parameterEmployeeID);

                    SqlParameter parameterOfficialEmail = new SqlParameter
                    {
                        ParameterName = "@Official_Email",
                        Value = registration.OfficialEmail
                    };
                    cmd.Parameters.Add(parameterOfficialEmail);

                    SqlParameter parameterPassword = new SqlParameter
                    {
                        ParameterName = "@Password",
                        Value = registration.Password
                    };
                    cmd.Parameters.Add(parameterPassword);

                   

                    cmd.Parameters.Add("@responseMessage", SqlDbType.Bit, 250);
                    cmd.Parameters["@responseMessage"].Direction = ParameterDirection.Output;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    bool result = (bool)cmd.Parameters["@responseMessage"].Value;
                    return result;
                }

            }
            catch (Exception ex)
            {
                //ExceptionLogging.SendErrorToText(ex);
                throw ex;
            }

        }

        public bool ValidateAdmin(AdminModel admin)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("spValidateAdmins", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@adm_EmailId", admin.adm_Email);
                    cmd.Parameters.AddWithValue("@adm_Password", admin.adm_Password);
                    cmd.Parameters.Add("@adm_Status", SqlDbType.Bit, 250);
                    cmd.Parameters["@adm_Status"].Direction = ParameterDirection.Output;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    bool result = (bool)cmd.Parameters["@adm_Status"].Value;
                    return result;
                }
                catch (Exception ex)
                {
                    //ExceptionLogging.SendErrorToText(ex);
                    throw ex;
                }
            }
        }

        public bool InsertAdminFeedback(AdminFeedbackModel feedback)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spAdminFeedback", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter parameterName = new SqlParameter
                    {
                        ParameterName = "@Employee_Name",
                        Value = feedback.Employee_Name
                    };
                    cmd.Parameters.Add(parameterName);

                    SqlParameter parameterEmployee_ID = new SqlParameter
                    {
                        ParameterName = "@Employee_ID",
                        Value = feedback.Employee_ID
                    };
                    cmd.Parameters.Add(parameterEmployee_ID);

                    SqlParameter parameterSkill1 = new SqlParameter
                    {
                        ParameterName = "@Skill1",
                        Value = feedback.Skill1
                    };
                    cmd.Parameters.Add(parameterSkill1);

                    SqlParameter parameterSkill2 = new SqlParameter
                    {
                        ParameterName = "@Skill2",
                        Value = feedback.Skill2
                    };
                    cmd.Parameters.Add(parameterSkill2);

                    SqlParameter parameterSkill3 = new SqlParameter
                    {
                        ParameterName = "@Skill3",
                        Value = feedback.Skill3
                    };
                    cmd.Parameters.Add(parameterSkill3);

                    SqlParameter parameterSkil4 = new SqlParameter
                    {
                        ParameterName = "@Skill4",
                        Value = feedback.Skill4
                    };
                    cmd.Parameters.Add(parameterSkil4);

                    SqlParameter parameterSkill5 = new SqlParameter
                    {
                        ParameterName = "@Skill5",
                        Value = feedback.Skill5
                    };
                    cmd.Parameters.Add(parameterSkill5);



                    SqlParameter parameterCommunication = new SqlParameter
                    {
                        ParameterName = "@Communication",
                        Value = feedback.Communication
                    };
                    cmd.Parameters.Add(parameterCommunication);

                    SqlParameter parameterOtherSkills = new SqlParameter
                    {
                        ParameterName = "@OtherSkills",
                        Value = feedback.OtherSkills
                    };
                    cmd.Parameters.Add(parameterOtherSkills);

                    SqlParameter parameterRecommendedSkills = new SqlParameter
                    {
                        ParameterName = "@RecommendedSkills",
                        Value = feedback.RecommendedSkills
                    };
                    cmd.Parameters.Add(parameterRecommendedSkills);

                    SqlParameter parameterResult = new SqlParameter
                    {
                        ParameterName = "@Result",
                        Value = feedback.Result
                    };
                    cmd.Parameters.Add(parameterResult);
                    cmd.Parameters.Add("@responseMessage", SqlDbType.Bit, 250);
                    cmd.Parameters["@responseMessage"].Direction = ParameterDirection.Output;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    bool result = (bool)cmd.Parameters["@responseMessage"].Value;
                    return result;
                }

            }
            catch (Exception ex)
            {
                //ExceptionLogging.SendErrorToText(ex);
                throw ex;
            }
        }

        public SearchEmployeeModel searchemployeedetails(int employeeid)
        {
            SearchEmployeeModel model = new SearchEmployeeModel();
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spSearchEmployeeDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameterId = new SqlParameter();
                parameterId.ParameterName = "@Employee_ID";
                parameterId.Value = employeeid; 
                cmd.Parameters.Add(parameterId);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    model.FirstName = reader["First_Name"].ToString();
                    model.LastName = reader["Last_Name"].ToString();
                    model.OfficialEmail = reader["Official_Email"].ToString();
                    model.EmployeeID = Convert.ToInt32(reader["Employee_ID"]);
                    model.Image = reader["ImageData"].ToString();
                }
            }
            return model;
        }
        ///////////////////////////////////////////////////////////////////Admin////////////////////////////
        ///////////////////////////////////////////////////////////////////Admin////////////////////////////
    }
}
