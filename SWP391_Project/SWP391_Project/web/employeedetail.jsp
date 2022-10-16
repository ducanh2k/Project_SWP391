<%-- 
    Document   : employeedetail
    Created on : Sep 17, 2022, 1:33:48 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    String mode = "view";
    if (request.getAttribute("mode") != null) {
        mode = (String) request.getAttribute("mode");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%if (mode.equals("view")) {%> Employee Detail <%} else if (mode.equals("edit")) {%> Edit Employee <%}%></title>
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
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
                        <form class="form-control" method="POST" 
                              <%if(mode.equals("view")){%> action="DeactiveEmployee" onSubmit="return confirm('Do you want to deactive this employee?')"
                              <%}else{%> action="EmployeeDetail"
                              <%}%>>
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="label-control">ID</label>
                                    <input name="eid" class="form-control" value="${e.getEid()}" type="text" readonly/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Name</label>
                                <input name="ename" class="form-control" value="${e.getName()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Department ID</label>
                                <input name="did" class="form-control" value="${e.getDid()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Certificate ID</label>
                                <input name="cid" class="form-control" value="${e.getCertificateID()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Manager</label>
                                <input name="manager" class="form-control" value="${e.getManager()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Working time</label>
                                <input name="work_time" class="form-control" value="${e.getWorkingTime()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Approver</label>
                                <input name="approver" class="form-control" value="${e.getApprover()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">

                                <label class="label-control">Working Place</label>
                                <input name="work_place" class="form-control" value="${e.getWorkingPlace()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Email</label>
                                <input name="email" class="form-control" value="${e.getEmail()}" type="text" pattern="^[A-Za-z0-9]+[@][a-z]+[.][a-z]+$" title="Format abc@xyz.edf" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Emergency Contact</label>
                                <input name="e_contact" class="form-control" value="${e.getEmergencyContact()}" type="text" pattern="^[+]?[0-9]{3,11}$" title="Only contain digits ( >3 digits and <11 digits), can be +. For example +84" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Phone</label>
                                <input name="phone" class="form-control" value="${e.getPhone()}" type="text" pattern="^[0-9]{10}$" title="Only contain 10 digits" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Research Area</label>
                                <input name="reserach_area" class="form-control" value="${e.getResearchArea()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Nationality</label>
                                <input name="nation" class="form-control" value="${e.getNationality()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Passport</label>
                                <input name="passport" class="form-control" value="${e.getPassport()}" type="text" pattern="^[A-z][0-9]{7}$" title="Format A0123456. A upcase letter and 7 digits" <%if(mode.equals("view")){%>readonly<%}%>/>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Gender</label>
                                <input name="gender" class="form-control" value="${e.isGender()?'Male':'Female'}" type="text" <%if(mode.equals("view")){%>readonly<%}%>>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Birth Place</label>
                                <input name="birth_place" class="form-control" value="${e.getBirthPlace()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Visa Number</label>
                                <input name="visa" class="form-control" value="${e.getVisaNumber()}" type="text" pattern="^[0-9]{16}$" title="Format 16 digits" <%if(mode.equals("view")){%>readonly<%}%>>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Work License Number</label>
                                <input name="work_license" class="form-control" value="${e.getWorkLicenseNumber()}" type="text" pattern="^[0-9]+$" title="Format digits" <%if(mode.equals("view")){%>readonly<%}%>>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Visa Expiration date</label>
                                <input name="visa_date" class="form-control" value="${e.getVisaExpirationDate()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>>
                            </div>
                            <div class="col-md-6">
                                <label class="label-control">Position</label>
                                <input name="position" class="form-control" value="${e.getPosition()}" type="text" <%if(mode.equals("view")){%>readonly<%}%>>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-3 align-self-center ">
                                    <label class="label-control"></label>
                                    <%if(mode.equals("view")){%>
                                    <button class="btn btn-dark form-control align-middle" type="submit">Deactive Employee</button>
                                    <%}else{%>
                                    <button class="btn btn-dark form-control align-middle" type="submit">SAVE</button>
                                    <input type="hidden" name="service" value="save_edit_em"/>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>