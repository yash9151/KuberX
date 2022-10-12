<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InterviewFeedback.aspx.cs" Inherits="LoginSignup.Pages.ClientRating" %>







<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interview Feedback  </title>

    <meta name="author" content="Codeconvey" />


    <link href="../Helper/css/demo.css" rel="stylesheet" />
    <link href="../Helper/css/style.css" rel="stylesheet" />
</head>
<body>

    <div class="ScriptTop">
        <div class="rt-container">
            <div class="col-rt-4" id="float-right">

                <!-- Ad Here -->

            </div>
            <%--<div class="col-rt-2">
                <ul>
                    <li><a href="https://codeconvey.com/feedback-form-in-html" title="Back to tutorial page">Back to Tutorial</a></li>
                </ul>
            </div>--%>
        </div>
    </div>

    <header class="ScriptHeader">
        <div class="rt-container">
            <div class="col-rt-12">
                <div class="rt-heading">
                    <h1>Interview Feedback </h1>
                    
                </div>
            </div>
        </div>
    </header>

    <section>
        <div class="rt-container">
            <div class="col-rt-12">
                <div class="Scriptcontent">


                    <div class="feedback">
                      

                        <h4>Please rate the candidate over the below parameters</h4>

                        <form method="post" action="#action-url">
                            <label>1 - Was the candidate confident about the skills he had mentioned ?</label><br>

                            <span class="star-rating">
                                <input type="radio" name="rating1" value="1"><i></i>
                                <input type="radio" name="rating1" value="2"><i></i>
                                <input type="radio" name="rating1" value="3"><i></i>
                                <input type="radio" name="rating1" value="4"><i></i>
                                <input type="radio" name="rating1" value="5"><i></i>
                            </span>

                            <div class="clear"></div>
                            <hr class="survey-hr">
                            <label>2 - How good is candidate with practical knowledge along with theoretical knowledge ?
</label><br>
                            <span class="star-rating">
                                <input type="radio" name="rating2" value="1"><i></i>
                                <input type="radio" name="rating2" value="2"><i></i>
                                <input type="radio" name="rating2" value="3"><i></i>
                                <input type="radio" name="rating2" value="4"><i></i>
                                <input type="radio" name="rating2" value="5"><i></i>
                            </span>

                            <div class="clear"></div>
                            <hr class="survey-hr">
                            <label>3 - Overall, how satisfied are you with candidate interview ?
</label><br>
                            <span class="star-rating">
                                <input type="radio" name="rating2" value="1"><i></i>
                                <input type="radio" name="rating2" value="2"><i></i>
                                <input type="radio" name="rating2" value="3"><i></i>
                                <input type="radio" name="rating2" value="4"><i></i>
                                <input type="radio" name="rating2" value="5"><i></i>
                            </span>





                            <div class="clear"></div>
                            <hr class="survey-hr">
                            <label>4 - Did the candidate demonstrated excellent communication skills ?
</label><br>
                            <span class="star-rating">
                                <input type="radio" name="rating2" value="1"><i></i>
                                <input type="radio" name="rating2" value="2"><i></i>
                                <input type="radio" name="rating2" value="3"><i></i>
                                <input type="radio" name="rating2" value="4"><i></i>
                                <input type="radio" name="rating2" value="5"><i></i>
                            </span>






                           
                            <div class="clear"></div>
                            <hr class="survey-hr">
                            <label for="m_3189847521540640526commentText">5. Any Other suggestions:</label><br />
                            <br />
                            <textarea cols="75" name="commentText" rows="5" style="100%"></textarea><br>
                            <br>
                            <div class="clear"></div>
                            <input style="background: #43a7d5; color: #fff; padding: 12px; border: 0" type="submit" value="Submit your Feedback">&nbsp;
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </section>



    <!-- Analytics -->

</body>
</html>
