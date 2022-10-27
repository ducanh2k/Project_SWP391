/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import static controller.AttendantServlet.readFromFile;
import dal.AccountDAO;
import dal.DepartmentDAO;
import dal.EmployeeDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.FileReader;
import java.net.URLDecoder;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendant;
import model.Department;
import model.Employee;
import model.salaryInfo;

/**
 *
 * @author Dell
 */
public class SalaryServlet extends HttpServlet {

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
            out.println("<title>Servlet SalaryServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SalaryServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    public static List<model.Attendant> readFromFile(String filename) throws ParseException {
        try {
            EmployeeDAO ed = new EmployeeDAO();
            DepartmentDAO dd = new DepartmentDAO();
            FileReader reader = new FileReader(filename);
            BufferedReader br = new BufferedReader(reader);
            List<Attendant> list = new ArrayList<Attendant>();
            String line;
            String[] arr = {};
            while ((line = br.readLine()) != null) {
                arr = line.split("&");
                int id = Integer.parseInt(arr[0]);
                String date = arr[1];
                Employee emp = ed.getEmployee(Integer.parseInt(arr[2]));
                String room = arr[3];
                Department d = dd.getDep(Integer.parseInt(arr[4]));
                String status = arr[5];
                Attendant a = new Attendant(id, date, emp, room, d, status);
                list.add(a);

            }
            reader.close();
            return list;
        } catch (IOException e) {
            System.out.println(e);
        }
        return null;
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
            PrintWriter out = response.getWriter();
            AccountDAO ad = new AccountDAO();
            String path = this.getClass().getClassLoader().getResource("").getPath();
            String fullPath = URLDecoder.decode(path, "UTF-8");
            String pathArr[] = fullPath.split("/build/web/WEB-INF/classes/");
            List<Attendant> list = readFromFile(pathArr[0] + "/src/java/data/EmployeeAttendant.txt");
            HttpSession session = request.getSession();
            String eid = request.getParameter("eid");
            int count = 0;
            String day = "";
            for (Attendant attendant : list) {
                if (attendant.getEmployee().getEid() == Integer.parseInt(eid)) {
                    if (attendant.isStatus().equalsIgnoreCase("absent")) {
                        count++;
                    }
                    day = attendant.getDate();
                }
            }
            EmployeeDAO ed = new EmployeeDAO();
            DepartmentDAO dd = new DepartmentDAO();
            Employee e = ed.getEmployee(Integer.parseInt(eid));
            double cs = 0;
            if (dd.getCName(e.getCertificateID()).equalsIgnoreCase("graduate")) {
                cs += 2.1;
            } else if (dd.getCName(e.getCertificateID()).equalsIgnoreCase("bachelor")) {
                cs += 2.34;
            } else if (dd.getCName(e.getCertificateID()).equalsIgnoreCase("master")) {
                cs += 2.67;
            } else if (dd.getCName(e.getCertificateID()).equalsIgnoreCase("doctor")) {
                cs += 3.0;
            } else {
                cs += 1.86;
            }
            request.setAttribute("day", day);
            request.setAttribute("eid", eid);
            request.setAttribute("cs", cs);
            request.setAttribute("ol", count);
            request.getRequestDispatcher("salaryInformation.jsp").forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(AttendantServlet.class.getName()).log(Level.SEVERE, null, ex);
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
        String day = request.getParameter("day");
        String eid = request.getParameter("eid");
        String cs = request.getParameter("cs");
        String ol = request.getParameter("ol");
        String hw = request.getParameter("hw");
        String sa = request.getParameter("sa");
        String bonus = request.getParameter("bonus");
        String ii = request.getParameter("ii");
        salaryInfo si = new salaryInfo(eid, cs, ol, hw, sa, bonus, ii);
        EmployeeDAO ed = new EmployeeDAO();
        DepartmentDAO dd = new DepartmentDAO();
        Employee e = ed.getEmployee(Integer.parseInt(eid));
        Department d = dd.getDep(e.getDid());
        double basic = Double.parseDouble(cs) * 1600000;
        double total = basic + Double.parseDouble(ol) + Double.parseDouble(hw) + Double.parseDouble(sa) + Double.parseDouble(bonus) + Double.parseDouble(ii);
        request.setAttribute("emp", e);
        request.setAttribute("dep", d);
        request.setAttribute("si", si);
        request.setAttribute("basic", basic);
        request.setAttribute("total", total);
        request.setAttribute("day", day);
        request.getRequestDispatcher("salary.jsp").forward(request, response);
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
