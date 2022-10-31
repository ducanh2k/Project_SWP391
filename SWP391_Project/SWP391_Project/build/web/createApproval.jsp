<%-- 
    Document   : createApproval
    Created on : Oct 29, 2022, 1:08:19 AM
    Author     : Dell
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
        <title>Au Register Forms by Colorlib</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/main.css" rel="stylesheet" media="all">
    </head>

    <body>
        <%
            String text = request.getParameter("text");
        %>
        <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
            <div class="wrapper wrapper--w680">
                <div class="card card-4">
                    <div class="card-body">
                        <h2 class="title">Approval Form</h2>
                        <form action="approval   " method="POST">
                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Approval Object</label>
                                        <input class="input--style-4" type="text" value="<%= text%>" name="ao" required>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Petitioner</label>
                                        <input class="input--style-4" type="text" name="petitioner" required>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group">
                                <label class="label">Category</label>
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <select name="Category" required>
                                        <option disabled="disabled" selected="selected"><%= text%></option>
                                        <option>Business Trip</option>
                                        <option>Find Folder</option>
                                        <option>Create Approval</option>
                                        <option>Approve Contract</option>
                                        <option>Payment Form</option>
                                        <option>Rent Car Form</option>
                                        <option>Shopping/Supply</option>
                                    </select>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                            <%
                                if (text.equalsIgnoreCase("Payment Form")) {
                            %>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Date</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="datetime" name="date" required>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>

                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <%
                                            if (text.equalsIgnoreCase("Business Trip") || text.equalsIgnoreCase("Find Folder") || text.equalsIgnoreCase("Create Approval") || text.equalsIgnoreCase("Rent Car Form")) {
                                        %>

                                        <label class="label">Cycle</label>
                                        <div class="input-group-icon">
                                            From <input class="input--style-4 js-datepicker" type="datetime" name="from" required>
                                            <!--<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>-->
                                        </div>
                                        <div class="input-group-icon">
                                            To <input class="input--style-4 js-datepicker" type="datetime" name="to" required>
                                            <!--<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>-->
                                        </div>

                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="input-group">
                                        <%
                                            if (text.equalsIgnoreCase("Business Trip") || text.equalsIgnoreCase("Create Approval")) {
                                        %>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Location</label>
                                                <input class="input--style-4" type="text" name="location">
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (text.equalsIgnoreCase("Create Approval") || text.equalsIgnoreCase("Approve Contract") || text.equalsIgnoreCase("Payment Form")) {
                                        %>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Contact</label>
                                                <input class="input--style-4" type="text" name="contact">
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="input-group">
                                        <%
                                            if (text.equalsIgnoreCase("Create Approval") || text.equalsIgnoreCase("Approve Contract") || text.equalsIgnoreCase("Payment Form") || text.equalsIgnoreCase("Shopping/Supply")) {
                                        %>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Total money</label>
                                                <input class="input--style-4" type="number" name="total">
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>
                                        <%
                                            if (text.equalsIgnoreCase("Create Approval") || text.equalsIgnoreCase("Approve Contract")) {
                                        %>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Form Code</label>
                                                <input class="input--style-4" type="text" name="code">
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                    <div class="input-group">
                                        <%
                                            if (text.equalsIgnoreCase("Shopping/Supply")) {
                                        %>
                                        <div class="col-2">
                                            <div class="input-group">
                                                <label class="label">Quantity</label>
                                                <input class="input--style-4" type="number" name="quantity">
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>

                            <div class="row row-space">
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Description</label>
                                        <textarea class="input--style-4" name="des">
            
                                        </textarea>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="input-group">
                                        <label class="label">Approver</label>
                                        <textarea class="input--style-4" name="approver">
            
                                        </textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="p-t-15">
                                <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
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
<!-- end document-->