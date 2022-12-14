/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ApplicationDAO;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Application;

/**
 *
 * @author Admin
 */
public class ApplicationApproval extends HttpServlet {

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
        ApplicationDAO adao = new ApplicationDAO();
        try ( PrintWriter out = response.getWriter()) {
            String service = "view";
            HttpSession session = (HttpSession) request.getSession();
            if (service.equals("view")) {
                int aid = Integer.parseInt(request.getParameter("aid"));
                Application a = adao.getApplication(aid);
                request.setAttribute("application", a);
                request.setAttribute("mode", "view");
                request.getRequestDispatcher("application.jsp").forward(request, response);
            }
            if (service.equals("approval")) {
                if (request.getParameter("approve") != null) {
                    int aid = Integer.parseInt(request.getParameter("aid"));
                    adao.approveApp(aid);
                } else if (request.getParameter("reject") != null) {
                    int aid = Integer.parseInt(request.getParameter("aid"));
                    adao.rejectApp(aid);
                    response.sendRedirect("ApplicationList");
                }

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        ApplicationDAO adao = new ApplicationDAO();
        if (request.getParameter("approve") != null) {
            int aid = Integer.parseInt(request.getParameter("aid"));
            adao.approveApp(aid);
            try {
                response.sendRedirect("ApplicationList");
            } catch (IOException ex) {
                Logger.getLogger(ApplicationApproval.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (request.getParameter("reject") != null) {
            int aid = Integer.parseInt(request.getParameter("aid"));
            adao.rejectApp(aid);
            try {
                response.sendRedirect("ApplicationList");
            } catch (IOException ex) {
                Logger.getLogger(ApplicationApproval.class.getName()).log(Level.SEVERE, null, ex);
            }
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
