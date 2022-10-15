/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.ContractDAO;
import dal.DepartmentDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Contract;

/**
 *
 * @author Dell
 */
public class ContractServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Contract</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Contract at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String message = "";
        EmployeeDAO ed = new EmployeeDAO();
        DepartmentDAO dd = new DepartmentDAO();
        ContractDAO cd = new ContractDAO();
        int eid = Integer.parseInt(request.getParameter("eid"));
        if (ed.getEmployee(eid) == null) {
            message = "Employee not exist";
        }
        int did = Integer.parseInt(request.getParameter("did"));
        if (dd.getDep(did) == null) {
            message = "Department not exist";
        }
        String name = request.getParameter("cName");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
//        String status = request.getParameter("status");
        String workingTime = request.getParameter("workingTime");
        Double salary = Double.parseDouble(request.getParameter("salary"));
        Contract c = new Contract(eid, did, name, start, end, "Open", workingTime, salary);
        if (c != null) {
            cd.createContract(c);
            message = "create successful";
        }
        request.setAttribute("mes", message);
        request.getRequestDispatcher("contract.jsp").forward(request, response);
    }
    

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
