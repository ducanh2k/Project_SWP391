package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class salary_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container mt-5 mb-5\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <div class=\"text-center lh-1 mb-2\">\n");
      out.write("                        <h6 class=\"fw-bold\">Payslip</h6> <span class=\"fw-normal\">Payment slip for the month of June 2021</span>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"d-flex justify-content-end\"> <span>Working Branch:ROHINI</span> </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-10\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">EMP Code</span> <small class=\"ms-3\">39124</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">EMP Name</span> <small class=\"ms-3\">Ashok</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">PF No.</span> <small class=\"ms-3\">101523065714</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">NOD</span> <small class=\"ms-3\">28</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">ESI No.</span> <small class=\"ms-3\"></small> </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">Mode of Pay</span> <small class=\"ms-3\">SBI</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">Designation</span> <small class=\"ms-3\">Marketing Staff (MK)</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <div> <span class=\"fw-bolder\">Ac No.</span> <small class=\"ms-3\">*******0701</small> </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <table class=\"mt-4 table table-bordered\">\n");
      out.write("                            <thead class=\"bg-dark text-white\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"col\">Earnings</th>\n");
      out.write("                                    <th scope=\"col\">Amount</th>\n");
      out.write("                                    <th scope=\"col\">Deductions</th>\n");
      out.write("                                    <th scope=\"col\">Amount</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Basic</th>\n");
      out.write("                                    <td>16250.00</td>\n");
      out.write("                                    <td>PF</td>\n");
      out.write("                                    <td>1800.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">DA</th>\n");
      out.write("                                    <td>550.00</td>\n");
      out.write("                                    <td>ESI</td>\n");
      out.write("                                    <td>142.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">HRA</th>\n");
      out.write("                                    <td>1650.00 </td>\n");
      out.write("                                    <td>TDS</td>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">WA</th>\n");
      out.write("                                    <td>120.00 </td>\n");
      out.write("                                    <td>LOP</td>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">CA</th>\n");
      out.write("                                    <td>0.00 </td>\n");
      out.write("                                    <td>PT</td>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">CCA</th>\n");
      out.write("                                    <td>0.00 </td>\n");
      out.write("                                    <td>SPL. Deduction</td>\n");
      out.write("                                    <td>500.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">MA</th>\n");
      out.write("                                    <td>3000.00</td>\n");
      out.write("                                    <td>EWF</td>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Sales Incentive</th>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                    <td>CD</td>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Leave Encashment</th>\n");
      out.write("                                    <td>0.00</td>\n");
      out.write("                                    <td colspan=\"2\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Holiday Wages</th>\n");
      out.write("                                    <td>500.00</td>\n");
      out.write("                                    <td colspan=\"2\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Special Allowance</th>\n");
      out.write("                                    <td>100.00</td>\n");
      out.write("                                    <td colspan=\"2\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Bonus</th>\n");
      out.write("                                    <td>1400.00</td>\n");
      out.write("                                    <td colspan=\"2\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th scope=\"row\">Individual Incentive</th>\n");
      out.write("                                    <td>2400.00</td>\n");
      out.write("                                    <td colspan=\"2\"></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr class=\"border-top\">\n");
      out.write("                                    <th scope=\"row\">Total Earning</th>\n");
      out.write("                                    <td>25970.00</td>\n");
      out.write("                                    <td>Total Deductions</td>\n");
      out.write("                                    <td>2442.00</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4\"> <br> <span class=\"fw-bold\">Net Pay : 24528.00</span> </div>\n");
      out.write("                        <div class=\"border col-md-8\">\n");
      out.write("                            <div class=\"d-flex flex-column\"> <span>In Words</span> <span>Twenty Five thousand nine hundred seventy only</span> </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"d-flex justify-content-end\">\n");
      out.write("                        <div class=\"d-flex flex-column mt-2\"> <span class=\"fw-bolder\">For Kalyan Jewellers</span> <span class=\"mt-4\">Authorised Signatory</span> </div>\n");
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
