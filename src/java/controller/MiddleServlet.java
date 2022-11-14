/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DepartmentDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Employee;

/**
 *
 * @author Dell
 */
public class MiddleServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MiddleServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MiddleServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        PrintWriter out = response.getWriter();
        DepartmentDAO dd = new DepartmentDAO();
        EmployeeDAO ed = new EmployeeDAO();
        String name = request.getParameter("name");
        int phone = Integer.parseInt(request.getParameter("phone"));
        String email = request.getParameter("email");
        int managerID = Integer.parseInt(request.getParameter("manager"));
        String gender = request.getParameter("gender");
        boolean gender_raw = true;
        if (gender.equalsIgnoreCase("female")) {
            gender_raw = false;
        }
        int did = Integer.parseInt(request.getParameter("dname"));
        String workPlace = request.getParameter("workingPlace");        
        
        String mentor = request.getParameter("mentor");
        int mid = ed.getEmID(mentor);
        int eContact = Integer.parseInt(request.getParameter("eContact"));
        String nation = request.getParameter("nationality");
        int passport = Integer.parseInt(request.getParameter("passport"));
//        int visa = Integer.parseInt(request.getParameter("visaNumber"));
        int work = Integer.parseInt(request.getParameter("work"));
        String approver = request.getParameter("approver");
        String cerLevel = request.getParameter("cerLevel");
        int cerID = dd.getCerID(cerLevel);      
        
        int idNumber = Integer.parseInt(request.getParameter("idNumber"));
        String research = request.getParameter("research");
        String visaDate = request.getParameter("visaDate");
        String workDate = request.getParameter("workDate");
        String position = request.getParameter("position");
        String workTime = request.getParameter("workTime");
        
        String cerLink = request.getParameter("cerLink");
        String birth = request.getParameter("birthPlace");
        Employee e = new Employee(did, name, mid, cerID, managerID+"", workTime, approver, workPlace, email, eContact, phone, cerLink, research, nation, idNumber, passport, gender_raw, birth, 0, work, visaDate, workDate, position);

        e.setStrVisa(request.getParameter("visaNumber"));
        ed.insertEmp(e);
        response.sendRedirect("EmployeeList");
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
