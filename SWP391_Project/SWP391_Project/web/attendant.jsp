<%-- 
    Document   : attendant
    Created on : Oct 13, 2022, 7:55:10 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h2>View Attendant</h2>
            <div class="table-responsive">          
                <table class="table">
                    <thead>
                        <tr>
                            <th>Stt</th>
                            <th>Date</th>
                            <th>Name</th>
                            <th>Room</th>
                            <th>Department</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="e" items="${listAttend}">
                            <tr>
                                <td>${e.getId()}</td>
                                <td>${e.getDate()}</td>
                                <td>${e.getEmployee().getName()}</td>
                                <td>${e.getRoom()}</td>
                                <td>${e.getDepartment().getDname()}</td>
                                <td>${e.isStatus()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div><div class="p-t-30">
            <button class="btn btn--radius btn--green" type="button" onclick="window.window.location.href = 'main'">BACK</button>
        </div>

    </body>
</html>

