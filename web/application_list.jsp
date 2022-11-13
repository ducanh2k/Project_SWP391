<%-- 
    Document   : department_list
    Created on : Sep 15, 2022, 10:24:21 PM
    Author     : User
--%>

<%@page import="dal.AccountDAO"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Application List</title>
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
                <h2>Application List</h2>
            <%if (role.trim().equalsIgnoreCase("admin")) {%>
            <a  role="button" href="create_application.jsp" class="font-weight-bold">NEW</a>
            <%}%>
            <a onclick="tableToExcel('tableID', 'Application List')" role="button" class="font-weight-bold">EXPORT EXCEL</a><br /><br />
            <!--HTML table with student data-->
            <table id="tableID" class="display" style="width: 100%; font-size: smaller">
                <thead>
                    <tr>
                        <th class="remove-this"></th>
                        <th>#</th>
                        <th>Employee Name</th>
                        <th>Employee ID</th>
                        <th>Title</th>
                        <th>Content</th>
                        <th>Status</th>
                        <th>Submit Time</th>
                        <th class="remove-this">View</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list_application}" var="c">
                        <tr>
                            <td class="remove-this"><input type="checkbox" onclick=""></td>
                            <td>${c.getAid()}</td>
                            <td><a href="EmployeeDetail?service=view&eid=${c.getEid()}" >${c.getEname()}</a></td>
                            <td>${c.getEid()}</td>
                            <td>${c.getTitle()}</td>
                            <td>${c.getBody()}</td>
                            <td>${c.getStatus()}</td>
                            <td>${c.getTime()}</td>
                            <td class="remove-this"><a href="ApplicationApproval?service=view&aid=${c.getAid()}" class="fas fa-eye fa-2x"></a></td>
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
