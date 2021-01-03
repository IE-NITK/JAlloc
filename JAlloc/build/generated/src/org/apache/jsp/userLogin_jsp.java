package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class userLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>User Login</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("        <style>\r\n");
      out.write("            .center{\r\n");
      out.write("                text-align:center;\r\n");
      out.write("            }\r\n");
      out.write("            div{\r\n");
      out.write("                width:40%;\r\n");
      out.write("                  margin-left: auto;\r\n");
      out.write("                  margin-right: auto;\r\n");
      out.write("            }\r\n");
      out.write("            .button{\r\n");
      out.write("                width:60%;\r\n");
      out.write("                  margin-left: auto;\r\n");
      out.write("                  margin-right: auto;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <br><h1 class=\"center\">USER Login</h1><br><br>\r\n");
      out.write("        <div>\r\n");
      out.write("            <form name=\"user login\" action=\"loginprocess.jsp\" method=\"post\">\r\n");
      out.write("                <table border=\"1\" class=\"table\">\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Name: </td>\r\n");
      out.write("                            <td><input type=\"text\" name=\"name\" value=\"Enter your name\" size=\"25\" /></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>Password: </td>\r\n");
      out.write("                            <td><input type=\"password\" name=\"password\" value=\"Password\" size=\"25\" /></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table><br>\r\n");
      out.write("                <table class=\"button\">\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                    <tr class=\"button\">\r\n");
      out.write("                        <td><input type=\"submit\" class=\"btn btn-info\" value=\"Login\"></td>\r\n");
      out.write("                        <td><a href=\"signUp.jsp\" class=\"btn btn-info\" role=\"button\">Sign Up</a></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("            </form><br>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
