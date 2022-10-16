<%-- 
    Document   : EditContract
    Created on : Oct 14, 2022, 1:44:03 PM
    Author     : Admin
--%>

<%@page import="model.Contract"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession session1 = request.getSession();
    String role = (String) session1.getAttribute("role");
    Contract c = (Contract) request.getAttribute("contract");
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
        <title><%if(mode.equals("edit")){%>Edit Contract<%}else if(mode.equals("view")){%>Contract Detail<%}%></title>

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
                        <h2 class="title"><%if(mode.equals("edit")){%>Edit Contract<%}else if(mode.equals("view")){%>Contract Detail<%}%></h2>
                        <form action="EditContract" method="POST">
                            <div class="input-group">
                                <label class="input--style-2 js-datepicker">Contract Name</label>
                                <input class="input--style-2" type="text" placeholder="Contract Name" name="cName" value="<%=c.getName()%>">
                            </div>
                            <div class="row row-space">
                                <div class="input-group">
                                    <input type="hidden" name="eid" value="">
                                    <label class="input--style-2 js-datepicker">Employee Name</label>
                                    <input class="input--style-2" type="text" placeholder="Employee Name" name="eName" value="<%=c.getEname()%>">
                                </div>
<!--                                <div class="input-group">
                                    <input type="hidden" name="did" value="">
                                    <input class="input--style-2" type="text" placeholder=" Department Name" name="dName">
                                </div>-->
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="input--style-2 js-datepicker">Starting Date</label>
                                        <input class="input--style-2 js-datepicker" type="text" placeholder="Starting Date" name="start" value="<%=c.getStartingDate()%>">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="input--style-2 js-datepicker">Ending Date</label>
                                        <input class="input--style-2 js-datepicker" type="text" placeholder="End Date" name="end" value="<%=c.getEndDate()%>">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>

                            </div>
                            <div class="input-group">
                                <label class="input--style-2 js-datepicker">Working Time in week</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="workingTime">
                                        <!--<option disabled="disabled" selected="selected">Working Time in week</option>-->
                                        <option <%if(c.getWorkingTime().equals("")){%>selected<%}%>>/---/</option>
                                        <option <%if(c.getWorkingTime().equals("42h")){%>selected<%}%>>42h</option>
                                        <option <%if(c.getWorkingTime().equals("40h")){%>selected<%}%>>40h</option>
                                        <option <%if(c.getWorkingTime().equals("38h")){%>selected<%}%>>38h</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <label class="input--style-2 js-datepicker">Status</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="status">
                                            <!--<option disabled="disabled" selected="selected">Status</option>-->
                                            <option <%if(c.getStatus().equals("")){%>selected<%}%>>/---/</option>
                                            <option <%if(c.getStatus().equals("Opened")){%>selected<%}%>>Opened</option>
                                            <option <%if(c.getStatus().equals("Expired")){%>selected<%}%>>Expired</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label class="input--style-2 js-datepicker">Salary</label>
                                    <div class="input-group">
                                        <input class="input--style-2" id="id_salary" type="number" name="salary" value="<%=c.getSalary()%>" pattern="[0-9]">
                                    </div>
                                </div>
                            </div>
                            <div class="p-t-30">
                                <%if(mode.equals("edit")){%>
                                <input class="btn btn--radius btn--green" type="submit" name="save" value="Save">
                                <input class="btn btn--radius btn--red" type="submit" name="save" value="Cancel">
                                <%}else if(mode.equals("view")){%>
                                <input class="btn btn--radius btn--green" type="submit" name="save" value="Edit">
                                <input class="btn btn--radius btn--red" type="submit" name="save" value="Delete">
                                <%}%>                                
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

inputBox.addEventListener("input", function() {
  this.value = this.value.replace(/[e\+\-]/gi, "");
});

inputBox.addEventListener("keydown", function(e) {
  if (invalidChars.includes(e.key)) {
    e.preventDefault();
  }
});
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
