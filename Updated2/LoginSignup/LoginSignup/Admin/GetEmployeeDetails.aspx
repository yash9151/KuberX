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
                    <a class="getstarted scrollto" href="Vesperr/index.html">Home</a>
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
    </form>
</body>
</html>
