package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mysql.jdbc.StringUtils;
import java.sql.*;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            String s= null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement selectPreference = null;
            PreparedStatement insertPreference = null;
        
 public class Actor{
            String s= null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement selectColleges = null;
            public Actor(){
            try{
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectColleges = con.prepareStatement("SELECT distinct college from Colleges");
            
            } catch (SQLException e){
                e.printStackTrace();
            }
           }
            
           public ResultSet getColleges(){
                try{
                    resultSet = selectColleges.executeQuery();
                }
                catch(SQLException e){
                    e.printStackTrace();
                }
                return resultSet;
            }
        }
            

                Actor actor = new Actor();
                ResultSet colleges = actor.getColleges();
                String college = null;
                String foo = null;
                String branch = null;
                String userName = null;
                int number = 1;

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
 Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Dashboard</title>\n");
      out.write("        <style>\n");
      out.write("                    .table1 {\n");
      out.write("                    border-radius: 5px;\n");
      out.write("                    width: 50%;\n");
      out.write("                    margin-left: auto;\n");
      out.write("                    margin-right: auto;\n");
      out.write("                    float: none;\n");
      out.write("                    }\n");
      out.write("                    .table th{\n");
      out.write("                        text-align: center;\n");
      out.write("                        width: 450px;\n");
      out.write("                    }\n");
      out.write("                    .table td{\n");
      out.write("                        text-align: center;\n");
      out.write("                        width: 450px;\n");
      out.write("                    }\n");
      out.write("                    .center{\n");
      out.write("                        text-align: center;\n");
      out.write("                    }\n");
      out.write("        </style>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <script>\n");
      out.write("            function myFunction() {\n");
      out.write("                    document.getElementById(\"Add preference\").disabled = true;\n");
      out.write("            }\n");
      out.write("            function Function(){\n");
      out.write("                    document.getElementById(\"Add preference\").disabled = false;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-light bg-light justify-content-end\">\n");
      out.write("        <ul class=\"nav justify-content-end\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link active\" href=\"viewResults.jsp\">View Results</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </nav><br>\n");
      out.write("        <h1 class=\"center\">Add Preferrences</h1>\n");
      out.write("        <form name=\"college\" action=\"dashboard.jsp\">\n");
      out.write("            <br><br><table border=\"1\" class=\"table table1\">\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"row\">College: </th>\n");
      out.write("                        ");

                            ResultSet resultSet = null;
                            Connection con = null;
                            PreparedStatement selectColleges = null;
                            try{
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");

                                selectColleges = con.prepareStatement("SELECT distinct college from Colleges");
                                
                                resultSet = selectColleges.executeQuery();
                                
                                colleges = resultSet;

                            } catch (SQLException e){
                                e.printStackTrace();
                            }
                        
      out.write("\n");
      out.write("                        ");
 college = request.getParameter("college");
      out.write("\n");
      out.write("                        <td><select name=\"college\">\n");
      out.write("                        ");
 if(college != null){ 
      out.write("\n");
      out.write("                            <option  selected=\"selected\">");
      out.print( college );
      out.write("</option>\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                            ");
 while(colleges.next()){ 
                                if(colleges.getString("college")!=null){
                            
      out.write("\n");
      out.write("                                <option>");
      out.print( colleges.getString("college") );
      out.write("</option>\n");
      out.write("                            ");
 }} 
      out.write("\n");
      out.write("                            </select></td>\n");
      out.write("                            ");
 college = request.getParameter("college");
                               branch = null;
                            
      out.write("\n");
      out.write("                            <td><input type=\"submit\" value=\"Select College\">");
 branch = null; 
      out.write("</button></td>\n");
      out.write("                            ");
 session.setAttribute("college",request.getParameter("college")); 
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        <form name=\"branch\" action=\"preferenceProcess.jsp\" method=\"post\">\n");
      out.write("            <table border=\"1\" class=\"table table1\">\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"row\">Branch: </th>\n");
      out.write("                        ");
      out.write("\n");
      out.write("                        <td><select name=\"branch\">\n");
      out.write("                            <option selected=\"selected\">");
      out.print( branch );
      out.write("</option>\\\n");
      out.write("                            ");
 branch = request.getParameter("branch");
                            ResultSet branches =null;
                            PreparedStatement selectBranches = null;
                               try{
                                   con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                                   selectBranches = con.prepareStatement("SELECT branch from Colleges where college = '"+college+"';");

                                   System.out.println(selectBranches);
                                   branches = selectBranches.executeQuery();
   
                               } catch(SQLException e)
                               {
                                   e.printStackTrace();
                               }
                            
      out.write("\n");
      out.write("                             ");
 while(branches.next()){ 
      out.write("\n");
      out.write("                             ");
 if(!(branches.getString("branch").equals(null))){ 
      out.write("\n");
      out.write("                                <option>");
      out.print( branches.getString("branch") );
      out.write("</option>\n");
      out.write("                             ");
 }} 
      out.write("\n");
      out.write("                            </select></td>\n");
      out.write("                            ");
 branch = request.getParameter("branch");
      out.write("\n");
      out.write("                            <td><input type=\"submit\" value=\"Add preference\" id=\"Add preference\"></td>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("                    <br><br><h1 class=\"center\">Here are your Preferrences</h1><br>\n");
      out.write("        ");
 
            try{
                 
                userName = session.getAttribute("userName").toString();
                
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectPreference = con.prepareStatement("SELECT college, branch, number from Preference where name='"+userName+"' order by number ASC;");
                
                System.out.println(selectPreference);
                
                resultSet = selectPreference.executeQuery();
                
                System.out.println(selectPreference); 
      out.write("\n");
      out.write("                \n");
      out.write("                <table border=\"1\" class=\"table center\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th scope=\"row\">College</th>\n");
      out.write("                            <th scope=\"row\">Branch</th>\n");
      out.write("                            <th scope=\"row\">Preference Number</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead> \n");
      out.write("                    <tbody>\n");
      out.write("                ");
 number = 1;
                    while(resultSet.next()){ 
                        if(!(resultSet.getString("branch").equals("null"))){
                
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print( resultSet.getString("college") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( resultSet.getString("branch") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( resultSet.getInt("number") );
      out.write("</td>\n");
      out.write("                            ");
 number = resultSet.getInt("number")+1;
                            
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                ");
      }
                    }
                    session.setAttribute("number",number);
                
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            ");
 } catch(SQLException e) {
                e.printStackTrace();
            }
        
      out.write("\n");
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
