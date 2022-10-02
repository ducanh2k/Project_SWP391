<%-- 
    Document   : profile
    Created on : Jun 5, 2022, 9:57:08 PM
    Author     : Dell
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charshet="UTF-8">
        <title>Account Settings UI Design</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/style_1.css">
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style_1.css" rel="stylesheet">
        <style>
            .navbar-brand{
                font-size: 27px;
            }
            #this:hover{
                /*pointer-events: none;*/
                background: none;
                text-decoration: none;
                color: #ffffff;
            }
            #header{
                background: #191919;
            }
            h1{
                text-align: center;
                color:#ffffff;
            }
            img{
                object-fit: cover;
            }
        </style>
        
    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg.jpg); background-repeat: no-repeat; object-fit: cover">
        <section class="py-5 my-5">
            <div class="container">
                <h1 class="mb-5">Account Settings</h1>
                <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <c:forEach items="${list}" var="o">
                                <div class="img-circle text-center mb-3">
                                    <img src="${o.getPicture()}" alt="img/user-account.jpg" class="shadow">
                                </div>
                            </c:forEach>
                        </div>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="work-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
                                <i class="fa fa-home text-center mr-1"></i> 
                                Work Information
                            </a>
                            <a class="nav-link" id="personal-tab" data-toggle="pill" href="#personal" role="tab" aria-controls="personal" aria-selected="false">
                                <i class="fa fa-key text-center mr-1"></i> 
                                Personal Information
                            </a>
                            <a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
                                <i class="fa fa-key text-center mr-1"></i> 
                                Password
                            </a>
                            <a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
                                <i class="fa fa-user text-center mr-1"></i> 
                                Security
                            </a>
                            <a class="nav-link" id="notification-tab" data-toggle="pill" href="#notification" role="tab" aria-controls="notification" aria-selected="false">
                                <i class="fa fa-bell text-center mr-1"></i> 
                                Notification
                            </a>
                        </div>
                    </div>
                    <%
                        String certi = (String) request.getAttribute("certi");
                        String depart = (String) request.getAttribute("depart");
                        String mentor = (String) request.getAttribute("mentor");
                    %>

                    <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="work-tab">
                            <h3 class="mb-4">Work Information Settings</h3>
                            <form action="profile" method="post" id="form1">
                                <div class="row">
                                    <c:forEach items="${list}" var="o">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Manager</label>
                                                <input type="text" class="form-control" value="${o.getManager()}" name="manager">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Working time</label>
                                                <input type="text" class="form-control" value="${o.getWorkingTime()}" name="workingTime">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Approver</label>
                                                <input type="text" class="form-control" value="${o.getApprover()}" name="approver">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Certificate Link</label>
                                                <input type="text" class="form-control" value="${o.getCertificateLevel()}" name="certificateLink">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Research Area</label>
                                                <input type="text" class="form-control" value="${o.getResearchArea()}" name="researchArea">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Id number</label>
                                                <input type="number" class="form-control" value="${o.getIdNumber()}" name="idNumber">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Passport</label>
                                                <input type="number" class="form-control" value="${o.getPassport()}" name="passport">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Visa Number</label>
                                                <input type="number" class="form-control" value="${o.getVisaNumber()}" name="visaNumber">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Work license number</label>
                                                <input type="number" class="form-control" value="${o.getWorkLicenseNumber()}" name="workLicenseNumber">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Visa expiration date</label>
                                                <input type="text" class="form-control" value="${o.getVisaExpirationDate()}" name="visaExpirationDate">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Work license expiration date</label>
                                                <input type="text" class="form-control" value="${o.getWorkLicenseExpirationDate()}" name="workLicenseExpirationDate">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Position</label>
                                                <input type="text" class="form-control" value="${o.getPosition()}" name="position">
                                            </div>
                                        </div>
                                    </c:forEach>          

                                </div>
                                <div>
                                    <input type="submit" class="btn btn-primary" value="Update" hidden>
                                    <button  class="btn btn-light" onclick="window.location.href = 'main';">Cancel</button>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="personal" role="tabpanel" aria-labelledby="personal-tab">
                            <h3 class="mb-4">Personal Information Settings</h3>
                            <c:forEach items="${list}" var="o">
                                <div class="row">
                                    <input type="text" class="form-control" hidden value="${o.getPicture()}" name="img">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>ID</label>
                                            <input type="number" class="form-control" value="${o.getEid()}" name="id" readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Department</label>
                                            <input type="text" class="form-control" value="<%= depart%>" name="department">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Full Name</label>
                                            <input type="text" class="form-control" value="${o.getName()}" name="fullname">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Mentor</label>
                                            <input type="text" class="form-control" value="<%= mentor%>" name="mentor">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Certificate</label>
                                            <input type="text" class="form-control" value="<%= certi%>" name="certificate">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Working Place</label>
                                            <input type="text" class="form-control" value="${o.getWorkingPlace()}" name="workingPlace">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" class="form-control" value="${o.getEmail()}" name="email">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Emergency Contact</label>
                                            <input type="number" class="form-control" value="${o.getEmergencyContact()}" name="emergencyContact">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="number" class="form-control" value="${o.getPhone()}" name="phone">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Nationality</label>
                                            <input type="text" class="form-control" value="${o.getNationality()}" name="nationality">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <input type="text" class="form-control" value="${o.isGender()}" name="gender">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Birthplace</label>
                                            <input type="text" class="form-control" value="${o.getBirthPlace()}" name="birthplace">
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                            <h3 class="mb-4">Password Settings</h3>
                            <p style="color:red">${error}</p>
                            <p style="color:green">${success}</p>

                            <form action="ChangePassword" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" name="username" class="form-control" onkeydown="return false">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Current password</label>
                                            <input type="password" name="old" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>New password</label>
                                            <input type="password" name="new" id="new" class="form-control" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}" title="Must contain at least one number and one uppercase and lowercase letter, the length is 8-16 characters" onkeyup="check()">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Confirm new password</label>
                                            <input type="password" name="confirm" id="confirm" class="form-control" required onkeyup="check()">
                                            <span id="message"></span>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button id="submit" type="submit" class="btn btn-primary" >Update</button>
                                    <!--                                    <button class="btn btn-light" onclick="window.location.href = 'list'">Cancel</button>-->
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
                            <h3 class="mb-4">Security Settings</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Login</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Two-factor auth</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="recovery">
                                            <label class="form-check-label" for="recovery">
                                                Recovery
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary" form="form1" name=Recovery">Update</button>
                                <button class="btn btn-light" onclick="window.location.href = 'list'">Cancel</button>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
                            <h3 class="mb-4">Application Settings</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="app-check">
                                            <label class="form-check-label" for="app-check">
                                                App check
                                            </label>
                                        </div>  
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" >
                                            <label class="form-check-label" for="defaultCheck2">
                                                Default App Check                                        
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary" form="form1" name="AppCheck">Update</button>
                                <button class="btn btn-light" onclick="window.location.href = 'list'">Cancel</button>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
                            <h3 class="mb-4">Notification Settings</h3>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="notification2" name="notification">
                                    <label class="form-check-label" for="notification2">
                                        Turn on receive notifications
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="notification2" name="notification">
                                    <label class="form-check-label" for="notification3">
                                        Turn off receive notifications
                                    </label>
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-primary" onclick="profile.jsp">Update</button>
                                <button class="btn btn-light" onclick="profile.jsp">Cancel</button>
                            </div>
                        </div>
                    </div>

                </div>
                <button onclick="window.location.href = 'main.jsp'" type="button" class="btn btn-secondary btn-lg">Back to Home</button>
            </div>
        </section>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script><footer id="footer">
            <jsp:include page="footer.jsp"></jsp:include>
            <script>
                    var check = function () {
                        if (document.getElementById("new").value ==
                                document.getElementById("confirm").value) {
                            document.getElementById("message").style.color = 'green';
                            document.getElementById("message").innerHTML = 'Matching';
                            document.getElementById("submit").disabled = false;
                        } else {
                            document.getElementById("message").style.color = 'red';
                            document.getElementById("message").innerHTML = 'New Password and Confirm Password must matched';
                            document.getElementById("submit").disabled = true;
                        }
                    }
            </script>
    </body>
</html>