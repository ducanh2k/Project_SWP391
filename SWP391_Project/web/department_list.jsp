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

        <link rel="stylesheet" href="css/style_2.css">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mb-4 d-flex justify-content-between align-items-center">
                            <h2>Department List</h2>
                            <button class="font-weight-bold">ADD NEW</button>
                        </div>
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
                                            <td><a href="Department?service=view_Dep&did=${o.getDid()}" class="fas fa-eye fa-2x"></a></td>
                                            <td><a href="#" class="fas fa-edit fa-2x"></a></td>
                                            <td><a href="#" class="fas fa-trash fa-2x"></a></td>
                                        </tr>                                   
                                    </c:forEach>
<!--                                    <tr>
                                        <th scope="row" class="scope" >1</th>
                                        <td>abc</td>
                                        <td>true</td>
                                        <td>2</td>
                                        <td><a href="Department?service=view_Dep&did=1" class="fas fa-eye fa-2x"></a></td>
                                        <td><a href="#" class="fas fa-edit fa-2x"></a></td>
                                        <td><a href="#" class="fas fa-trash fa-2x"></a></td>
                                    </tr> 
                                    <tr>
                                        <th scope="row" class="scope" >1</th>
                                        <td>abc</td>
                                        <td>true</td>
                                        <td>2</td>
                                        <td><a href="#" class="fas fa-eye fa-2x"></a></td>
                                        <td><a href="#" class="fas fa-edit fa-2x"></a></td>
                                        <td><a href="#" class="fas fa-trash fa-2x"></a></td>
                                    </tr> -->
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


