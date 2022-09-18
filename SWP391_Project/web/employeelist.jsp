<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : employeelist
    Created on : Sep 17, 2022, 1:33:36 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee List</title>
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <div style=" top: 0; width: 100%; background-color:  #222222; display: flex; justify-content: space-between; ">
            <h2 style="color: white">Welcom admin</h2>
            <a href="logout" class="btn btn-outline-info" style="margin: 3px;">Logout</a>
        </div>
        <div  style="width: 100%">

            <div class="row">
                <div class="col-md-2" style="height:90vh; background-color: #222222">
                    <div style="border-bottom: 1px lightgray solid; width: 100%; text-align: center;padding: 5px;" >
                        <a href="EmployeeList" style="text-decoration: none; color: white; ">Employee List</a>
                    </div> 
                </div>
                <!-- Page content-->
                <div class="col-md-10">
                    <h1>Employee List</h1>
                    <table class="table table-bordered" id="tablepro">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Department Name</th>
                                <th>Certificate</th>
                                <th>Manager</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th></th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="e" items="${elist}">
                                <tr>
                                    <td>${e.getEid()}</td>
                                    <td>${e.getName()}</td>
                                    <td>${e.getDepartment().name}</td>
                                    <td>${e.getCertificate().name}</td>
                                    <td>${e.getManager()}</td>
                                    <td>${e.getEmail()}</td>
                                    <td>${e.getPhone()}</td>
                                    <td><a href="EmployeeDetail?eid=${e.getEid()}"><i class="fa-solid fa-eye"></i></a></td>
                                    <td><a href=""><i class="fa-regular fa-pen-to-square"></i></a></td>
                                    <td><a href=""><i class="fa-solid fa-trash"></i></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#tablepro").DataTable({"pageLength": 5});
        });
    </script>
</body>
</html>
