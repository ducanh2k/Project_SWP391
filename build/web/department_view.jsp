<%-- 
    Document   : department_view
    Created on : Sep 16, 2022, 11:11:03 AM
    Author     : User
--%>

<%@page import="model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Department"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Department> list_dep = new ArrayList<Department>();
    Department dep_detail = (Department) request.getAttribute("dep_detail");
    String mode = (String) request.getAttribute("mode");
    if (!mode.equals("view")) {
        list_dep = (ArrayList<Department>) request.getAttribute("list_dep");
    }
    ArrayList<Employee> list_manager = (ArrayList<Employee>) request.getAttribute("list_manager");
%>

<html style="font-size: 16px;" lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="utf-8"/>
        <meta name="keywords" content="​​Department Detail"/>
        <meta name="description" content=""/>        
        <link rel="stylesheet" href="css/nicepage.css" media="screen"/>
        <link rel="stylesheet" href="css/Home.css" media="screen"/>

        <%if (mode == "view") {%>
        <title>Department Detail</title>
        <%} else if (mode == "edit") {%>
        <title>Edit Department </title>
        <%} else if (mode == "add") {%>
        <title>Add Department </title>
        <%}%>
    </head>
    <%
        HttpSession session1 = request.getSession();
        String role = (String) session1.getAttribute("role");
    %>
    <body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode" data-lang="en">
        <jsp:include page="sideMenu.jsp"></jsp:include>
            <section class="u-clearfix u-section-1" id="carousel_e146">
                <div class="u-clearfix u-sheet u-sheet-1">
                    <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
                        <div class="u-layout">
                            <div class="u-layout-row">
                                <div class="u-align-left u-container-style u-layout-cell u-palette-1-light-3 u-size-41 u-layout-cell-1">
                                    <div class="u-container-layout u-container-layout-1">                                        
                                    <%if (mode == "view") {%>
                                    <h2 class="u-custom-font u-font-montserrat u-text u-text-1">Department detail</h2>
                                    <%} else if (mode == "edit") {%>
                                    <h2 class="u-custom-font u-font-montserrat u-text u-text-1">Edit Department </h2>
                                    <%} else if (mode == "add") {%>
                                    <h2 class="u-custom-font u-font-montserrat u-text u-text-1">Add Department </h2>
                                    <%}%>
                                    <div class="u-expanded-width-sm u-expanded-width-xs u-form u-form-1">
                                        <form action="Department" class="u-clearfix u-form-spacing-24 u-form-vertical u-inner-form" source="email" name="form" style="padding: 6px;">
                                            <div class="u-form-group u-form-name u-label-left u-form-group-1">
                                                <label for="name-e0f0" class="u-label u-spacing-12 u-label-1">Department ID : </label>                                                    
                                                <input disabled value="${dep_detail.getDid()}" type="text"  placeholder="Department ID" id="name-e0f0" name="did" class="u-input u-input-rectangle u-radius-7 u-white u-input-1" required=""/>
                                            </div>
                                            <div class="u-form-email u-form-group u-label-left u-form-group-2">
                                                <label for="email-e0f0" class="u-label u-spacing-12 u-label-2">Department name : </label>
                                                <input <%if (mode.equals("add")) {%> value="" <%} else if (mode.equals("view")) {%> disabled value="${dep_detail.getDname()}"<%} else if (mode.equals("edit")) {%> value="${dep_detail.getDname()}" <%}%>
                                                                                     type="text" placeholder="Department name" id="name-e0f0" name="dname" class="u-input u-input-rectangle u-radius-7 u-white u-input-2" required=""
                                                                                     <%if (mode.equals("add") || mode.equals("edit")) {%> onfocusout="myFunction()" <%}%>/>
                                            </div>

                                            <div class="u-form-email u-form-group u-label-left u-form-group-2">
                                                <label for="email-e0f0" class="u-label u-spacing-12 u-label-2">Head of Department : </label>
                                                <div class="u-form-select-wrapper" style="width: 100%">
                                                    <select <%if (mode == "view" || mode == "add") {%> disabled <%}%> id="select-73f7" name="managerDep" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-7 u-white u-input-3">
                                                        <%if (mode == "add") {%>
                                                        <option value="0" selected >---</option>
                                                        <%} else {
                                                            for (Employee e : list_manager) {%>
                                                        <option value="<%=e.getEid()%>" <%if (dep_detail.getManagerID() == e.getEid()) {%> selected <%}%>><%=e.getName()%></option>
                                                        <%}
                                                            }%>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="u-form-group u-form-select u-label-left u-form-group-3">
                                                <label for="select-73f7" class="u-label u-spacing-12 u-label-3">Active status : </label>
                                                <div class="u-form-select-wrapper" style="width: 50%">
                                                    <select <%if (mode == "view" || mode == "add") {%> disabled <%}%> id="select-73f7" name="is_active" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-radius-7 u-white u-input-3">
                                                        <%if (mode == "add") {%>
                                                        <option value="Active" selected >Active</option>
                                                        <option value="Deactive" >Deactive</option>
                                                        <%} else {%>
                                                        <option value="Active" <%if (dep_detail.isIs_active() == true) {%> selected <%}%>>Active</option>
                                                        <option value="Deactive" <%if (dep_detail.isIs_active() == false) {%> selected <%}%>>Deactive</option>
                                                        <%}%>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="u-form-group u-form-submit u-label-left u-form-group-4">
                                                <label class="u-label u-spacing-12 u-label-4"></label>
                                                <input type="submit" value="submit" class="u-form-control-hidden"/>
                                                <div class="u-align-left u-btn-submit-container">
                                                    <%if (mode == "view") {%>
                                                    <%
                                                        if (role.trim().equalsIgnoreCase("admin")) {
                                                    %>
                                                    <input class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1" type="submit" name="edit" value="EDIT"/>      
                                                    <input class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1" type="submit" name="delete" value="DELETE"/> 
                                                    <%}%>
                                                    <a role="button" href="Department" class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1">BACK TO LIST</a>
                                                    <input type="hidden" name="service" value="edit_del_Dep"/>
                                                    <input type="hidden" name="did" value="${dep_detail.getDid()}"/>
                                                    <%} else if (mode == "edit") {%>
                                                    <input class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1" type="submit" name="save" value="SAVE"/>      
                                                    <input class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1" type="submit" name="cancel" value="CANCEL"/>  
                                                    <input type="hidden" name="service" value="save_edit_Dep"/>
                                                    <input type="hidden" name="did" value="${dep_detail.getDid()}"/>
                                                    <%} else if (mode == "add") {%>
                                                    <input class="u-btn u-btn-round u-btn-submit u-button-style u-radius-4 u-btn-1" type="submit" name="save" value="SAVE"/>     
                                                    <input type="hidden" name="service" value="save_add_Dep"/>
                                                    <input type="hidden" name="did" value="${dep_detail.getDid()}"/>
                                                    <input type="hidden" name="is_active" value="Active"/>
                                                    <%}%>
                                                </div>  
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
    <script>
        function myFunction() {
            var dname = document.getElementById('name-e0f0').value;
            if (dname.length === 0)
            {
                window.alert("Department name is required.\n");
            }

        }
        }
    </script>
</body>

</html>

