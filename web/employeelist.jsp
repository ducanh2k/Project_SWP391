<%-- 
    Document   : department_list
    Created on : Sep 15, 2022, 10:24:21 PM
    Author     : User
--%>

<%@page import="model.Account"%>
<%@page import="dal.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Employee List</title>
        <meta content="initial-scale=1, maximum-scale=1,
              user-scalable=0" name="viewport" />
        <meta name="viewport" content="width=device-width" />
        <meta http-equiv="content-type" content="text/plain; charset=UTF-8"/>
        <!-- Datatable plugin CSS file -->
        <link rel="stylesheet" href=
              "https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />

        <!-- jQuery library file -->
        <script type="text/javascript"
                src="https://code.jquery.com/jquery-3.5.1.js">
        </script>

        <!-- Datatable plugin JS library file -->
        <script type="text/javascript" src=
                "https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js">
        </script>
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    </head>
    <%
        HttpSession session1 = request.getSession();
        String role = (String) session1.getAttribute("role");
    %>

    <style>
        a.font-weight-bold{
            background-color: #428bca;
            border-radius: 2px;
            color: white;
            padding: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
    </style>

    <jsp:include page="sideMenu.jsp"></jsp:include>
        <body style="margin-left:152px; min-height: 100vh" class="d-flex flex-column justify-content-between">
            <div class="container" >
                <h2>Employee List</h2>
            <%if (role.trim().equalsIgnoreCase("admin")) {%>
            <a  role="button" href="EmployeeDetail?service=add" class="font-weight-bold">NEW</a>
            <%}%>
            <a onclick="tableToExcel('tableID', 'Employee List')" role="button" class="font-weight-bold">EXPORT EXCEL</a><br /><br />
            <!--HTML table with student data-->
            <table id="tableID" class="display" style="width: 100%; font-size: smaller">
                <thead>
                    <tr>
                        <th class="remove-this"></th>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Department Name</th>
                        <th>Certificate</th>
                        <th>Manager</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th class="remove-this">View</th>
                            <%
                                if (role.trim().equalsIgnoreCase("admin")) {
                            %>
                        <th class="remove-this">Edit</th>
                            <%}%>
                        <th class="remove-this"></th>
                        <th class="remove-this"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${elist}" var="e">
                        <tr>
                            <td class="remove-this"><input type="checkbox" onclick=""></td>
                            <td>${e.getEid()}</td>
                            <td>${e.getName()}</td>
                            <td>${e.getDid()}</td>
                            <td>${e.getCertificateID()}</td>
                            <td>${e.getManager()}</td>
                            <td>${e.getEmail()}</td>
                            <td>${e.getPhone()}</td>
                            <td class="remove-this"><a href="EmployeeDetail?service=view&eid=${e.getEid()}" class="fas fa-eye fa-2x"></a></td>
                            <%
                                if (role.trim().equalsIgnoreCase("admin")) {
                            %>                            
                            <td class="remove-this"><a href="EmployeeDetail?service=edit&eid=${e.getEid()}" class="fas fa-edit fa-2x"></a></td>
                            <%
                                }
                            %>
                            <td class="remove-this"><a href="attendant?eid=${e.getEid()}">View Attendance</a></td>
                            <td class="remove-this"><a href="salary?eid=${e.getEid()}">View Salary</a></td>
                        </tr>     
                    </c:forEach>
                </tbody>
            </table>

        </div>
        <script>

            /* Initialization of datatable */
            $(document).ready(function () {
            $('#tableID').DataTable({});
                    });
        </script>
        <script>
                            var tableToExcel = (function() {             var uri = 'data:application/vnd.ms-excel;base64,'
                    , template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>'
                            , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
                    , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
              return function(table, name) {
                if (!table.nodeType) table = document.getElementById(table)
                var cloneTable = table.cloneNode(true);
        jQuery(cloneTable).find('.remove-this').remove();
                var ctx = {worksheet: name || 'Worksheet', table: cloneTable.innerHTML}
                var a = document.createElement('a');
        a.href = uri + base64(format(template, ctx));
        a.download = name+'.xls';
        //triggering the function
        a.click();
              }
            })()
        </script>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>

</html>
