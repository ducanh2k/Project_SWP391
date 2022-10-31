package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dal.AccountDAO;
import model.Account;

public final class create_005fapplication_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"vendor/font-awesome-4.7/css/font-awesome.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"vendor/select2/select2.min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"vendor/datepicker/daterangepicker.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <link href=\"css/main_1.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("        <script src=\"ckeditor/ckeditor.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js\"></script>\n");
      out.write("        <title>Application</title>\n");
      out.write("        <style>\n");
      out.write("            .container{\n");
      out.write("                width: 100%;\n");
      out.write("                max-width: 800px;\n");
      out.write("                margin: 0 auto;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"page-wrapper bg-red p-t-180 p-b-100 font-robo\">\n");
      out.write("            <div class=\"wrapper wrapper--w960\">\n");
      out.write("                <div class=\"card card-2\">\n");
      out.write("                    <!--                    <div class=\"card-heading\"></div>-->\n");
      out.write("                    <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                        <form action=\"ApplicationSubmit\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input class=\"input--style-2\" type=\"text\" name=\"Eid\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                                <input class=\"input--style-2\" type=\"text\" name=\"title\" placeholder=\"Title\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <textarea class=\"ckeditor\" name=\"content\" required></textarea>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"p-t-30\">\n");
      out.write("                                <button class=\"btn btn--radius btn--green\" type=\"submit\">Submit</button>\n");
      out.write("                                <button class=\"btn btn--radius btn--red\" type=\"button\" onclick=\"window.window.location.href = 'create_application.jsp'\">Cancel</button>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
