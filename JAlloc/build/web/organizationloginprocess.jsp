<%-- 
    Document   : organizationloginprocess
    Created on : 1 Jan, 2021, 6:44:04 PM
    Author     : Saish Mendke
--%>

<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function demo() {
            alert("Invalid Password!");
            }
        </script>
    </head>
    <body>
            <%!
                String s= null;
                ResultSet resultSet = null;
                Connection con = null;
                PreparedStatement selectColleges = null;
                String name = null;
                PreparedStatement pass= null;
                String password = null;
            %>
     <% 
                    try{
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                        
                        name = request.getParameter("name");
                        
                        password = request.getParameter("password");
                
                        pass = con.prepareStatement("SELECT password from organizations where college = '" + name + "';");
                        
                        System.out.println(pass);
                        System.out.println(password);
                        resultSet = pass.executeQuery();
                        resultSet.next();
                        System.out.println(resultSet.getString("password"));
                        
                        if(password.equals(resultSet.getString("password"))){ 
                            session.setAttribute("orgName",request.getParameter("name"));
                            response.sendRedirect("orgDashboard.jsp"); 
                        }
                        else{
                            System.out.println("invalid password");%>
                            alert("Invalid Password")
                            <% response.sendRedirect("errorLogin.jsp"); 
                        }
                    } catch(SQLException e){
                        response.sendRedirect("errorLogin.jsp");
                        e.printStackTrace();
                    }
                %>
    </body>
</html>
