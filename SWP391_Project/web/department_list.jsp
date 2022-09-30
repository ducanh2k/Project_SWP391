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
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <style>
            .filterable {
                margin-top: 15px;
            }
            .filterable .panel-heading .pull-right {
                margin-top: -20px;
            }
            .filterable .filters input[disabled] {
                background-color: transparent;
                border: none;
                cursor: auto;
                box-shadow: none;
                padding: 0;
                height: auto;
            }
            .filterable .filters input[disabled]::-webkit-input-placeholder {
                color: #333;
            }
            .filterable .filters input[disabled]::-moz-placeholder {
                color: #333;
            }
            .filterable .filters input[disabled]:-ms-input-placeholder {
                color: #333;
            }


            /* Style the input field */
            #myInput {
                padding: 20px;
                margin-top: -6px;
                border: 0;
                border-radius: 0;
                background: #f1f1f1;
            }
            .dataTables_length,
            .dataTables_wrapper {
                font-size: 1.6rem;
                select,
                input {
                    background-color: #f9f9f9;
                    border: 1px solid #999;
                    border-radius: 4px;
                    height: 3rem;
                    line-height: 2;
                    font-size: 1.8rem;
                    color: #333;
                }

                .dataTables_length,
                .dataTables_filter {
                    margin-top: 30px;
                    margin-right: 20px;
                    margin-bottom: 10px;
                    display: inline-flex;
                }
            }


            .paginate_button {
                min-width: 4rem;
                display: inline-block;
                text-align: center;
                padding: 1rem 1.6rem;
                margin-top: -1rem;
                border: 2px solid lightblue;
                &:not(.previous) {
                    border-left: none;
                }
                &.previous {
                    border-radius: 8px 0 0 8px;
                    min-width: 7rem;
                }
                &.next {
                    border-radius: 0 8px 8px 0;
                    min-width: 7rem;
                }

                &:hover {
                    cursor: pointer;
                    background-color: #eee;
                    text-decoration: none;
                }
            }

        </style>
    </head>
    <body>

        <jsp:include page="sideMenu.jsp"></jsp:include>
            <section class="ftco-section">
                <div class="container">
                    <div class="row">
                        <input class="form-control" id="myInput" type="text" placeholder="Search..">
                        <p><button onclick="sortTable()">Sort By Name</button></p>
                        <div class="col-md-12">
                            <div class="panel panel-primary filterable">
                                <div class="mb-4 d-flex justify-content-between align-items-center">
                                    <h2>Department List</h2>
                                    <button class="font-weight-bold">ADD NEW</button>
                                </div>

                                <div class="panel-heading">
                                    <h3 class="panel-title">Department</h3>
                                    <div class="pull-right">
                                        <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                                    </div>
                                </div> 
                                <table class="table" id="myTable">
                                    <thead>
                                    <th>Department ID</th>
                                    <th>Department Name</th>
                                    <th>Active Status</th>
                                    <th>Number of Employees</th>
                                    <th>View</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                    </thead>
                                    <tbody id="myTable">
                                        <tr class="filters">
                                            <th><input type="text" class="form-control" disabled>Department ID</th>
                                            <th><input type="text" class="form-control" disabled>Department Name</th>
                                            <th><input type="text" class="form-control" disabled>Active Status</th>
                                            <th><input type="text" class="form-control" disabled>Number of Employees</th>
                                            <th>View</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    <c:forEach items="${list_dep}" var="o">
                                        <tr>
                                            <td>${o.getDid()}</td>
                                            <td>${o.getDname()}</td>
                                            <td><a href="EmployeeList?did=${o.getDid()}"></a>${o.getCount_employee()}</td>
                                            <td>${o.isIs_active()}</td>
                                            <td><a href="Department?service=view_Dep&did=${o.getDid()}" class="fas fa-eye fa-2x"></a></td>
                                            <td><a href="#" class="fas fa-edit fa-2x"></a></td>
                                            <td><a href="#" class="fas fa-trash fa-2x"></a></td>
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
        <script>
                            $(document).ready(function () {
                                $("#myInput").on("keyup", function () {
                                    var value = $(this).val().toLowerCase();
                                    $("#myTable tr").filter(function () {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                    });
                                });
                            });
                            $(document).ready(function () {
                                $('.filterable .btn-filter').click(function () {
                                    var $panel = $(this).parents('.filterable'),
                                            $filters = $panel.find('.filters input'),
                                            $tbody = $panel.find('.table tbody');
                                    if ($filters.prop('disabled') == true) {
                                        $filters.prop('disabled', false);
                                        $filters.first().focus();
                                    } else {
                                        $filters.val('').prop('disabled', true);
                                        $tbody.find('.no-result').remove();
                                        $tbody.find('tr').show();
                                    }
                                });

                                $('.filterable .filters input').keyup(function (e) {
                                    /* Ignore tab key */
                                    var code = e.keyCode || e.which;
                                    if (code == '9')
                                        return;
                                    /* Useful DOM data and selectors */
                                    var $input = $(this),
                                            inputContent = $input.val().toLowerCase(),
                                            $panel = $input.parents('.filterable'),
                                            column = $panel.find('.filters th').index($input.parents('th')),
                                            $table = $panel.find('.table'),
                                            $rows = $table.find('tbody tr');
                                    /* Dirtiest filter function ever ;) */
                                    var $filteredRows = $rows.filter(function () {
                                        var value = $(this).find('td').eq(column).text().toLowerCase();
                                        return value.indexOf(inputContent) === -1;
                                    });
                                    /* Clean previous no-result if exist */
                                    $table.find('tbody .no-result').remove();
                                    /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
                                    $rows.show();
                                    $filteredRows.hide();
                                    /* Prepend no-result row if all rows are filtered */
                                    if ($filteredRows.length === $rows.length) {
                                        $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="' + $table.find('.filters th').length + '">No result found</td></tr>'));
                                    }
                                });
                            });
                            function sortTable() {
                                var table, rows, switching, i, x, y, shouldSwitch;
                                table = document.getElementById("myTable");
                                switching = true;
                                /*Make a loop that will continue until
                                 no switching has been done:*/
                                while (switching) {
                                    //start by saying: no switching is done:
                                    switching = false;
                                    rows = table.rows;
                                    /*Loop through all table rows (except the
                                     first, which contains table headers):*/
                                    for (i = 1; i < (rows.length - 1); i++) {
                                        //start by saying there should be no switching:
                                        shouldSwitch = false;
                                        /*Get the two elements you want to compare,
                                         one from current row and one from the next:*/
                                        x = rows[i].getElementsByTagName("TD")[1];
                                        y = rows[i + 1].getElementsByTagName("TD")[1];
                                        //check if the two rows should switch place:
                                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                            //if so, mark as a switch and break the loop:
                                            shouldSwitch = true;
                                            break;
                                        }
                                    }
                                    if (shouldSwitch) {
                                        /*If a switch has been marked, make the switch
                                         and mark that a switch has been done:*/
                                        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                                        switching = true;
                                    }
                                }
                            }
        </script>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>
</html>


