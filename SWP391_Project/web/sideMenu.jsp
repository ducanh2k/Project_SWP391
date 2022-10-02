<%-- 
    Document   : sideMenu
    Created on : Sep 18, 2022, 10:13:01 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
        <div id="body-pd">
            <div class="l-navbar" id="nav-bar">
                <nav class="nav">
                    <div> <a href="main.jsp" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i><span class="nav_logo-name">HRM</span></a>
                        <div class="nav_list"> 
                            <!--                    <a href="#" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Dashboard</span> </a> -->
                            <a href="EmployeeList" class="nav_link active"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">Employee</span> </a> 
                            <a href="Department" class="nav_link"> <i class='bx bx-briefcase nav_icon'></i> <span class="nav_name">Department</span> </a> 
                            <a href="#" class="nav_link"> <i class='bx bx-task nav_icon'></i> <span class="nav_name">Contract</span> </a> 
                            <a href="#" class="nav_link"> <i class='bx bx-money nav_icon'></i> <span class="nav_name">Salary</span> </a> 
                            <a href="#" class="nav_link"> <i class='bx bx-bar-chart-alt-2 nav_icon'></i> <span class="nav_name">Attendance</span> </a> </div>
                    </div> <a href="Login.jsp" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">Log out</span> </a>
                </nav>
            </div>
        </div>
        <script>
            document.addEventListener("DOMContentLoaded", function (event) {
                const showNavbar = (toggleId, navId, bodyId, headerId) => {
                    const toggle = document.getElementById(toggleId),
                            nav = document.getElementById(navId),
                            bodypd = document.getElementById(bodyId),
                            headerpd = document.getElementById(headerId);

                    // Validate that all variables exist
                    if (toggle && nav && bodypd && headerpd) {
                        toggle.addEventListener("click", () => {
                            // show navbar
                            nav.classList.toggle("show");
                            // change icon
                            toggle.classList.toggle("bx-x");
                            // add padding to body
                            bodypd.classList.toggle("body-pd");
                            // add padding to header
                            headerpd.classList.toggle("body-pd");
                        });
                    }
                };

                showNavbar("header-toggle", "nav-bar", "body-pd", "header");

                /*===== LINK ACTIVE =====*/
                const linkColor = document.querySelectorAll(".nav_link");

                function colorLink() {
                    if (linkColor) {
                        linkColor.forEach((l) => l.classList.remove("active"));
                        this.classList.add("active");
                    }
                }
                linkColor.forEach((l) => l.addEventListener("click", colorLink));

                // Your code to run since DOM is loaded and ready
            });

        </script>
