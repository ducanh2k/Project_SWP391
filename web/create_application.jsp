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
            input, select, textarea {
                width: 100%; /* Full width */
                padding: 12px; /* Some padding */
                border: 1px solid #ccc; /* Gray border */
                border-radius: 4px; /* Rounded borders */
                box-sizing: border-box; /* Make sure that padding and width stays in place */
                margin-top: 6px; /* Add a top margin */
                margin-bottom: 16px; /* Bottom margin */
                resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */
            }
            /* Style the submit button with a specific background color etc */
            input[type=submit] {
                background-color: #04AA6D;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            /* When moving the mouse over the submit button, add a darker green color */
            input[type=submit]:hover {
                background-color: #45a049;
            }

            /* Add a background color and some padding around the form */
            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <form action="ApplicationSubmit" method="POST">

                <label for="id">ID</label>
                <input type="number" id="eid" name="Eid" placeholder="ID">

                <label for="title">Title</label>
                <input type="text" id="title" name="title" placeholder="Title">

                <label for="subject">Content</label>
                <textarea id="subject" name="content" placeholder="Write something.." style="height:200px"></textarea>

                <input type="submit" class="btn btn--radius btn--green" value="Submit" onclick="alert('Successful')">

                <input class="btn btn--radius btn--red" type="button" onclick="window.window.location.href = 'ApplicationList'" value="Cancel">

            </form>
        </div>
    </body>
</html>
