<%-- 
    Document   : EditContract
    Created on : Oct 14, 2022, 1:44:03 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Edit Contract</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/main_1.css" rel="stylesheet" media="all">
    </head>

    <body>
        <div class="page-wrapper bg-blue p-t-180 p-b-100 font-robo">
            <div class="wrapper wrapper--w960">
                <div class="card card-2">
<!--                    <div class="card-heading"></div>-->
                    <div class="card-body">
                        <h2 class="title">Edit Contract</h2>
                        <form action="EditContract" method="POST">
                            <div class="input-group">
                                <input class="input--style-2" type="text" placeholder="Contract Name" name="cName">
                            </div>
                            <div class="row row-space">
                                <div class="input-group">
                                    <input type="hidden" name="eid" value="">
                                    <input class="input--style-2" type="text" placeholder="Employee Name" name="eName">
                                </div>
                                <div class="input-group">
                                    <input type="hidden" name="did" value="">
                                    <input class="input--style-2" type="text" placeholder=" Department Name" name="dName">
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <input class="input--style-2 js-datepicker" type="text" placeholder="Starting Date" name="start">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <input class="input--style-2 js-datepicker" type="text" placeholder="End Date" name="end">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>

                            </div>
                            <div class="input-group">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="workingTime">
                                        <option disabled="disabled" selected="selected">Working Time in week</option>
                                        <option>42h/week</option>
                                        <option>40h/week</option>
                                        <option>38h/week</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="status">
                                        <option disabled="disabled" selected="selected">Status</option>
                                        <option>Opened</option>
                                        <option>Expired</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <input class="input--style-2" type="number" placeholder="Salary" name="salary">
                                    </div>
                                </div>
                            </div>
                            <div class="p-t-30">
                                <button class="btn btn--radius btn--green" type="submit">Save</button>
                                <a href="EditContract.jsp" class="btn btn--radius btn--red" style="text-decoration: none">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>

    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
