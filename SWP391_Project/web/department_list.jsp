<%-- 
    Document   : department_list
    Created on : Sep 15, 2022, 10:24:21 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Department List</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <section class="ftco-section">
            <div class="container">
                <!--			<div class="row justify-content-center">
                                                <div class="col-md-6 text-center mb-5">
                                                        <h2 class="heading-section">Table #03</h2>
                                                </div>
                                        </div>-->

                <div class="row">
                    <div class="col-md-12">
                        <h4 class="text-center mb-4">Department List</h4>
                        <div class="table-wrap">
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr>
                                        <th>Department ID</th>
                                        <th>Department Name</th>
                                        <th>Number of Employees</th>
                                        <th>Active Status</th>
                                        <th>View</th>
                                        <th>Edit</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${list_dep}" var="o">
                                        <tr>
                                            <th scope="row" class="scope" >${o.getDid()}</th>
                                            <td>${o.getDname()}</td>
                                            <td>${o.isIs_active()}</td>
                                            <td>${o.getCount_employee()}</td>
                                            <td><a href="#" class="btn btn-primary">View</a></td>
                                            <td><a href="#" class="btn btn-primary">Edit</a></td>
                                            <td><a href="#" class="btn btn-primary">Delete</a></td>
                                        </tr>                                   
                                    </c:forEach>
                                </tbody>
                            </table>
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


