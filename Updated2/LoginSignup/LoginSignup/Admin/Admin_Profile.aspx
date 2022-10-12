<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Profile.aspx.cs" Inherits="LoginSignup.Admin.Admin_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<%--<head runat="server">
    <link href="../Helper/css/Timesheet.css" rel="stylesheet" />
    <title></title>
</head>--%>
<head>
    <%--<link href="../Helper/css/Timesheet.css" rel="stylesheet" />--%>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Kuber X Bootstrap Template - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <%--<link href="assets/css/style.css" rel="stylesheet">--%>
    <link href="../Backup/Vesperr/assets/css/style.css" rel="stylesheet" />
    <link href="../Helper/css/style.default.css" rel="stylesheet" />
    <link href="../Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Helper/css/style.default.css" rel="stylesheet" />
    <!-- =======================================================
    * Template Name: Kuber X - v4.9.0
    * Template URL: https://bootstrapmade.com/Kuber X-free-bootstrap-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <link href="../Helper/css/skillprofile.css" rel="stylesheet" />
    <link href="../Helper/css/SkillProfileresumeupload.css" rel="stylesheet" />
    <style type="text/css">
        .modalBackground
        {
        background-color: Gray;
        filter: alpha(opacity=80);
        opacity: 0.8;
        z-index: 10000;
        }

        .GridviewDiv {font-size: 100%; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helevetica, sans-serif; color: #303933;}
        Table.Gridview{border:solid 1px #df5015;}
        .Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}
        .Gridview td{border-bottom-color:#f0f2da;border-right-color:#f0f2da;padding:0.5em 0.5em 0.5em 0.5em;}
        .Gridview tr{color: Black; background-color: White; text-align:left}
        :link,:visited { color: #DF4F13; text-decoration:none }

        .auto-style1 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 25%;
            flex: 0 0 25%;
            max-width: 25%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }

     </style>
</head>
<form id="form1" runat="server">
<header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

        <div class="logo">
            <h1><a href="index.html">Kuber X</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        </div>

        <nav id="navbar" class="navbar">
            <ul>
                <%--<li><a class="nav-link scrollto active" href="#hero">------------------------------------------------------------------------</a></li>--%>
                <ul>
                      <%--<a class="getstarted scrollto" href="index.html">Home</a>--%>
                    <a class="getstarted scrollto" href="Vesperr/index.html">Home</a>
                      <!--<a class="getstarted scrollto" href="index.html">index.html</a>-->
                  </ul>
                  <ul>
                         <asp:Button cssClass="getstarted scrollto" runat="server" Text="Logout" OnClick="btn_Logout"  />
                      <!--<a class="getstarted scrollto" href="index.html">index.html</a>-->
                 </ul>
                  
                 <%--<a class="getstarted scrollto" href="../Backup/Vesperr/index.html">Home</a>--%><%--<a class="getstarted scrollto" href="#">LogOut</a>--%><%--</li>--%>                <%--<li><a class="getstarted scrollto" href="#about">Home</a></li>--%>
            </ul>   
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->


    </div>
          
</header>
<body>
    <br />
    <br />
    <br />      
    <br />      
    <br />
    <div class="box ">
        <%--<img style='margin: 0 height: 20%; width: 100%; object-fit: contain' src="../Helper/img/Profile.png" />--%>

    </div>

    <div class="container">
    <div class="main-body">
         
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
                <%--  <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item"><a href="javascript:void(0)">User</a></li>--%>
              <h2><li class="breadcrumb-item active" aria-current="page">My Account</li></h2    >
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150"><br />
                      <asp:Label ID="AdminName" runat="server" Text="Label"></asp:Label>
&nbsp;<div class="mt-3">
                          <%--<h4>John Doe</h4>--%><%--                      <p class="text-secondary mb-1">Full Stack Developer</p>
                      <p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
                      <button class="btn btn-primary">Follow</button>--%>
                      <button class="btn btn-outline-primary">Upload Image</button>
                    </div>
                  </div>
                </div>
              </div>
                <%-- <div class="card mt-3">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                    <span class="text-secondary">https://bootdey.com</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                    <span class="text-secondary">@bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                </ul>
              </div>--%>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="auto-style1">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Admin ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>
                  
                <%--  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mobile</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>--%>
                  <hr>
                  <div class="row">
                      <%--<div class="col-sm-12">--%><%--<a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit</a>--%><%--<asp:Button ID="Button1"  runat="server" Text="Upload Resume" />--%>
                        <div class="col-sm-3">
                              <h6 class="mb-0">&nbsp;</h6>
                         </div>
                        <%--<div class="col-sm-9 text-secondary" id="GridView1">--%> 

                   <%--   <div style="font-family:Arial">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Button ID="Button1" runat="server" Text="Upload" 
                                OnClick="Button1_Click" />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                OnRowCommand="GridView1_RowCommand" BackColor="White" 
                                BorderColor="#CC9966" BorderStyle="None" 
                                BorderWidth="1px" CellPadding="4">
                                <Columns>
                                    <asp:TemplateField HeaderText="File" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" 
                                                CausesValidation="False" 
                                                CommandArgument='<%# Eval("File") %>'
                                                CommandName="Download" Text='<%# Eval("File") %>'>
                                                </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Size" HeaderText="Size in Bytes" />
                                    <asp:BoundField DataField="Type" HeaderText="File Type" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" 
                                    ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" 
                                    HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" 
                                    ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            </div>--%>

                            <%--<asp:FileUpload ID="FileUpload1" CssClass="btn btn-info " runat="server" />
                            
                             <asp:Button CssClass="btn btn-info" ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />--%>

<%--                            <asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click" />
                            </div>
                            <div>
                            <asp:GridView ID="gvDetails" CssClass="Gridview" runat="server" AutoGenerateColumns="false" DataKeyNames="FilePath">
                            <HeaderStyle BackColor="#df5015" />
                            <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:BoundField DataField="FileName" HeaderText="FileName" />
                            <asp:TemplateField HeaderText="FilePath">
                            <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>
                            </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                            </asp:GridView>
                            </div>
--%>



                            <hr />
                      <div id="form2" runat ="server">
                          <%--<form id="form2" runat="server">--%>
                      </div>
                       
                         <%--   <asp:GridView ID="gvFiles" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="File Name" />
                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <a class="view" href="javascript:;" rel='<%# Eval("Id") %>'>View PDF</a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <hr />
                            <div id="pdf_container">
                            </div>

                        </div>--%>                      <%--///////////////////////--%>
                      
                      <%--//////////////////////////////--%>
                             
                        <br />

                      <%--</div>--%>
                  </div>
                </div>
              </div>

          <%--    <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
                      <small>Web Design</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Website Markup</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>One Page</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Mobile Template</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Backend API</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
                      <small>Web Design</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Website Markup</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>One Page</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Mobile Template</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                      <small>Backend API</small>
                      <div class="progress mb-3" style="height: 5px">
                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>--%>



            </div>
          </div>

        </div>
    </div>



   </form>
    


<script src="../Helper/js/Skillprofileresumeupload.js"></script>
</body>
</html>
