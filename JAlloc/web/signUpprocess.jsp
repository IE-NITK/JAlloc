<%-- 
    Document   : signUpprocess
    Created on : 17 Dec, 2020, 4:54:42 PM
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
                int flag = 0;
                ResultSet resultSet = null;
                Connection con = null;
                PreparedStatement insertUser = null;
                String name = null;
                PreparedStatement getUser= null;
                String password = null;
                String confirm_password = null;
            %>
     <% 
                    session.setAttribute("flag1", "0");
                    try{
                        con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                        
                        name = request.getParameter("name");
                        
                        password = request.getParameter("password");
                        
                        confirm_password = request.getParameter("confirm-password");
                        
                        getUser = con.prepareStatement("select name from users;");
                        
                        resultSet = getUser.executeQuery();
                        
                        while(resultSet.next()){{
                            if(resultSet.getString("name").equals(name))
                                session.setAttribute("flag1","1");
                            }
                        }
                        if(session.getAttribute("flag1").equals("1")){
                            response.sendRedirect("errorSameUserName.jsp");
                        }
                        else if(password.equals(confirm_password) && session.getAttribute("flag1").equals("0")){
                            insertUser = con.prepareStatement("INSERT into users values('"+name+"', '"+password+"');");
                            
                            System.out.println(insertUser);
                            
                            insertUser.executeUpdate();
                            
                            response.sendRedirect("userLogin.jsp");
            
                        }
                        else{
                            response.sendRedirect("errorSignUp.jsp");
                        }
                        
                    } catch(SQLException e){
                        response.sendRedirect("errorSignUp.jsp");
                        e.printStackTrace();
                    }
                %>
    </body>
</html>
