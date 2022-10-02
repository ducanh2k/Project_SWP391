<%-- 
    Document   : employeedetail
    Created on : Sep 17, 2022, 1:33:48 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Detail</title>
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <script src="js/main.js"></script>
    </head>
    <body>
        <jsp:include page="sideMenu.jsp"></jsp:include>
            <div  style="width: 100%">
                <div class="row">
                    <div class="col-md-2" style="height:90vh; background-color: #222222">
                        <div style="border-bottom: 1px lightgray solid; width: 100%; text-align: center;padding: 5px;" >
                        </div> 
                    </div>
                    <!-- Page content-->
                    <div class="col-md-10">
                        <form class="form-control" action="DeactiveEmployee" method="POST" onSubmit="return confirm('Do you want to deactive this employee?')">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="label-control">ID</label>
                                    <input name="eid" class="form-control" value="${e.getEid()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Name</label>
                                <input class="form-control" value="${e.getName()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Department</label>
                                <input class="form-control" value="${e.getDid()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Certificate</label>
                                <input class="form-control" value="${e.getCertificateID()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Manager</label>
                                <input class="form-control" value="${e.getManager()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Working time</label>
                                <input class="form-control" value="${e.getWorkingTime()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Approver</label>
                                <input class="form-control" value="${e.getApprover()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">

                                <label class="label-control">Working Place</label>
                                <input class="form-control" value="${e.getWorkingPlace()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Email</label>
                                <input class="form-control" value="${e.getEmail()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Emergency Contact</label>
                                <input class="form-control" value="${e.getEmergencyContact()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Phone</label>
                                <input class="form-control" value="${e.getPhone()}" type="text" readonly>
                            </div><div class="col-md-6">
                                <label class="label-control">Research Area</label>
                                <input class="form-control" value="${e.getResearchArea()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Nationality</label>
                                <input class="form-control" value="${e.getNationality()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Passport</label>
                                <input class="form-control" value="${e.getPassport()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Gender</label>
                                <input class="form-control" value="${e.isGender()?'Male':'Female'}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Birth Place</label>
                                <input class="form-control" value="${e.getBirthPlace()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Visa Number</label>
                                <input class="form-control" value="${e.getVisaNumber()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Work License Number</label>
                                <input class="form-control" value="${e.getWorkLicenseNumber()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Visa Expiration date</label>
                                <input class="form-control" value="${e.getVisaExpirationDate()}" type="text" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Position</label>
                                <input class="form-control" value="${e.getPosition()}" type="text" readonly>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-3 align-self-center ">
                                <label class="label-control"></label>
                                <button class="btn btn-dark form-control align-middle" type="submit">Deactive Employee</button>
                            </div>
                        </div>
                    </form> 

                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>