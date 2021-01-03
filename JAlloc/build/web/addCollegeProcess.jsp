<%-- 
    Document   : addCollegeProcess
    Created on : 28 Dec, 2020, 5:10:12 PM
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
    </head>
    <body>
        <%!
                int flag = 0;
                ResultSet resultSet = null;
                Connection con = null;
                PreparedStatement insertCollege = null;
                String college = null;
                PreparedStatement getColleges = null;
                String password = null;
                int number = 0;
            %>
     <% 
                    session.setAttribute("flag2", "0");
                    try{
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                        
                        college = request.getParameter("college");
                        
                        password = request.getParameter("password");
                        
                        //number = Integer.parseInt(request.getParameter("number"));
                        
                        getColleges = con.prepareStatement("select college from organizations;");
                        
                        resultSet = getColleges.executeQuery();
                        
                        while(resultSet.next()){{
                            if(resultSet.getString("college").equals(college))
                                session.setAttribute("flag2","1");
                            }
                        }
                        if(session.getAttribute("flag2").equals("1")){
                            response.sendRedirect("errorSameUserName.jsp");
                        }
                        else{
                            insertCollege = con.prepareStatement("INSERT into organizations values('" + college + "', '" + password + "', '" + "#" + "', '" + "info about org" +"');");
                            
                            System.out.println(insertCollege);
                            
                            insertCollege.executeUpdate();
                            
                            response.sendRedirect("adminDashboard.jsp");
            
                        }
                        
                    } catch(SQLException e){
                        response.sendRedirect("errorSignUp.jsp");
                        e.printStackTrace();
                    }
                %>
    </body>
</html>
