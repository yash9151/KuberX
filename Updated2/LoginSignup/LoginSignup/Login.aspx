﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginSignup.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                    
                        <div class="pr-lg-5">
                            <img src="illustration.svg" alt="" class="img-fluid" />     
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <h1 class="text-base text-primary text-uppercase mb-4">Login Here</h1>
                        <h2 class="mb-4">Welcome Back!</h2>

                        <div class ="form-group mb-4">
                            <asp:TextBox ID="EmailTextbox" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ValidateRequestMode="Enabled" ></asp:TextBox>

                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Black" ErrorMessage="Email is Required!" ForeColor="Red" ControlToValidate="EmailTextbox"></asp:RequiredFieldValidator>--%>

                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextbox" ErrorMessage="Please Enter valid Email!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>

                        </div>

                             <div class ="form-group mb-4">
                            <asp:TextBox ID="Passwordtextbox" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

                                 <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required!" ForeColor="Red" ControlToValidate="Passwordtextbox"></asp:RequiredFieldValidator>--%>

                        </div>
                        <div class="form-group mb-4">
                            <div class="custom-control custom-checkbox">
                                <asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" />
                            </div>
                        </div>
                        <%--<asp:Button Text="LOGIN" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" PostBackUrl="~/Pages/Skills_Profile.aspx"  />--%>
                        <%--<a href="Backup/Vesperr/index.html">--%>  
                        <%--<input id="Button1" type="button" runat="server" class="btn btn-primary" value="LOGIN" />--%>
                         <%--<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Button" />--%>
                        <asp:Button ID="Buttonlog" runat="server" CssClass="btn btn-primary" OnClick="Buttonlogin_Click" Text="LogIn" />


                        <br />
                        <a href="Backup/Vesperr/index.html">  
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                            </a>
                        <br />
                        <a href="Signup.aspx">Don't have an Account? Register here!</a>
                        <br />
                         <a href="Admin/AdminLogin.aspx">Login As Admin. </a>

                    </div>
                </div>
                
               
                <footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100 " style="text-align:end;margin-top:100px">
                    <div class="container">
                        <div class="row">   
                            <div class="col-md-6 text-center text-md-left text-primary">
                                <p class  ="mb-2 mb-md-0">KuberX &copy;2022</p>
                            </div>
                            <div class="col-md-6 text-center text-md-right text-gray-400">
                                <p class="mb-0">DEsign by <a href="#">KuberX</a></p>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            
        </div>
    </form>
</body>
</html>
