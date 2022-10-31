/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ApprovalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Approval;

/**
 *
 * @author Dell
 */
public class ApprovalServlet extends HttpServlet {

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
            out.println("<title>Servlet ApprovalServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ApprovalServlet at " + request.getContextPath() + "</h1>");
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
        String text = request.getParameter("text");
        request.setAttribute("text", text);
        request.getRequestDispatcher("createApproval.jsp").forward(request, response);
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
        String ao = request.getParameter("ao");
        String petitioner = request.getParameter("petitioner");
        String category = request.getParameter("Category");
        String des = request.getParameter("des");
        String approver = request.getParameter("approver");
        String properties = ao;
        if (request.getParameter("date") != null) {
            properties += " " + request.getParameter("date");
        }
        if (request.getParameter("from") != null) {
            properties += " " + request.getParameter("from");
        }
        if (request.getParameter("to") != null) {
            properties += " " + request.getParameter("to");
        }
        if (request.getParameter("location") != null) {
            properties += " " + request.getParameter("location");
        }
        if (request.getParameter("contact") != null) {
            properties += " " + request.getParameter("contact");
        }
        if (request.getParameter("total") != null) {
            properties += " " + request.getParameter("total");
        }
        if (request.getParameter("code") != null) {
            properties += " " + request.getParameter("code");
        }
        if (request.getParameter("quantity") != null) {
            properties += " " + request.getParameter("quantity");
        }
        Approval a = new Approval(ao, petitioner, category, des, approver, properties);
        ApprovalDAO ad = new ApprovalDAO();
        out.print(a);
        try {
            ad.insert(a);
        } catch (SQLException ex) {
            Logger.getLogger(ApprovalServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("pform").forward(request, response);
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
