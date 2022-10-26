/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

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
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.net.URLDecoder;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Attendant;
import model.Department;
import model.Employee;
import model.Role;

/**
 *
 * @author Dell
 */
public class AttendantServlet extends HttpServlet {

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
            out.println("<title>Servlet AttendantServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AttendantServlet at " + request.getContextPath() + "</h1>");
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

    public static void writeToFile(String filename) {
        try {
            File file = new File(filename);
            FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
            BufferedWriter bw = new BufferedWriter(fw);
            bw.newLine();
            bw.close();
        } catch (IOException ex) {
            System.out.println(ex);
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
        PrintWriter out = response.getWriter();
        try {

            AccountDAO ad = new AccountDAO();
            String path = this.getClass().getClassLoader().getResource("").getPath();
            String fullPath = URLDecoder.decode(path, "UTF-8");
            String pathArr[] = fullPath.split("/build/web/WEB-INF/classes/");
            List<Attendant> list = readFromFile(pathArr[0] + "/src/java/data/EmployeeAttendant.txt");
            HttpSession session = request.getSession();
            Account a = (Account) session.getAttribute("account");
            if (ad.getRoleName(a).equalsIgnoreCase("admin") && request.getParameter("Filter") == null) {
                if (request.getParameter("eid") != null) {
                    List<Attendant> listEmp = new ArrayList<>();
                    for (Attendant attendant : list) {
                        if (attendant.getEmployee().getEid() == Integer.parseInt(request.getParameter("eid"))) {
                            listEmp.add(attendant);
                        }
                    }
                    session.setAttribute("eid", request.getParameter("eid"));
                    request.setAttribute("listAttend", listEmp);
                } else {
                    request.setAttribute("listAttend", list);
                    List<Attendant> listEmp = new ArrayList<>();
                    for (Attendant attendant : list) {
                        if (attendant.getEmployee().getEid() == Integer.parseInt(request.getParameter("eid"))) {
                            listEmp.add(attendant);
                        }
                    }
                    request.setAttribute("listAttend", listEmp);
                }
                request.getRequestDispatcher("attendant.jsp").forward(request, response);
            } else if (request.getParameter("Filter") != null) {
                String eid = request.getParameter("eid");
                String start = request.getParameter("start");
                String end = request.getParameter("end");
                List<Attendant> listEmp = new ArrayList<>();
                out.print(eid);
                LocalDate attendDate;
                int count = 0;
                for (Attendant attendant : list) {
                    DateTimeFormatter df = DateTimeFormatter.ofPattern("dd-MM-yyyy");
                    attendDate = LocalDate.parse(attendant.getDate(), df);
                    if (attendDate.toString().compareTo(start) > 0 && attendDate.toString().compareTo(end) < 0 && attendant.getEmployee().getEid() == Integer.parseInt(eid)) {
                        listEmp.add(attendant);
                    }
                }
                request.setAttribute("listAttend", listEmp);
                request.getRequestDispatcher("attendant.jsp").forward(request, response);
            } else {
                List<Attendant> listEmp = new ArrayList<>();
                for (Attendant attendant : list) {
                    if (attendant.getEmployee().getEid() == a.getEid()) {
                        listEmp.add(attendant);
                    }
                }
                request.setAttribute("listAttend", listEmp);
            }
            request.getRequestDispatcher("attendant.jsp").forward(request, response);
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
        String start = request.getParameter("start");
        String end = request.getParameter("end");

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
