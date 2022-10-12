<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reccommendation.aspx.cs" Inherits="LoginSignup.Pages.Reccommendation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Helper/css/Recommendation.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5 mb-5">
            <div class="row no-gutters">
                <div class="col-md-4 col-lg-4"><img src="https://i.imgur.com/aCwpF7V.jpg"></div>
                <div class="col-md-8 col-lg-8">
                    <div class="d-flex flex-column">
                        <div class="d-flex flex-row justify-content-between align-items-center p-5 bg-dark text-white">
                            <h3 class="display-5">Amelly Anderson</h3><i class="fa fa-facebook"></i><i class="fa fa-google"></i><i class="fa fa-youtube-play"></i><i class="fa fa-dribbble"></i><i class="fa fa-linkedin"></i></div>
                        <div class="p-3 bg-black text-white">
                            <h6>Web designer &amp; Developer</h6>
                        </div>
                        <div class="d-flex flex-row text-white">
                            <div class="p-4 bg-primary text-center skill-block">
                                <h4>90%</h4>
                                <h6>Bootstrap</h6>
                            </div>
                            <div class="p-3 bg-success text-center skill-block">
                                <h4>70%</h4>
                                <h6>Jquery</h6>
                            </div>
                            <div class="p-3 bg-warning text-center skill-block">
                                <h4>80%</h4>
                                <h6>HTML</h6>
                            </div>
                            <div class="p-3 bg-danger text-center skill-block">
                                <h4>75%</h4>
                                <h6>PHP</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
