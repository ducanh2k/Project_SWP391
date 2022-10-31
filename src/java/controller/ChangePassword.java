/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String password = (String) session.getAttribute("password");
        String username = (String) session.getAttribute("username");
        String newPassword = request.getParameter("new");
        String currentPassword = request.getParameter("old");
        String confirmPassword = request.getParameter("confirm");
        request.setAttribute("username", username);
        if(confirmPassword.equals(newPassword)){
        try {
            AccountDAO ad = new AccountDAO();
            String user = request.getParameter("username");
            ad.changePass(newPassword, user);
            response.sendRedirect("profile");
        } catch (SQLException ex) {
            Logger.getLogger(ChangePassword.class.getName()).log(Level.SEVERE, null, ex);
        }
        out.print("Your password has been changed");
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
