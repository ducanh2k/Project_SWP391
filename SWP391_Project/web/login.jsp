<!doctype html>
<html lang="en">
    <head>
        <title>Login Form</title>
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
        <header id="header" class="d-flex align-items-center">
            <div class="container d-flex align-items-center justify-content-between">

                <h1 class="logo"><a href="main.jsp">Human Resource Service</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a id="this" class="nav-link scrollto active" href="#hero">Home</a></li>
                        <li><a id="this" class="nav-link scrollto" href="#about">About</a></li>
                        <li><a id="this" class="nav-link scrollto" href="#services">Services</a></li>
                        <li><a id="this" class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
                        <li><a id="this" class="nav-link scrollto" href="#pricing">Pricing</a></li>
                        <li><a id="this" class="nav-link scrollto" href="#team">Team</a></li>
                        <li class="dropdown"><a id="this" href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a id="this" href="#">Drop Down 1</a></li>
                                <li class="dropdown"><a id="this" href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                                    <ul>
                                        <li><a id="this" href="#">Deep Drop Down 1</a></li>
                                        <li><a id="this" href="#">Deep Drop Down 2</a></li>
                                        <li><a id="this" href="#">Deep Drop Down 3</a></li>
                                        <li><a id="this" href="#">Deep Drop Down 4</a></li>
                                        <li><a id="this" href="#">Deep Drop Down 5</a></li>
                                    </ul>
                                </li>
                                <li><a id="this" href="#">Drop Down 2</a></li>
                                <li><a id="this" href="#">Drop Down 3</a></li>
                                <li><a id="this" href="#">Drop Down 4</a></li>
                            </ul>
                        </li>
                        <li><a id="this" class="nav-link scrollto" href="#contact">Contact</a></li>
                        <!--<li><button type="button" class="btn btn-secondary btn-lg"><a id="this" href="login-form-20/login.html">Login</a></button></li>-->
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
            </div>
        </header>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Login Form</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Have an account?</h3>
                            <form action="#" class="signin-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Username" required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Password" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div class="form-group">
                                    <button onclick="window.location.href='main.jsp'" type="submit" class="form-control btn btn-primary submit px-3"><a id="this" href="main.jsp">Sign In</a></button>
                                </div>
                                <div class="form-group d-md-flex">
                                    <div class="w-50">
                                        <label class="checkbox-wrap checkbox-primary">Remember Me
                                            <input type="checkbox" checked>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                    <div class="w-50 text-md-right">
                                        <a href="#" style="color: #fff">Forgot Password</a>
                                    </div>
                                </div>
                            </form>
                            <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
                            <div class="social d-flex text-center">
                                <a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
                                <a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
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

