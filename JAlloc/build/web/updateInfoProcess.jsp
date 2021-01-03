<%-- 
    Document   : updateInfoProcess
    Created on : 3 Jan, 2021, 2:07:35 AM
    Author     : Saish Mendke
--%>

<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding a new Branch</title>
    </head>
    <body>
        <%!
            String website = null;
            String college = null;
            String info = null;
            int seats = 0;
            ResultSet resultSet = null;
            Connection con = null;
            int number = 0;
            //static int flag = 0;
            PreparedStatement updateInfo = null;
            PreparedStatement insertBranch = null;
        %>
        <%
            try{
                session.setAttribute("flag4",0);
                
                System.out.println("hi");
                
                college = session.getAttribute("orgName").toString();
                
                website = request.getParameter("website");
                
                info = request.getParameter("info");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                updateInfo = con.prepareStatement("update organizations set website = '" + website + "', info = '" + info + "' where college='" + college + "';");
                
                System.out.println(updateInfo);
                
                updateInfo.executeUpdate();
                
                response.sendRedirect("updateOrgInfo.jsp");
                                    
                } catch(SQLException e){
                    response.sendRedirect("orgError.jsp");
                    e.printStackTrace();
                }
            %>
    </body>
</html>