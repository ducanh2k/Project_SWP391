package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dal.AccountDAO;
import model.Account;

public final class application_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Application List</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style_2.css\">\n");
      out.write("        <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/a076d05399.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .filterable {\n");
      out.write("                margin-top: 15px;\n");
      out.write("            }\n");
      out.write("            .filterable .panel-heading .pull-right {\n");
      out.write("                margin-top: -20px;\n");
      out.write("            }\n");
      out.write("            .filterable .filters input[disabled] {\n");
      out.write("                background-color: transparent;\n");
      out.write("                border: none;\n");
      out.write("                cursor: auto;\n");
      out.write("                box-shadow: none;\n");
      out.write("                padding: 0;\n");
      out.write("                height: auto;\n");
      out.write("            }\n");
      out.write("            .filterable .filters input[disabled]::-webkit-input-placeholder {\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("            .filterable .filters input[disabled]::-moz-placeholder {\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("            .filterable .filters input[disabled]:-ms-input-placeholder {\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            /* Style the input field */\n");
      out.write("            #myInput {\n");
      out.write("                padding: 20px;\n");
      out.write("                margin-top: -6px;\n");
      out.write("                border: 0;\n");
      out.write("                border-radius: 0;\n");
      out.write("                background: #f1f1f1;\n");
      out.write("            }\n");
      out.write("            .dataTables_length,\n");
      out.write("            .dataTables_wrapper {\n");
      out.write("                font-size: 1.6rem;\n");
      out.write("                select,\n");
      out.write("                input {\n");
      out.write("                    background-color: #f9f9f9;\n");
      out.write("                    border: 1px solid #999;\n");
      out.write("                    border-radius: 4px;\n");
      out.write("                    height: 3rem;\n");
      out.write("                    line-height: 2;\n");
      out.write("                    font-size: 1.8rem;\n");
      out.write("                    color: #333;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .dataTables_length,\n");
      out.write("                .dataTables_filter {\n");
      out.write("                    margin-top: 30px;\n");
      out.write("                    margin-right: 20px;\n");
      out.write("                    margin-bottom: 10px;\n");
      out.write("                    display: inline-flex;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .paginate_button {\n");
      out.write("                min-width: 4rem;\n");
      out.write("                display: inline-block;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 1rem 1.6rem;\n");
      out.write("                margin-top: -1rem;\n");
      out.write("                border: 2px solid lightblue;\n");
      out.write("                &:not(.previous) {\n");
      out.write("                    border-left: none;\n");
      out.write("                }\n");
      out.write("                &.previous {\n");
      out.write("                    border-radius: 8px 0 0 8px;\n");
      out.write("                    min-width: 7rem;\n");
      out.write("                }\n");
      out.write("                &.next {\n");
      out.write("                    border-radius: 0 8px 8px 0;\n");
      out.write("                    min-width: 7rem;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                &:hover {\n");
      out.write("                    cursor: pointer;\n");
      out.write("                    background-color: #eee;\n");
      out.write("                    text-decoration: none;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sideMenu.jsp", out, false);
      out.write("\n");
      out.write("            <section class=\"ftco-section\">\n");
      out.write("                <div class=\"container\" style=\"margin-left: 80px\">\n");
      out.write("                    <div class=\"row col-auto\" >\n");
      out.write("                        <input class=\"form-control\" id=\"myInput\" type=\"text\" placeholder=\"Search..\">\n");
      out.write("                        <p><button onclick=\"sortTable()\">Sort By Name</button></p>\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div class=\"panel panel-primary filterable\">\n");
      out.write("                                <div class=\"mb-4 d-flex justify-content-between align-items-center\">\n");
      out.write("                                    <h2>Application List</h2>\n");
      out.write("                                    <a role=\"button\" href=\"create_application.jsp\" class=\"font-weight-bold\">ADD NEW</a>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"panel-heading\">\n");
      out.write("                                    <h3 class=\"panel-title\">Application</h3>\n");
      out.write("                                    <div class=\"pull-right\">\n");
      out.write("                                        <button class=\"btn btn-default btn-xs btn-filter\"><span class=\"glyphicon glyphicon-filter\"></span> Filter</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div> \n");
      out.write("                                <table class=\"table\" id=\"myTable\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr class=\"filters\">\n");
      out.write("                                            <th><input type=\"text\" class=\"form-control\" disabled>#</th>\n");
      out.write("                                            <th><input type=\"text\" class=\"form-control\" disabled>Employee Name</th>\n");
      out.write("                                            <th><input type=\"text\" class=\"form-control\" disabled>Employee ID</th>\n");
      out.write("                                            <th><input type=\"text\" class=\"form-control\" disabled>Title</th>\n");
      out.write("                                            <th><input type=\"text\" class=\"form-control\" disabled>Content</th>\n");
      out.write("                                            <th><input type=\"text\" class=\"form-control\" disabled>Status</th>\n");
      out.write("                                            <th>View</th>\n");
      out.write("                                            <th>Approve</th>\n");
      out.write("                                            <th>Refuse</th>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <th>#</th>\n");
      out.write("                                    <th>Employee Name</th>\n");
      out.write("                                    <th>Employee ID</th>\n");
      out.write("                                    <th>Title</th>\n");
      out.write("                                    <th>Content</th>\n");
      out.write("                                    <th>Status</th>\n");
      out.write("                                    <th>View</th>\n");
      out.write("                                    ");

                                        HttpSession session1 = request.getSession();
                                        String role = (String) session1.getAttribute("role");
                                        if (role.trim().equalsIgnoreCase("admin")) {
                                    
      out.write("\n");
      out.write("                                <th>Approve</th>\n");
      out.write("                                <th>Refuse</th>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>   \n");
      out.write("        <script>\n");
      out.write("                            $(document).ready(function () {\n");
      out.write("                                $(\"#myInput\").on(\"keyup\", function () {\n");
      out.write("                                    var value = $(this).val().toLowerCase();\n");
      out.write("                                    $(\"#myTable tr\").filter(function () {\n");
      out.write("                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)\n");
      out.write("                                    });\n");
      out.write("                                });\n");
      out.write("                            });\n");
      out.write("                            $(document).ready(function () {\n");
      out.write("                                $('.filterable .btn-filter').click(function () {\n");
      out.write("                                    var $panel = $(this).parents('.filterable'),\n");
      out.write("                                            $filters = $panel.find('.filters input'),\n");
      out.write("                                            $tbody = $panel.find('.table tbody');\n");
      out.write("                                    if ($filters.prop('disabled') == true) {\n");
      out.write("                                        $filters.prop('disabled', false);\n");
      out.write("                                        $filters.first().focus();\n");
      out.write("                                    } else {\n");
      out.write("                                        $filters.val('').prop('disabled', true);\n");
      out.write("                                        $tbody.find('.no-result').remove();\n");
      out.write("                                        $tbody.find('tr').show();\n");
      out.write("                                    }\n");
      out.write("                                });\n");
      out.write("                                $('.filterable .filters input').keyup(function (e) {\n");
      out.write("                                    /* Ignore tab key */\n");
      out.write("                                    var code = e.keyCode || e.which;\n");
      out.write("                                    if (code == '9')\n");
      out.write("                                        return;\n");
      out.write("                                    /* Useful DOM data and selectors */\n");
      out.write("                                    var $input = $(this),\n");
      out.write("                                            inputContent = $input.val().toLowerCase(),\n");
      out.write("                                            $panel = $input.parents('.filterable'),\n");
      out.write("                                            column = $panel.find('.filters th').index($input.parents('th')),\n");
      out.write("                                            $table = $panel.find('.table'),\n");
      out.write("                                            $rows = $table.find('tbody tr');\n");
      out.write("                                    /* Dirtiest filter function ever ;) */\n");
      out.write("                                    var $filteredRows = $rows.filter(function () {\n");
      out.write("                                        var value = $(this).find('td').eq(column).text().toLowerCase();\n");
      out.write("                                        return value.indexOf(inputContent) === -1;\n");
      out.write("                                    });\n");
      out.write("                                    /* Clean previous no-result if exist */\n");
      out.write("                                    $table.find('tbody .no-result').remove();\n");
      out.write("                                    /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */\n");
      out.write("                                    $rows.show();\n");
      out.write("                                    $filteredRows.hide();\n");
      out.write("                                    /* Prepend no-result row if all rows are filtered */\n");
      out.write("                                    if ($filteredRows.length === $rows.length) {\n");
      out.write("                                        $table.find('tbody').prepend($('<tr class=\"no-result text-center\"><td colspan=\"' + $table.find('.filters th').length + '\">No result found</td></tr>'));\n");
      out.write("                                    }\n");
      out.write("                                });\n");
      out.write("                            });\n");
      out.write("                            function sortTable() {\n");
      out.write("                                var table, rows, switching, i, x, y, shouldSwitch;\n");
      out.write("                                table = document.getElementById(\"myTable\");\n");
      out.write("                                switching = true;\n");
      out.write("                                /*Make a loop that will continue until\n");
      out.write("                                 no switching has been done:*/\n");
      out.write("                                while (switching) {\n");
      out.write("                                    //start by saying: no switching is done:\n");
      out.write("                                    switching = false;\n");
      out.write("                                    rows = table.rows;\n");
      out.write("                                    /*Loop through all table rows (except the\n");
      out.write("                                     first, which contains table headers):*/\n");
      out.write("                                    for (i = 1; i < (rows.length - 1); i++) {\n");
      out.write("                                        //start by saying there should be no switching:\n");
      out.write("                                        shouldSwitch = false;\n");
      out.write("                                        /*Get the two elements you want to compare,\n");
      out.write("                                         one from current row and one from the next:*/\n");
      out.write("                                        x = rows[i].getElementsByTagName(\"TD\")[1];\n");
      out.write("                                        y = rows[i + 1].getElementsByTagName(\"TD\")[1];\n");
      out.write("                                        //check if the two rows should switch place:\n");
      out.write("                                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {\n");
      out.write("                                            //if so, mark as a switch and break the loop:\n");
      out.write("                                            shouldSwitch = true;\n");
      out.write("                                            break;\n");
      out.write("                                        }\n");
      out.write("                                    }\n");
      out.write("                                    if (shouldSwitch) {\n");
      out.write("                                        /*If a switch has been marked, make the switch\n");
      out.write("                                         and mark that a switch has been done:*/\n");
      out.write("                                        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);\n");
      out.write("                                        switching = true;\n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            var tables = document.getElementsByTagName('td');\n");
      out.write("                            for (var i = 0; i < tables.length; i++)\n");
      out.write("                            {\n");
      out.write("                                var s = tables[i].innerHTML;\n");
      out.write("                                s = s.replace('Approved', '<span style=\"color:green\">Approved</span>');\n");
      out.write("                                s = s.replace('Processing', '<span style=\"color:orange\">Processing</span>');\n");
      out.write("                                s = s.replace('Refused', '<span style=\"color:red\">Refused</span>');\n");
      out.write("                                tables[i].innerHTML = s;\n");
      out.write("                            }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list_application}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("c");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <tr>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getAid()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td><a href=\"EmployeeDetail?service=view&eid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getEid()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" >");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getEname()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getEid()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getTitle()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getBody()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getStatus()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                        <td><a href=\"ApplicationApproval?service=view&aid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.getAid()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"fas fa-eye fa-2x\"></a></td>\n");
          out.write("                                    </tr>     \n");
          out.write("                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
