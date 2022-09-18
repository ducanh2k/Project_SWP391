<%-- 
    Document   : register
    Created on : Sep 18, 2022, 2:59:43 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Register Form</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">
        <style>
            .navbar {
                padding: 0;
            }

            .navbar ul {
                margin: 0;
                padding: 0;
                display: flex;
                list-style: none;
                align-items: center;
            }

            .navbar li {
                position: relative;
            }

            .navbar>ul>li {
                margin-left: 5px;
            }

            .navbar a,
            .navbar a:focus {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 25px 15px 24px 15px;
                font-size: 14px;
                color: #fff;
                white-space: nowrap;
                transition: 0.3s;
            }

            .navbar a i,
            .navbar a:focus i {
                font-size: 12px;
                line-height: 0;
                margin-left: 5px;
            }

            .navbar a:hover,
            .navbar .active,
            .navbar .active:focus,
            .navbar li:hover>a {
                background: #cc1616;
            }

            .navbar .dropdown ul {
                display: block;
                position: absolute;
                left: 0;
                top: calc(100% + 30px);
                margin: 0;
                padding: 10px 0;
                z-index: 99;
                opacity: 0;
                visibility: hidden;
                background: #fff;
                box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
                transition: 0.3s;
            }

            .navbar .dropdown ul li {
                min-width: 200px;
            }

            .navbar .dropdown ul a {
                padding: 10px 20px;
                color: #191919;
            }

            .navbar .dropdown ul a i {
                font-size: 12px;
            }

            .navbar .dropdown ul a:hover,
            .navbar .dropdown ul .active:hover,
            .navbar .dropdown ul li:hover>a {
                color: #fff;
            }

            .navbar .dropdown:hover>ul {
                opacity: 1;
                top: 100%;
                visibility: visible;
            }

            .navbar .dropdown .dropdown ul {
                top: 0;
                left: calc(100% - 30px);
                visibility: hidden;
            }

            .navbar .dropdown .dropdown:hover>ul {
                opacity: 1;
                top: 0;
                left: 100%;
                visibility: visible;
            }

            @media (max-width: 1366px) {
                .navbar .dropdown .dropdown ul {
                    left: -90%;
                }

                .navbar .dropdown .dropdown:hover>ul {
                    left: -100%;
                }
            }
            #this:hover{
                /*pointer-events: none;*/
                background: none;
            }
            #header{
                background: #191919;
            }
        </style>
    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Register</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <form action="Register" class="signin-form" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email" required name="email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Username" required name="username">
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Password" required name="password">
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <!--<button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>-->
                                    <input type="submit" class="btn btn-primary btn-block btn-lg" value="Register">
                                </div>
                           
                            </form>
                            <p style='color:red'>${requestScope.message}</p>
                            <p class="w-100 text-center">&mdash; Already have an account &mdash;</p>
                            <div class="social d-flex text-center">
                                <a href="login" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
