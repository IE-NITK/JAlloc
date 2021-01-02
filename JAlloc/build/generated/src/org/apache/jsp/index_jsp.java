package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("        <style>\r\n");
      out.write("          .center {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            border: 3px solid green;\r\n");
      out.write("          }\r\n");
      out.write("          </style>\r\n");
      out.write("      </head>\r\n");
      out.write("<body>\r\n");
      out.write("      <nav class=\"navbar navbar-light bg-light justify-content-end\">\r\n");
      out.write("        <ul class=\"nav justify-content-end\">\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link active\" href=\"userLogin.jsp\">User Login/Sign-Up</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"#\">Organization Login</a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"nav-item\">\r\n");
      out.write("              <a class=\"nav-link\" href=\"adminLogin.jsp\">Admin Login</a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          </nav>\r\n");
      out.write("<br>\r\n");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "1234");
    PreparedStatement stmt = con.prepareStatement("SELECT * FROM Colleges;");
    ResultSet rs = stmt.executeQuery();
    int i;
    while(rs.next()){
        i = 1;
        rs.previous();

      out.write("\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("    ");

        while(i != 4 && rs.next()){
    
      out.write("\r\n");
      out.write("            <div class=\"col\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <div class=\"card-header center\">\r\n");
      out.write("                        Organization\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"card-body center\">\r\n");
      out.write("                        <h5 class=\"card-title\">");
      out.print( rs.getString("college") );
      out.write("</h5>\r\n");
      out.write("                        <p class=\"card-text\">");
      out.print( rs.getString("info") );
      out.write("</p>\r\n");
      out.write("                        <a href='");
      out.print( rs.getString("website") );
      out.write("' class=\"btn btn-primary\" target=\"_blank\" rel=\"noopener noreferrer\">Visit their website</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");

            i++;
        }

      out.write("\r\n");
      out.write("        </div><br><br>\r\n");

    }

      out.write("\r\n");
      out.write("</body>\r\n");
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
