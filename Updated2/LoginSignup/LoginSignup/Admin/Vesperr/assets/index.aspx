<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LoginSignup.Admin.Vesperr.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Kuber X Bootstrap Template - Index</title>
    
    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/SearchEmployeeBar.css" rel="stylesheet" />
</head>
<body>
    <form action="/" method="post" runat="server">
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="index.html">Kuber X</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">

          <ul>
              <a class="getstarted scrollto" href="index.aspx">Home</a>
              <!--<a class="getstarted scrollto" href="index.html">index.html</a>-->
          </ul>
          <ul>
              <a href="../AdminLogin.aspx">LogOut</a>
              <!--<a class="getstarted scrollto" href="index.html">index.html</a>-->
          </ul>
         
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  
  <br />        
  <br />        
  <br />        
           
  <br />        
    <!-- ======= Services Section ======= -->
  <section id="services" class="services"> 

     <%--  <%-- <div class="wrap">
          <div class="search">
              <%--<input type="text" class="searchTerm" placeholder="Search Employee?">--%>
             <%-- <button type="submit" class="searchButton">
                  <i class="fa fa-search"></i>
                  🔎
              </button>--%>
             <%--  <asp:TextBox CssClass="searchButton fa fa-search" ID="TextBox1" runat="server"></asp:TextBox>
              <asp:Button ID="Button1" class="searchButton fa fa-search" runat="server" Text="Button" OnClick="Button1_Click1" />
          </div>
      </div>--%>
      


      <div class="container">

          <div class="wrap">
              <div class="form-group" runat="server">
                    <div class="input-group">
                        <%--<input type="search" class="form-control" value="" width="200" />--%>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        <%--<span class="input-group-btn">--%>
                            <%--<button class="btn btn-default">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>--%>
                            <asp:Button ID="Button1" CssClass="btn btn-block " runat="server" Text="Search" OnClick="Button1_Click2" />
                        <%--</span>--%>
                    </div>
                </div>
          </div>


          <div class="section-title" data-aos="fade-up">
              <br />
              <h2>Admin Services</h2>
              <br />
              <!--<p>Magnam dolores commodi suscipit eius conseEnd Services Sectionquatur ex aliquid fug</p>-->
          </div>

          <div class="row">
              <a href="../Admin_Profile.aspx">
                  <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                      <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                          <div class="icon"><i class="bx bxl-dribbble"></i></div>
                          <h4 class="title"><a href="">Profile</a></h4>
                          <p class="description">Detailed description of an Employee.     ................................................................</p>
                      </div>
                  </div>
              </a>




              <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                  <a href="../FeedbackForm.aspx">
                  <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                      <div class="icon"><i class="bx bx-file"></i></div>
                      <h4 class="title"><a href="">Recent Interview Feedback</a></h4>
                      <p class="description">Feedback  ................................................................</p>
                  </div>
                  </a>
              </div>

              <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                  <a href="../../Pages/Recommendation.aspx">
                      <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
                          <div class="icon"><i class="bx bx-tachometer"></i></div>
                          <h4 class="title"><a href="">Recommendations.</a></h4>
                          <p class="description">Certifications & Trainings recommended ................................................................</</p>
                      </div>
                  </a>
              </div>

              <!--<div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                  <a href="../../Pages/Timesheet.aspx">
                      <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
                          <div class="icon"><i class="bx bx-world"></i></div>
                          <h4 class="title"><a href="">Time Sheet</a></h4>
                          <p class="description">Timesheet ................................................................</</p>
                      </div>
                  </a>
              </div>-->

          </div>

      </div>
  </section>
    <!-- ======= More Services Section ======= -->
    

   

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="row d-flex align-items-center">
        <div class="col-lg-6 text-lg-left text-center">
          <div class="copyright">
            &copy; Created By <strong>Kuber X</strong>
          </div>
          <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/Kuber X-free-bootstrap-template/ -->
           <a href="https://bootstrapmade.com/"></a>
          </div>
        </div>
        <!--<div class="col-lg-6">
          <nav class="footer-links text-lg-right text-center pt-2 pt-lg-0">
            <a href="#intro" class="scrollto">Home</a>
            <a href="#about" class="scrollto">About</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Use</a>
          </nav>
        </div>-->
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</form>
</body>
</html>
