/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Employee;

/**
 *
 * @author Dell
 */
public class Profile extends HttpServlet {

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
            out.println("<title>Servlet Profile</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Profile at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        EmployeeDAO ed = new EmployeeDAO();
        Employee emp = (Employee) session.getAttribute("employee");
        List<Employee> list = new LinkedList<>();
        list.add(emp);
        request.setAttribute("list", list);
        request.getRequestDispatcher("profile.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        int eid = Integer.parseInt(request.getParameter("id"));
        int did = Integer.parseInt(request.getParameter("department"));
        String name = request.getParameter("fullname");
        int mentor = Integer.parseInt(request.getParameter("mentor"));
        int cerID = Integer.parseInt(request.getParameter("certificate"));
        String manager = request.getParameter("manager");
        String work = request.getParameter("workingTime");
        String approver = request.getParameter("approver");
        String place = request.getParameter("workingPlace");
        String email = request.getParameter("email");
        int eContact = Integer.parseInt(request.getParameter("emergencyContact"));
        int phone = Integer.parseInt(request.getParameter("phone"));
        String picture = request.getParameter("img");
        String cLevel = request.getParameter("certificateLevel");
        String rArea = request.getParameter("researchArea");
        String nation = request.getParameter("nationality");
        int idNumber = Integer.parseInt(request.getParameter("idNumber"));
        int passport = Integer.parseInt(request.getParameter("passport"));
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String bPlace = request.getParameter("birthplace");
        int vNumber = Integer.parseInt(request.getParameter("visaNumber"));
        int wNumber = Integer.parseInt(request.getParameter("workLicenseNumber"));
        String vDate = request.getParameter("visaExpirationDate");
        String wDate = request.getParameter("workLicenseExpirationDate");
        String position = request.getParameter("position");
        Employee employee = new Employee(eid, did, name, mentor, cerID, manager, work, approver, place, email, eContact, phone, picture, cLevel, rArea, nation, idNumber, passport, gender, bPlace, vNumber, wNumber, vDate, wDate, position);
        EmployeeDAO ed = new EmployeeDAO();
        try {
            ed.Update(employee);
        } catch (SQLException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        }
//        out.print(picture);
        session.setAttribute("employee", employee);
        response.sendRedirect("profile");
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
