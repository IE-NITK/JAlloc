<%-- 
    Document   : viewResults
    Created on : 29 Dec, 2020, 11:11:11 PM
    Author     : Saish Mendke
--%>

<%@page import="com.mysql.jdbc.StringUtils"%>
<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .center{
                text-align: center;
            }
            .button1{
                width:6%;
                  margin-left: auto;
                  margin-right: auto;
            }
        </style>
    </head>
    <body>
        <h1 class="center">Results</h1><br>
        <%!
            String userName = null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement selectResult = null;
            PreparedStatement insertPreference = null;
        %>
        <%
            userName = session.getAttribute("userName").toString();
            try{
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectResult = con.prepareStatement("SELECT allottedCollege, allottedBranch from users where name='"+userName+"';");
                
                resultSet = selectResult.executeQuery();
                
                resultSet.next();
                
                if(resultSet.getString("allottedCollege").equals(null) || resultSet.getString("allottedBranch").equals(null)){
                     %><h2 class="center">The Results have not yet been declared. Please check again later!</h2><%
                    //response.sendRedirect("noResults.jsp");
                }
                else{
                    %><h2 class="center">You have been allotted <%= resultSet.getString("allottedBranch") %> at <%= resultSet.getString("allottedCollege") %> College</h2><%
                }
            }
            catch(SQLException e) {
                e.printStackTrace();
            }
        %>
        <br><div class="button1"><a href="dashboard.jsp" class="btn btn-info" role="button">Go Back!</a></div>
    </body>
</html>
