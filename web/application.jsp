<%-- 
    Document   : approval
    Created on : Oct 20, 2022, 11:34:10 PM
    Author     : Admin
--%>

<%@page import="model.Application"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession session1 = request.getSession();
    String role = (String) session1.getAttribute("role");
    Application a = (Application) request.getAttribute("application");
    String mode = (String) request.getAttribute("mode");
%>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->        
        <title><%if (mode.equals("approval")) {%>Application Approval<%} else if (mode.equals("view")) {%>Application Detail<%}%></title>

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
                        <h2 class="title"><%if (mode.equals("approval")) {%>Application Approval<%} else if (mode.equals("view")) {%>Application Detail<%}%></h2>
                        <form action="ApplicationApproval" method="POST">

                            <div class="input-group">
                                <label class="input--style-2 js-datepicker">Employee ID</label>
                                <input readonly type="text" name="eid" value="<%=a.getEid()%>">
                            </div>
                            <div class="input-group">
                                <label class="input--style-2 js-datepicker">Employee Name</label>
                                <input readonly class="input--style-2" type="text" placeholder="Employee Name" name="eName" value="<%=a.getEname()%>">
                            </div>
                            <div class="row row-space">
                                <div class="input-group">
                                    <label class="input--style-2 js-datepicker">Title</label>
                                    <input readonly type="text" name="title" value="<%=a.getTitle()%>">
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="input-group">
                                    <label class="input--style-2 js-datepicker">Content</label>
                                    <textarea readonly name="content"><%=a.getBody()%></textarea>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="input-group">
                                    <label class="input--style-2 js-datepicker">Status</label>
                                    <input readonly id="status" type="text" name="status" value="<%=a.getStatus()%>">
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="input-group">
                                    <label class="input--style-2 js-datepicker">Submit Time</label>
                                    <input readonly type="text" name="Time" value="<%=a.getTime()%>">
                                </div>
                            </div>
                            <div class="p-t-30">
                                <input class="btn btn--radius btn--green" id="approve" type="submit" onclick="alert('Successful')" name="approve" value="Approve">
                                <input class="btn btn--radius btn--red" id="refuse" type="submit" onclick="alert('Successful')" name="refuse" value="Refuse">
                                <input type="hidden" name="service" value="approval">
                                <input type="hidden" name="aid" value="<%=a.getAid()%>">                                       
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var inputBox = document.getElementById("id_salary");

            var invalidChars = [
                "-",
                "+",
                "e",
            ];

            inputBox.addEventListener("input", function () {
                this.value = this.value.replace(/[e\+\-]/gi, "");
            });

            inputBox.addEventListener("keydown", function (e) {
                if (invalidChars.includes(e.key)) {
                    e.preventDefault();
                }
            });
            function confirmAction() {
                let confirmAction = confirm("Are you sure?");
                if (confirmAction) {
                    alert("Successful");
                }
            }
            var element = document.getElementById("status");
            var btn = document.getElementById("approve");

        </script>

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
