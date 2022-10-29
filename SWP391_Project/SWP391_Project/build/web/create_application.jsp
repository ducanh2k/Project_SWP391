<%-- 
    Document   : create_application
    Created on : Oct 21, 2022, 12:15:12 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
        <link href="css/main_1.css" rel="stylesheet" media="all">
        <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
        <title>Application</title>
        <style>
            .container{
                width: 100%;
                max-width: 800px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
            <div class="wrapper wrapper--w960">
                <div class="card card-2">
                    <!--                    <div class="card-heading"></div>-->
                    <div class="card-body">

                        <form action="ApplicationSubmit" method="POST" enctype="multipart/form-data">
                            <div class="input-group">
                                <input class="input--style-2" type="text" name="Eid" value="1" readonly>
                            </div>
                            <div class="input-group">
                                <input class="input--style-2" type="text" name="title" placeholder="Title" required>
                            </div>
                            <div class="container">
                                <textarea class="ckeditor" name="content" required></textarea>
                            </div>
                            <div class="p-t-30">
                                <button class="btn btn--radius btn--green" type="submit">Submit</button>
                                <button class="btn btn--radius btn--red" type="button" onclick="window.window.location.href = 'create_application.jsp'">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
