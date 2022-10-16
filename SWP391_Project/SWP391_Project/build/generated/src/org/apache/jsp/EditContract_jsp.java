package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class EditContract_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags-->\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"Colorlib Templates\">\n");
      out.write("        <meta name=\"author\" content=\"Colorlib\">\n");
      out.write("        <meta name=\"keywords\" content=\"Colorlib Templates\">\n");
      out.write("\n");
      out.write("        <!-- Title Page-->\n");
      out.write("        <title>Edit Contract</title>\n");
      out.write("\n");
      out.write("        <!-- Icons font CSS-->\n");
      out.write("        <link href=\"vendor/mdi-font/css/material-design-iconic-font.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <!-- Font special for pages-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS-->\n");
      out.write("        <link href=\"vendor/select2/select2.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"vendor/datepicker/daterangepicker.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("\n");
      out.write("        <!-- Main CSS-->\n");
      out.write("        <link href=\"css/main_1.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"page-wrapper bg-blue p-t-180 p-b-100 font-robo\">\n");
      out.write("            <div class=\"wrapper wrapper--w960\">\n");
      out.write("                <div class=\"card card-2\">\n");
      out.write("<!--                    <div class=\"card-heading\"></div>-->\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("                        <h2 class=\"title\">Edit Contract</h2>\n");
      out.write("                        <form action=\"EditContract\" method=\"POST\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input class=\"input--style-2\" type=\"text\" placeholder=\"Contract Name\" name=\"cName\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row row-space\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <input type=\"hidden\" name=\"eid\" value=\"\">\n");
      out.write("                                    <input class=\"input--style-2\" type=\"text\" placeholder=\"Employee Name\" name=\"eName\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <input type=\"hidden\" name=\"did\" value=\"\">\n");
      out.write("                                    <input class=\"input--style-2\" type=\"text\" placeholder=\" Department Name\" name=\"dName\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row row-space\">\n");
      out.write("                                <div class=\"col-2\">\n");
      out.write("                                    <div class=\"input-group\">\n");
      out.write("                                        <input class=\"input--style-2 js-datepicker\" type=\"text\" placeholder=\"Starting Date\" name=\"start\">\n");
      out.write("                                        <i class=\"zmdi zmdi-calendar-note input-icon js-btn-calendar\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-2\">\n");
      out.write("                                    <div class=\"input-group\">\n");
      out.write("                                        <input class=\"input--style-2 js-datepicker\" type=\"text\" placeholder=\"End Date\" name=\"end\">\n");
      out.write("                                        <i class=\"zmdi zmdi-calendar-note input-icon js-btn-calendar\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <div class=\"rs-select2 js-select-simple select--no-search\">\n");
      out.write("                                    <select name=\"workingTime\">\n");
      out.write("                                        <option disabled=\"disabled\" selected=\"selected\">Working Time in week</option>\n");
      out.write("                                        <option>42h/week</option>\n");
      out.write("                                        <option>40h/week</option>\n");
      out.write("                                        <option>38h/week</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    <div class=\"select-dropdown\"></div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row row-space\">\n");
      out.write("                                <div class=\"col-2\">\n");
      out.write("                                    <div class=\"rs-select2 js-select-simple select--no-search\">\n");
      out.write("                                    <select name=\"status\">\n");
      out.write("                                        <option disabled=\"disabled\" selected=\"selected\">Status</option>\n");
      out.write("                                        <option>Opened</option>\n");
      out.write("                                        <option>Expired</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    <div class=\"select-dropdown\"></div>\n");
      out.write("                                </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-2\">\n");
      out.write("                                    <div class=\"input-group\">\n");
      out.write("                                        <input class=\"input--style-2\" type=\"number\" placeholder=\"Salary\" name=\"salary\">\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"p-t-30\">\n");
      out.write("                                <button class=\"btn btn--radius btn--green\" type=\"submit\">Save</button>\n");
      out.write("                                <a href=\"Editcontract.jsp\" class=\"btn btn--radius btn--red\">Cancel</a>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- Jquery JS-->\n");
      out.write("        <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <!-- Vendor JS-->\n");
      out.write("        <script src=\"vendor/select2/select2.min.js\"></script>\n");
      out.write("        <script src=\"vendor/datepicker/moment.min.js\"></script>\n");
      out.write("        <script src=\"vendor/datepicker/daterangepicker.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Main JS-->\n");
      out.write("        <script src=\"js/global.js\"></script>\n");
      out.write("\n");
      out.write("    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->\n");
      out.write("\n");
      out.write("</html>\n");
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
