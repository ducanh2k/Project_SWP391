<%@page import="java.util.ArrayList"%>
<%@page import="model.Employee"%>
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
        <title>Create Contract</title>

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
    <%
        ArrayList<Employee> list_employee = (ArrayList<Employee>) request.getAttribute("list_employee");
    %>
    <body>
        <div class="page-wrapper bg-red p-t-50 p-b-50 font-robo">
            <div class="wrapper wrapper--w960">
                <div class="card card-2">
                    <!--                    <div class="card-heading"></div>-->
                    <div class="card-body">
                        <h2 class="title">Create Contract</h2>
                        <form action="contract" method="POST">
                            <div class="input-group">
                                <label>Contract Name</label>
                                <input class="input--style-2" type="text" placeholder="Contract Name" name="cName" required>
                            </div>
                            <div class="input-group">
                                <label>Employee</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="eid" required>
                                        <%for (Employee elem : list_employee) {%>
                                        <option value="<%=elem.getEid()%>"><%=elem.getName()%></option>
                                        <%}
                                        %>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label>Starting Date</label>
                                        <input class="input--style-2 js-datepicker" type="text" placeholder="Starting Date" name="start" required>
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label>Month Valid</label>
                                    <input class="input--style-2" type="number" value="0" name="monthValid" required>
                            </div>
                                </div>

                            </div>

                            <div class="row row-space">
                                <div class="col-2 input-group">
                                    <label>Contract Type</label>
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select reaonly name="contractType">
                                            <option value="Fulltime">Full time</option>
                                            <option value="Parttime">Part time</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <label>Effective status</label>
                                    <div class="input-group">
                                        <input readonly class="input--style-2" type="text" placeholder="Status" name="status" value="Effective">
                                    </div>
                                </div>
                            </div>

                            <div class="p-t-30">
                                <button class="btn btn--radius btn--green" type="submit">Create</button>
                            </div>
                            <div class="p-t-30">
                                <button class="btn btn--radius btn--green" type="button" onclick="window.window.location.href = 'Controller_Contract'">Cancel</button>
                            </div>
                        </form>
                    </div>
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
<!-- end document-->