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
        </style>
    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg.jpg);">
        <section class="py-5 my-5">
            <div class="container">
                <h1 class="mb-5">Account Settings</h1>
                <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <div class="img-circle text-center mb-3">
                                <img src="img/user-account.jpg" alt="Image" class="shadow">
                            </div>
                        </div>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
                                <i class="fa fa-home text-center mr-1"></i> 
                                Account
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
                    <form action="profile" method="post" id="form1">
                        <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                <h3 class="mb-4">Account Settings</h3>
                                <div class="row">
                                    <c:forEach items="${list}" var="o">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>UserID</label>
                                            <input type="text" class="form-control" value="${o.getUid()}" name="id" readonly>
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
                                            <label>Email</label>
                                            <input type="text" class="form-control" value="${o.getEmail()}" name="email">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Phone number</label>
                                            <input type="number" class="form-control" value="${o.getPhone()}" name="phone">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Place</label>
                                            <input type="text" class="form-control" value="${o.getPlace()}" name="place">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Current Jobs</label>
                                            <input type="text" class="form-control" value="${o.getWorkingUnit()}" name="workingUnit">
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
                                <div>
                                    <input type="submit" class="btn btn-primary" value="Update">
                                    <button  class="btn btn-light" onclick="window.location.href = 'main';">Cancel</button>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                                <h3 class="mb-4">Password Settings</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Old password</label>
                                            <input type="password" name="old" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>New password</label>
                                            <input type="password" name="new" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Confirm new password</label>
                                            <input type="password" name="confirm" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary" form="form1" name="NewPass">Update</button>
                                    <button class="btn btn-light" onclick="window.location.href = 'list'">Cancel</button>
                                </div>
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
                    </form>
                </div>
                <button onclick="window.location.href='main.jsp'" type="button" class="btn btn-secondary btn-lg">Back to Home</button>
            </div>
        </section>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
