<%-- 
    Document   : header
    Created on : Sep 15, 2022, 2:58:22 PM
    Author     : Admin
--%>

<%@page import="dal.AccountDAO"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession session1 = request.getSession(true);
    Account a = (Account) session1.getAttribute("account");
    AccountDAO ad = new AccountDAO();
%>
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>
        <h1 class="logo"><a>Human Resource Management</a></h1>

        <nav id="navbar" class="navbar">
            <ul>
                <%
                    if (!ad.getRoleName(a).equalsIgnoreCase("admin")) {
                %>
                <li><a id="this" class="nav-link scrollto" href="attendant">Attendant</a></li>
                    <%
                        }
                    %>
                <li><a id="this" class="nav-link scrollto" href="EmployeeList">Employee</a></li>
                <li><a id="this" class="nav-link scrollto " href="Department">Department</a></li>
                <li><a id="this" class="nav-link scrollto" href="Controller_Contract">Contract</a></li>
                <li><a id="this" class="nav-link scrollto" href="ApplicationList">Application</a></li>
                <li><a id="this" class="nav-link scrollto" href="pform">Approval</a></li>
                <li><button type="button" class="btn btn-primary btn-lg" onclick="window.location.href = 'profile'"><%= ad.getRoleName(a)%></button></li>
                <li><button type="button" class="btn btn-secondary btn-lg" onclick="window.location.href = 'login?service=logout'">Logout</button></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav> 
    </div>
</header>
<script src="assets/js/main.js"></script>