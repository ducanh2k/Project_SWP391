package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Contract;

public final class contract_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");

    HttpSession session1 = request.getSession();
    String role = (String) session1.getAttribute("role");
    Contract c = (Contract) request.getAttribute("contract");
    String mode = (String) request.getAttribute("mode");

      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <!-- Required meta tags-->\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <meta name=\"description\" content=\"Colorlib Templates\">\r\n");
      out.write("        <meta name=\"author\" content=\"Colorlib\">\r\n");
      out.write("        <meta name=\"keywords\" content=\"Colorlib Templates\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Title Page-->        \r\n");
      out.write("        <title>");
if (mode.equals("edit")) {
      out.write("Edit Contract");
} else if (mode.equals("view")) {
      out.write("Contract Detail");
}
      out.write("</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Icons font CSS-->\r\n");
      out.write("        <link href=\"vendor/mdi-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("        <link href=\"vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("        <!-- Font special for pages-->\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Vendor CSS-->\r\n");
      out.write("        <link href=\"vendor/select2/select2.min.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("        <link href=\"vendor/datepicker/daterangepicker.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Main CSS-->\r\n");
      out.write("        <link href=\"css/main_1.css\" rel=\"stylesheet\" media=\"all\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"page-wrapper bg-blue p-t-180 p-b-100 font-robo\">\r\n");
      out.write("            <div class=\"wrapper wrapper--w960\">\r\n");
      out.write("                <div class=\"card card-2\">\r\n");
      out.write("                    <!--                    <div class=\"card-heading\"></div>-->\r\n");
      out.write("                    <div class=\"card-body\">\r\n");
      out.write("                        <h2 class=\"title\">");
if (mode.equals("edit")) {
      out.write("Edit Contract");
} else if (mode.equals("view")) {
      out.write("Contract Detail");
}
      out.write("</h2>\r\n");
      out.write("                        <form action=\"Controller_Contract\" method=\"POST\">\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <label class=\"input--style-2 js-datepicker\">Contract Name</label>\r\n");
      out.write("                                <input ");
if (mode == "view") {
      out.write(" readonly ");
}
      out.write(" class=\"input--style-2\" type=\"text\" placeholder=\"Contract Name\" name=\"cName\" value=\"");
      out.print(c.getName());
      out.write("\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row row-space\">\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <input type=\"hidden\" name=\"eid\" value=\"");
      out.print(c.getEid());
      out.write("\">\r\n");
      out.write("                                    <label class=\"input--style-2 js-datepicker\">Employee Name</label>\r\n");
      out.write("                                    <input readonly class=\"input--style-2\" type=\"text\" placeholder=\"Employee Name\" name=\"eName\" value=\"");
      out.print(c.getEname());
      out.write("\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <input type=\"hidden\" name=\"did\" value=\"");
      out.print(c.getDid());
      out.write("\">\r\n");
      out.write("                                <!--                                <div class=\"input-group\">\r\n");
      out.write("                                                                    <input type=\"hidden\" name=\"did\" value=\"\">\r\n");
      out.write("                                                                    <input class=\"input--style-2\" type=\"text\" placeholder=\" Department Name\" name=\"dName\">\r\n");
      out.write("                                                                </div>-->\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row row-space\">\r\n");
      out.write("                                <div class=\"col-2\">\r\n");
      out.write("                                    <div class=\"input-group\">\r\n");
      out.write("                                        <label class=\"input--style-2 js-datepicker\">Starting Date</label>\r\n");
      out.write("                                        <input ");
if (mode == "view") {
      out.write(" disabled ");
}
      out.write(" class=\"input--style-2 js-datepicker\" type=\"text\" placeholder=\"Starting Date\" name=\"start\" value=\"");
      out.print(c.getStartingDate());
      out.write("\">\r\n");
      out.write("                                        <i class=\"zmdi zmdi-calendar-note input-icon js-btn-calendar\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-2\">\r\n");
      out.write("                                    <div class=\"input-group\">\r\n");
      out.write("                                        <label class=\"input--style-2 js-datepicker\">Ending Date</label>\r\n");
      out.write("                                        <input ");
if (mode == "view") {
      out.write(" disabled ");
}
      out.write(" class=\"input--style-2 js-datepicker\" type=\"text\" placeholder=\"End Date\" name=\"end\" value=\"");
      out.print(c.getEndDate());
      out.write("\">\r\n");
      out.write("                                        <i class=\"zmdi zmdi-calendar-note input-icon js-btn-calendar\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"input-group\">\r\n");
      out.write("                                <label class=\"input--style-2 js-datepicker\">Working Time in week</label>\r\n");
      out.write("                                <div class=\"rs-select2 js-select-simple select--no-search\">\r\n");
      out.write("                                    <select ");
if (mode == "view") {
      out.write(" disabled ");
}
      out.write(" name=\"workingTime\">\r\n");
      out.write("                                        <!--<option disabled=\"disabled\" selected=\"selected\">Working Time in week</option>-->\r\n");
      out.write("                                        <option ");
if (c.getWorkingTime().equals("")) {
      out.write("selected");
}
      out.write(">/---/</option>\r\n");
      out.write("                                        <option ");
if (c.getWorkingTime().equals("42h")) {
      out.write("selected");
}
      out.write(">42h</option>\r\n");
      out.write("                                        <option ");
if (c.getWorkingTime().equals("40h")) {
      out.write("selected");
}
      out.write(">40h</option>\r\n");
      out.write("                                        <option ");
if (c.getWorkingTime().equals("38h")) {
      out.write("selected");
}
      out.write(">38h</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                    <div class=\"select-dropdown\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row row-space\">\r\n");
      out.write("                                <div class=\"col-2\">\r\n");
      out.write("                                    <label class=\"input--style-2 js-datepicker\">Status</label>\r\n");
      out.write("                                    <div class=\"rs-select2 js-select-simple select--no-search\">\r\n");
      out.write("                                        <select ");
if (mode == "view") {
      out.write(" disabled ");
}
      out.write(" name=\"status\">\r\n");
      out.write("                                            <!--<option disabled=\"disabled\" selected=\"selected\">Status</option>-->\r\n");
      out.write("                                            <option ");
if (c.getStatus().equals("")) {
      out.write("selected");
}
      out.write(">/---/</option>\r\n");
      out.write("                                            <option ");
if (c.getStatus().equals("Opened")) {
      out.write("selected");
}
      out.write(">Opened</option>\r\n");
      out.write("                                            <option ");
if (c.getStatus().equals("Expired")) {
      out.write("selected");
}
      out.write(">Expired</option>\r\n");
      out.write("                                        </select>\r\n");
      out.write("                                        <div class=\"select-dropdown\"></div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"col-2\">\r\n");
      out.write("                                    <label class=\"input--style-2 js-datepicker\">Salary</label>\r\n");
      out.write("                                    <div class=\"input-group\">\r\n");
      out.write("                                        <input ");
if (mode == "view") {
      out.write(" readonly ");
}
      out.write(" class=\"input--style-2\" id=\"id_salary\" type=\"number\" name=\"salary\" value=\"");
      out.print(c.getSalary());
      out.write("\" pattern=\"[0-9]\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"p-t-30\">\r\n");
      out.write("                                ");
if (mode.equals("edit")) {
      out.write("\r\n");
      out.write("                                <input class=\"btn btn--radius btn--green\" type=\"submit\" onclick=\"alert('Successful')\" name=\"save\" value=\"Save\">\r\n");
      out.write("                                <input class=\"btn btn--radius btn--red\" type=\"submit\" name=\"cancel\" value=\"Cancel\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"service\" value=\"save_edit\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"cid\" value=\"");
      out.print(c.getCid());
      out.write("\">\r\n");
      out.write("                                ");
} else if (mode.equals("view")) {
      out.write("\r\n");
      out.write("                                <input class=\"btn btn--radius btn--green\" type=\"submit\" name=\"edit\" value=\"Edit\">\r\n");
      out.write("                                <input class=\"btn btn--radius btn--red\" type=\"submit\" onclick=\"confirmAction()\" name =\"delete\" value=\"Delete\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"service\" value=\"edit_del\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"cid\" value=\"");
      out.print(c.getCid());
      out.write("\">\r\n");
      out.write("                                ");
}
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script>\r\n");
      out.write("            var inputBox = document.getElementById(\"id_salary\");\r\n");
      out.write("\r\n");
      out.write("            var invalidChars = [\r\n");
      out.write("                \"-\",\r\n");
      out.write("                \"+\",\r\n");
      out.write("                \"e\",\r\n");
      out.write("            ];\r\n");
      out.write("\r\n");
      out.write("            inputBox.addEventListener(\"input\", function () {\r\n");
      out.write("                this.value = this.value.replace(/[e\\+\\-]/gi, \"\");\r\n");
      out.write("            });\r\n");
      out.write("\r\n");
      out.write("            inputBox.addEventListener(\"keydown\", function (e) {\r\n");
      out.write("                if (invalidChars.includes(e.key)) {\r\n");
      out.write("                    e.preventDefault();\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("            function confirmAction() {\r\n");
      out.write("                let confirmAction = confirm(\"Are you sure?\");\r\n");
      out.write("                if (confirmAction) {\r\n");
      out.write("                    alert(\"Successful\");\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Jquery JS-->\r\n");
      out.write("        <script src=\"vendor/jquery/jquery.min.js\"></script>\r\n");
      out.write("        <!-- Vendor JS-->\r\n");
      out.write("        <script src=\"vendor/select2/select2.min.js\"></script>\r\n");
      out.write("        <script src=\"vendor/datepicker/moment.min.js\"></script>\r\n");
      out.write("        <script src=\"vendor/datepicker/daterangepicker.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <!-- Main JS-->\r\n");
      out.write("        <script src=\"js/global.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
