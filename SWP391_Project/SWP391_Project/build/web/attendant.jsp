<%-- 
    Document   : attendant
    Created on : Oct 13, 2022, 7:55:10 PM
    Author     : Dell
--%>

<%@page import="java.io.PrintWriter"%>
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
            <%
                HttpSession session1 = request.getSession();
                String eid = (String) session1.getAttribute("eid");
            %>
            <h2>View Attendant</h2>
            <form action="attendant" method="get">
                <input type="text" hidden name="eid" value="<%= eid%>"/>
                <input type="text" hidden name="Filter" value="true"/>
                From: <input type="date" name="start" />
                To: <input type="date" name="end" />
                <input type="submit" value="Filter">
            </form>
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
            </div><div class="p-t-30">
                <button class="btn btn--radius btn--green" type="button" onclick="window.window.location.href = 'EmployeeList'">BACK</button>
            </div>
        </div>


    </body>
</html>

