<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timesheet.aspx.cs" Inherits="LoginSignup.Pages.Timesheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Helper/css/Timesheet.css" rel="stylesheet" />
</head>
<body>
    <div class="page-header">
        <h1>Timesheet</h1>
    </div>
    <div class="container ">
        <div class="panel panel-primary ">
            <div class="panel-heading text-center">
                <div class="row">
                    <div class="col-md-3 col-lg-3" text-center>
                        <h4>Project-Task</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <h4>Mon</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <h4>Tue</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <h4>Wed</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <h4>Thur</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <h4>Fri</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <h4>Sat</h4>
                    </div>
                    <div class="col-md-1 col-lg-1 ">
                        <h4>Sun</h4>
                    </div>
                    <div class="col-md-1 col-lg-1 ">
                        <h4>Total</h4>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <span class="glyphicon glyphicon-wrench more-toolbar" aria-hidden="true"></span>
                    </div>
                </div>
            </div>
            <div class="panel-body" align="center">
                <div class="row">
                    <div class="col-md-3 col-lg-3">
                        <button class="btn btn-lg btn-default dropdown-toggle form-dontrol"
                            type="button" data-toggle="dropdown" aria-expanded="false">
                            Select Project and Task <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                        </ul>
                        </button>
                    </div>

                    <div class="col-md-1 col-lg-1 ">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1 ">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <button type="button" class="btn btn-success form-control"
                            aria-label="Left Align">
                            40
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <button type="button" class="btn btn-default form-control"
                            aria-label="Left Align">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </button>
                    </div>

                </div>
                <!--row-->


                <!---------------------->
                <div class="row more">
                    <div class="col-md-3 col-lg-3">
                        <button class="btn btn-lg btn-default dropdown-toggle form-dontrol"
                            type="button" data-toggle="dropdown" aria-expanded="false">
                            Select Project and Task <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu">
                        </ul>
                        </button>
                    </div>

                    <div class="col-md-1 col-lg-1 ">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1 ">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <input type="text" class="form-control" placeholder="8.00" aria-label="...">
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <button type="button" class="btn btn-success form-control"
                            aria-label="Left Align">
                            40
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1">
                        <button type="button" class="btn btn-default form-control"
                            aria-label="Left Align">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </button>
                    </div>

                </div>
                <!--row-->

                <!---------------------------->

            </div>
            <!--panel body-->

            <div class="panel-footer">

                <div class="row">
                    <div class="col-md-1 col-lg-1">
                        <button type="button" class="btn btn-info"
                            aria-label="Left Align">
                            <span class="glyphicon glyphicon-floppy-disk" aria-hidden="true">New </span>
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1" text-center>
                        <button type="button" class="btn btn-info"
                            aria-label="Left Align">
                            <span class="glyphicon glyphicon-floppy-open" aria-hidden="true">Save</span>
                        </button>
                    </div>

                    <div class="col-md-1 col-lg-1"></div>
                    <div class="col-md-1 col-lg-1 text-center btg-group">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>
                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>

                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>

                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-primary"
                            aria-label="Left Align">
                            <span>8.00</span>
                        </button>

                    </div>
                    <div class="col-md-1 col-lg-1 text-center">
                        <button type="button" class="btn btn-success form-control"
                            aria-label="Left Align">
                            <span>40.00</span>
                        </button>

                    </div>
                    <div class="col-md-1 col-lg-1">
                        <button type="button" class="btn btn-danger form-control"
                            aria-label="Left Align">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true">All</span>
                        </button>
                    </div>
                </div>

            </div>

        </div>
        <!--panel-->
    </div>
    <!--container-->

    <p class="p">Kuber X.</p>
    <script src="../Helper/js/Timesheet.js"></script>
</body>
</html>
</html>