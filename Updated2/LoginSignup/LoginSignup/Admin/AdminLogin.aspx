<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LoginSignup.Admin.AdminLogin" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="../Helper/css/style.default.css" rel="stylesheet" />
    <link href="../Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                    
                        <div class="pr-lg-5">
                            <img src="../illustration.svg" alt="" class="img-fluid" />    
                        </div>
                    </div>
                    <div class="col-lg-5 px-lg-4">
                        <h1></h1><h1 class="text-base text-primary text-uppercase mb-4">Welcome Back! </h1>
                        <h2 class="mb-4">ADMIN LOGIN </h2>

                        <div class ="form-group mb-4">
                            <asp:TextBox required= "true" ID="adm_EmailTextbox" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>

                        </div>

                             <div class ="form-group mb-4">
                            <asp:TextBox required= "true"  ID="adm_Passwordtextbox" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

                        </div>
                        <div class="form-group mb-4">
                            <div class="custom-control custom-checkbox">
                                <asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" />
                            </div>
                        </div>
                        <%--<asp:Button Text="LOGIN" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" PostBackUrl="~/Pages/Skills_Profile.aspx"  />--%>
                        <a href="Vesperr/index.html">
                        <%--<input id="Button1" type="button" runat="server" class="btn btn-primary" value="LOGIN" />--%>
                     <asp:Button ID="Buttonlog" runat="server" CssClass="btn btn-primary" OnClick="Buttonadmlogin_Click" Text="LogIn" />

                            </a>
                        <br /><br />
                        <a href="../Login.aspx">Login as User!!</a>
                        <br />
                      
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

