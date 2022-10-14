<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="LoginSignup.Admin.FeedbackForm" %>

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
    <link href="Helper/css/style.default.css" rel="stylesheet" />
    <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Vesperr/assets/css/style.css" rel="stylesheet" />
        <link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

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

    <%--<section>
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
    </section>--%>
    <section>
        <div class="feedback">            
            <h4>Please spare some moments to give us your valuable feedback.</h4>

            <%--<p>Please rate your service experience for the following parameters</p>--%>
            <hr />


            <form method="post" action="#action-url" runat="server">
               
                <div class ="form-group mb-4">
                     <label>1. Employee Name    :</label>
                     <asp:TextBox ID="Employee_Name" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="" runat="server" ></asp:TextBox>
                </div>
                <br />
                <hr />
                <div class ="form-group mb-4">
                     <label>2. Employee ID    :</label>
                     <asp:TextBox ID="Employee_ID" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="" runat="server" ></asp:TextBox>
                </div><br />

                <div class="clear">
                    <hr class="survey-hr">
                    <label>3. Skill 1 :</label>
                    <asp:TextBox ID="Skill1"  CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>
                     <asp:RadioButtonList required= "true" ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server" >
                          <asp:ListItem Value="Very Poor">Very Poor</asp:ListItem>
                          <asp:ListItem Value="Poor">Poor</asp:ListItem>
                          <asp:ListItem Value="Average">Average</asp:ListItem>
                          <asp:ListItem Value="Good">Good</asp:ListItem>
                          <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                 <div class="clear">
                    <hr class="survey-hr">
                    <label>4. Skill 2 :</label>
                     <asp:TextBox ID="Skill2"  CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>
                     <asp:RadioButtonList required= "true" ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server" >
                          <asp:ListItem Value="Very Poor">Very Poor</asp:ListItem>
                          <asp:ListItem Value="Poor">Poor</asp:ListItem>
                          <asp:ListItem Value="Average">Average</asp:ListItem>
                          <asp:ListItem Value="Good">Good</asp:ListItem>
                          <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                 <div class="clear">
                    <hr class="survey-hr">
                    <label>5. Skill 3 :</label>
                     <asp:TextBox ID="Skill3"  CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>
                     <asp:RadioButtonList required= "true" ID="RadioButtonList3" RepeatDirection="Horizontal" runat="server" >
                         <asp:ListItem Value="Very Poor">Very Poor</asp:ListItem>
                          <asp:ListItem Value="Poor">Poor</asp:ListItem>
                          <asp:ListItem Value="Average">Average</asp:ListItem>
                          <asp:ListItem Value="Good">Good</asp:ListItem>
                          <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                 <div class="clear">
                    <hr class="survey-hr">
                    <label>6. Skill 4 :</label>
                     <asp:TextBox ID="Skill4"  CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>
                     <asp:RadioButtonList ID="RadioButtonList4" required= "true" RepeatDirection="Horizontal" runat="server" >
                          <asp:ListItem Value="Very Poor">Very Poor</asp:ListItem>
                          <asp:ListItem Value="Poor">Poor</asp:ListItem>
                          <asp:ListItem Value="Average">Average</asp:ListItem>
                          <asp:ListItem Value="Good">Good</asp:ListItem>
                          <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                 <div class="clear">
                    <hr class="survey-hr">
                    <label>7. Skill 5 :</label>
                     <asp:TextBox ID="Skill5"  CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>
                     <asp:RadioButtonList ID="RadioButtonList5" required= "true" RepeatDirection="Horizontal" runat="server" >
                          <asp:ListItem Value="Very Poor">Very Poor</asp:ListItem>
                          <asp:ListItem Value="Poor">Poor</asp:ListItem>
                          <asp:ListItem Value="Average">Average</asp:ListItem>
                          <asp:ListItem Value="Good">Good</asp:ListItem>
                          <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                 
                 
                 <div class="clear">
                    <hr class="survey-hr">
                    <label>8. Communication :</label>
                     <%--<asp:TextBox ID="TextBox8" CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>--%>
                     <asp:RadioButtonList ID="Communication" required= "true" RepeatDirection="Horizontal" runat="server" >
                          <asp:ListItem Value="Very Poor">Very Poor</asp:ListItem>
                          <asp:ListItem Value="Poor">Poor</asp:ListItem>
                          <asp:ListItem Value="Average">Average</asp:ListItem>
                          <asp:ListItem Value="Good">Good</asp:ListItem>
                          <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

               <hr class="survey-hr">
                <label for="m_3189847521540640526commentText">9. Any Other Skills:</label><br />
                <br />
                <asp:TextBox ID="OtherSkillstxtbox" Wrap="true" TextMode="MultiLine" runat="server"></asp:TextBox>
                <%--<textarea cols="75" name="commentText"  rows="5" style="100%"></textarea><br>--%>
                <br>

                <hr class="survey-hr">
                <label for="m_3189847521540640526commentText">10. Recommended Skills (if any):</label><br />
                <br />
                 <asp:TextBox ID="recommendedskillstxtbox" Wrap="true" TextMode="MultiLine" runat="server"></asp:TextBox>

                <%--<textarea cols="75" name="commentText" rows="5" style="100%"></textarea><br>--%>
                <br>

                <div class="clear">
                    <hr class="survey-hr">
                    <label>11. Result :</label>
                     <%--<asp:TextBox ID="TextBox8" CssClass="form-control border-0 shadow form-control-lg text-base"  runat="server"></asp:TextBox>--%>
                     <asp:RadioButtonList ID="Result" required= "true" RepeatDirection="Horizontal" runat="server" >
                         
                          <asp:ListItem Value="Selected">Selected</asp:ListItem>
                          <asp:ListItem Value="Not Selected">Not Selected</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </div>
             
                   
                <%--<span class="star-rating">
                    <input type="radio" name="rating1" value="1"><i></i>
                    <input type="radio" name="rating1" value="2"><i></i>
                    <input type="radio" name="rating1" value="3"><i></i>
                    <input type="radio" name="rating1" value="4"><i></i>
                    <input type="radio" name="rating1" value="5"><i></i>
                </span>--%>

               <%-- <div class="clear"></div>
                <hr class="survey-hr">
                <label>2. Friendliness and courtesy shown to you while recieving your vehicle</label><br>
                <span class="star-rating">
                    <input type="radio" name="rating2" value="1"><i></i>
                    <input type="radio" name="rating2" value="2"><i></i>
                    <input type="radio" name="rating2" value="3"><i></i>
                    <input type="radio" name="rating2" value="4"><i></i>
                    <input type="radio" name="rating2" value="5"><i></i>
                </span>--%>


                
              <%--  <div style="color: grey">
                    <span style="float: left">POOR
                    </span>
                    <span style="float: right">BEST
                    </span>

                </div>--%>

                
                    
                        
                    
               



                <%--<span class="scale-rating">
                    
                    <label value="1">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="2">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="3">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="4">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="5">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="6">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="7">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="8">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="9">
                        <input type="radio" name="rating">
                        <label style="width: 100%;"></label>
                    </label>
                    <label value="10">
                        <input type="radio" name="rating" value="10">
                        <label style="width: 100%;"></label>
                    </label>
                </span>--%>

             <div class="clear"></div>
                <hr class="survey-hr">
                <br />
             <%--      <label for="m_3189847521540640526commentText">4. Any Other suggestions:</label><br />
                <br />
                <textarea cols="75" name="commentText" rows="5" style="100%"></textarea><br>--%>
                <br>
                <div class="clear"></div>
                <asp:Button CssClass="btn btn-primary" Height="50px" Width="180px"  ID="btnSubmitReview" runat="server" Text="Submit Review" OnClick="btnSubmitReview_Click" />
                <%--<input style="background: #43a7d5; color: #fff; padding: 12px; border: 0" type="submit" value="Submit your review">--%>
            </form>
        </div>
    </section>



    <!-- Analytics -->

</body>
</html>
