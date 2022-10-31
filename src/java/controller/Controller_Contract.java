/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ContractDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contract;
import model.Employee;

/**
 *
 * @author User
 */
public class Controller_Contract extends HttpServlet {

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
        ContractDAO cdao = new ContractDAO();
        ArrayList<Contract> list_contract = cdao.getListContract();

        try ( PrintWriter out = response.getWriter()) {
            String service = "list_contract";
            HttpSession session = (HttpSession) request.getSession();

            if (request.getParameter("service") != null) {
                service = request.getParameter("service");
            }

            if (service.equals("list_contract")) {
                request.setAttribute("list_contract", list_contract);
                request.getRequestDispatcher("contract_list.jsp").forward(request, response);
            }

            if (service.equals("add_contract")) {
                EmployeeDAO edao = new EmployeeDAO();
                ArrayList<Employee> list_employee = edao.getAllEmployee();
                request.setAttribute("list_employee", list_employee);
                request.getRequestDispatcher("contract.jsp").forward(request, response);
            }

            if (service.equals("view")) {
                int cid = Integer.parseInt(request.getParameter("cid"));
                Contract c = cdao.getContract(cid);
                request.setAttribute("contract", c);
                request.setAttribute("mode", "view");
                request.getRequestDispatcher("contract_detail.jsp").forward(request, response);
            }

            if (service.equals("edit_del")) {
                if (request.getParameter("edit") != null) {
                    int cid = Integer.parseInt(request.getParameter("cid"));
                    Contract c = cdao.getContract(cid);
                    request.setAttribute("contract", c);
                    request.setAttribute("mode", "edit");
                    request.getRequestDispatcher("contract_detail.jsp").forward(request, response);
                } else if (request.getParameter("delete") != null) {
                    String cid = request.getParameter("cid");
                    try {
                        cdao.deleteContract(cid);
                    } catch (SQLException ex) {
                        Logger.getLogger(NewPwd.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    response.sendRedirect("Controller_Contract");
                }

            }

            if (request.getParameter("save") != null) {
                int cid = Integer.parseInt(request.getParameter("cid"));
                int eid = Integer.parseInt(request.getParameter("eid"));
                int did = Integer.parseInt(request.getParameter("did"));
                String name = request.getParameter("cName");
                String start = request.getParameter("start");
                String end = request.getParameter("end");
                String status = request.getParameter("status");
                String workingTime = request.getParameter("workingTime");
                Double salary = Double.parseDouble(request.getParameter("salary"));
                Contract c = new Contract(eid, did, name, start, end, status, workingTime, salary);
                c.setCid(cid);
                ContractDAO cd = new ContractDAO();

                if (service.equals("save_edit")) {
                    cd.editContract(c);
                }
                response.sendRedirect("Controller_Contract");
            }

            if (request.getParameter("cancel") != null) {
                //cancel edit
                int cid = Integer.parseInt(request.getParameter("cid"));
                Contract c = cdao.getContract(cid);
                request.setAttribute("contract", c);
                request.setAttribute("mode", "view");
                request.getRequestDispatcher("contract_detail.jsp").forward(request, response);
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
