/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;

/**
 *
 * @author DUCHIEUPC.COM
 */
public class EmployeeDetail extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        EmployeeDAO edao = new EmployeeDAO();
        ArrayList<Employee> list_e = edao.getAllEmployee();

        try ( PrintWriter out = response.getWriter()) {
            String service = "";

            if (request.getParameter("service") != null) {
                service = request.getParameter("service");
            }

            if (service.equals("view")) {
                String eid = request.getParameter("eid");
                Employee e = edao.getEmployeeDetail(eid);
                request.setAttribute("mode", "view");
                request.setAttribute("e", e);
                request.getRequestDispatcher("employeedetail.jsp").forward(request, response);
            }

            if (service.equals("edit")) {
                // edit deparment 
                String eid = request.getParameter("eid");
                Employee e = edao.getEmployeeDetail(eid);
                request.setAttribute("e", e);
                request.setAttribute("list_e", list_e);
                request.setAttribute("mode", "edit");
                request.getRequestDispatcher("employeedetail.jsp").forward(request, response);
            }
            
            if (service.equals("save_edit_em")) {
                Employee e = new Employee();
                e.setEid(Integer.parseInt(request.getParameter("eid")));
                e.setName(request.getParameter("ename"));
                e.setDid(Integer.parseInt(request.getParameter("did")));
                e.setCertificateID(Integer.parseInt(request.getParameter("cid")));
                e.setManager(request.getParameter("manager"));
                e.setWorkingTime(request.getParameter("work_time"));
                e.setApprover(request.getParameter("approver"));
                e.setWorkingPlace(request.getParameter("work_place"));
                e.setEmail(request.getParameter("email"));
                e.setEmergencyContact(Integer.parseInt(request.getParameter("e_contact")));
                e.setResearchArea(request.getParameter("reserach_area"));
                e.setPhone(Integer.parseInt(request.getParameter("phone")));
                e.setNationality(request.getParameter("nation"));
                e.setPassport(Integer.parseInt(request.getParameter("passport")));    
                e.setBirthPlace(request.getParameter("birth_place"));    
                e.setVisaNumber(Integer.parseInt(request.getParameter("visa")));    
                e.setWorkLicenseNumber(Integer.parseInt(request.getParameter("work_license")));    
                e.setVisaExpirationDate(request.getParameter("visa_date"));    
                e.setPosition(request.getParameter("position"));    
                boolean gender = request.getParameter("gender").equals("Male") ? true : false;
                edao.UpdateEmployee(e);
                response.sendRedirect("EmployeeList");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDetail.class.getName()).log(Level.SEVERE, null, ex);
        }
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
