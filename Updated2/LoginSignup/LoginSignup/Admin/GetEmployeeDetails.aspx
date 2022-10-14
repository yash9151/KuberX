<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetEmployeeDetails.aspx.cs" Inherits="LoginSignup.Admin.GetEmployeeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <link href="Vesperr/assets/css/SearchEmployeeBar.css" rel="stylesheet" />
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
                    <a class="getstarted scrollto" href="Vesperr/index.aspx">Home</a>
                      <!--<a class="getstarted scrollto" href="index.html">index.html</a>-->
                  </ul>
                  <ul>
                         <asp:Button cssClass="getstarted scrollto" runat="server" Text="Logout" OnClick="btn_Logout"  />
                      <!--<a class="getstart<a href="../Backup/Vesperr/assets/css/">../Backup/Vesperr/assets/css/</a>ed scrollto" href="index.html">index.html</a>-->
                 </ul>
                  
                 <%--<a class="getstarted scrollto" href="../Backup/Vesperr/index.html">Home</a>--%><%--<a class="getstarted scrollto" href="#">LogOut</a>--%><%--</li>--%>                <%--<li><a class="getstarted scrollto" href="#about">Home</a></li>--%>
            </ul>   
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav>
        <!-- .navbar -->


    </div>
          
</header>
 <body>
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
           
            <div class="col-md-8">
              <div class="card mb-3" >
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
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Employee ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>

                <%--<hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Employee ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>--%>

                 <%--   <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Employee ID</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div>--%>
                  
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
                              <h6 class="mb-0"></h6>
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
</body>
</html>
