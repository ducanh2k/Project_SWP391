/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DepartmentDAO;
import dal.EmployeeDAO;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Department;
import model.Employee;

/**
 *
 * @author User
 */
public class Controller_Department extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DepartmentDAO dep_dao = new DepartmentDAO();
        EmployeeDAO e_dao = new EmployeeDAO();
        ArrayList<Department> list_dep = dep_dao.getListDep();
        ArrayList<Employee> list_manager = e_dao.getListManager();

        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = (HttpSession) request.getSession();
            String service = "list_dep";

            if (request.getParameter("service") != null) {
                service = request.getParameter("service");
            }

            //department list
            if (service.equals("list_dep")) {
                request.setAttribute("list_dep", list_dep);
                request.getRequestDispatcher("department_list.jsp").forward(request, response);
            }

            //view detail department
            if (service.equals("view_Dep")) {
                int did = Integer.parseInt(request.getParameter("did"));
                Department dep = dep_dao.getDep(did);
                request.setAttribute("dep_detail", dep);
                if (dep.getManagerID() != 0) {
                    Employee e = e_dao.getEmployee(dep.getManagerID());
                    list_manager.add(e);
                } else {
                    Employee e = new Employee();
                    e.setEid(0);
                    e.setName("---");
                    list_manager.add(e);
                }
                request.setAttribute("list_manager", list_manager);
                request.setAttribute("mode", "view");
                request.getRequestDispatcher("department_view.jsp").forward(request, response);
            }

            //edit, delete 
            if (service.equals("edit_del_Dep")) {
                if (request.getParameter("edit") != null) {
                    // edit deparment 
                    int did = Integer.parseInt(request.getParameter("did"));
                    Department dep = dep_dao.getDep(did);
                    if (dep.getManagerID() != 0) {
                        Employee e = e_dao.getEmployee(dep.getManagerID());
                        list_manager.add(e);
                    } else {
                        Employee e = new Employee();
                        e.setEid(0);
                        e.setName("---");
                        list_manager.add(e);
                    }
                    for (Employee employee : list_manager) {
                        if (employee.getDid() != did) {
                            list_manager.remove(employee);
                        }
                    }
                    request.setAttribute("dep_detail", dep);
                    request.setAttribute("list_dep", list_dep);
                    request.setAttribute("list_manager", list_manager);
                    request.setAttribute("mode", "edit");
                    request.getRequestDispatcher("department_view.jsp").forward(request, response);
                } else if (request.getParameter("delete") != null) {
                    //delete department 
                    int did = Integer.parseInt(request.getParameter("did"));
                    if(dep_dao.deleteDep(did)<=0){
                        Department dep = dep_dao.getDep(did);
                        dep.setIs_active(false);
                        dep_dao.update(dep);
                    }
                    response.sendRedirect("Department");
                }
            }

            //save department
            if (request.getParameter("save") != null) {
                int did = Integer.parseInt(request.getParameter("did"));
                String dname = request.getParameter("dname");
                boolean is_active = request.getParameter("is_active").equals("Active") ? true : false;
                int managerID = 0;
                if (request.getParameter("managerDep") != null) {
                    managerID = Integer.parseInt(request.getParameter("managerDep"));
                }
                Department dep = new Department(did, dname, is_active);
                dep.setManagerID(managerID);
                if (service.equals("save_edit_Dep")) {
                    dep_dao.update(dep);
                } else if (service.equals("save_add_Dep")) {
                    dep_dao.addDep(dep);
                }
                response.sendRedirect("Department");
            }

            //cancel 
            if (request.getParameter("cancel") != null) {
                //cancel edit
                int did = Integer.parseInt(request.getParameter("did"));
                Department dep = dep_dao.getDep(did);
                if (dep.getManagerID() != 0) {
                    Employee e = e_dao.getEmployee(dep.getManagerID());
                    list_manager.add(e);
                } else {
                    Employee e = new Employee();
                    e.setEid(0);
                    e.setName("---");
                    list_manager.add(e);
                }
                request.setAttribute("list_manager", list_manager);
                request.setAttribute("dep_detail", dep);
                request.setAttribute("mode", "view");
                request.getRequestDispatcher("department_view.jsp").forward(request, response);
            }

            //add new department 
            if (service.equals("add_Dep")) {
                int id_max = 1;
                for (Department department : list_dep) {
                    if (department.getDid() > id_max) {
                        id_max = department.getDid();
                    }
                }
                Department dep = new Department();
                dep.setDid(id_max + 1);
                request.setAttribute("dep_detail", dep);
                request.setAttribute("list_dep", list_dep);
                request.setAttribute("list_manager", list_manager);
                request.setAttribute("mode", "add");
                request.getRequestDispatcher("department_view.jsp").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}