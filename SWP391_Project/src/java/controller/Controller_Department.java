/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DepartmentDAO;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Department;

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

        try ( PrintWriter out = response.getWriter()) {
            HttpSession session = (HttpSession) request.getSession();
            String service = "list_dep";

            if (request.getParameter("service") != null) {
                service = request.getParameter("service");
            }
            if (service.equals("list_dep")) {
                ArrayList<Department> list_dep = dep_dao.getListDep();
//                ArrayList<Department> list_dep = new ArrayList<>();
//                Department d1 = new Department(0, "abc", true);
//                d1.setCount_employee(2);
//                list_dep.add(d1);
                request.setAttribute("list_dep", list_dep);
                request.getRequestDispatcher("department_list.jsp").forward(request, response);
            }else if(service=="view_Dep"){
                int did = (int) session.getAttribute("did");
                Department dep = dep_dao.getDep(did);
                request.setAttribute("dep_detail", dep);
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
