<%-- 
    Document   : department_list
    Created on : Sep 15, 2022, 10:24:21 PM
    Author     : User
--%>

<%@page import="model.Contract"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Contract List</title>
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
        Contract c = (Contract) request.getAttribute("contract");
        String mode = (String) request.getAttribute("mode");
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
                <h2>Contract List</h2>
            <%if (role.trim().equalsIgnoreCase("admin")) {%>
            <a  role="button" href="Controller_Contract?service=add_contract" class="font-weight-bold">NEW</a>
            <%}%>
            <a onclick="tableToExcel('tableID', 'Contract List')" role="button" class="font-weight-bold">EXPORT EXCEL</a><br /><br />
            <!--HTML table with student data-->
            <table id="tableID" class="display" style="width: 100%; font-size: smaller">
                <thead>
                    <tr>
                        <th class="remove-this"></th>
                        <th>Contract No.</th>
                        <th>Contract Name</th>
                        <th>Status</th>
                        <th>Effective Date</th>
                        <th>Expired Date</th>
                        <th>Contract Type</th>
                        <th>Working Time / week (hours)</th>
                        <th>Operation Salary (million VND)</th>
                        <th>Employee</th>
                        <th class="remove-this">View</th>
                            <%if (role.trim().equalsIgnoreCase("admin")) {%>
                        <th class="remove-this">Edit</th>
                            <%}%>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list_contract}" var="c">
                        <tr>
                            <td class="remove-this"><input type="checkbox" onclick=""></td>
                            <td>${c.getCid()}</td>
                            <td><a href="Controller_Contract?service=view&cid=${c.getCid()}">${c.getName()}</a></td>
                            <td>${c.getStatus()}</td>
                            <td>${c.getStartingDate()}</td>
                            <td>${c.getEndDate()}</td>
                            <td>${c.getContractTypeName()}</td>
                            <td>${c.getWorkingTime()}</td>
                            <td>${c.getStrSalary()}</td>
                            <td><a href="EmployeeDetail?service=view&eid=${c.getEid()}" >${c.getEname()}</a></td>                             
                            <td class="remove-this"><a href="Controller_Contract?service=view&cid=${c.getCid()}" class="fas fa-eye fa-x"></a></td>
                                <%if (role.trim().equalsIgnoreCase("admin")) {%>
                            <td class="remove-this"><a href="Controller_Contract?service=edit_del&edit=true&cid=${c.getCid()}" class="fas fa-edit fa-x"></a></td>
                                <%}%>
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
 var tableToExcel = (function() {
      var uri = 'data:application/vnd.ms-excel;base64,'
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
