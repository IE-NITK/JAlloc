<%-- 
    Document   : index
    Created on : 10 Dec, 2020, 1:25:22 AM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
          .center {
            text-align: center;
            border: 3px solid green;
          }
          </style>
      </head>
<body>
      <nav class="navbar navbar-light bg-light justify-content-end">
        <ul class="nav justify-content-end">
            <li class="nav-item">
              <a class="nav-link active" href="userLogin.jsp">User Login/Sign-Up</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="organizationLogin.jsp">Organization Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="adminLogin.jsp">Admin Login</a>
            </li>
          </ul>
          </nav>
<br>
<%
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
    PreparedStatement stmt = con.prepareStatement("SELECT * FROM organizations;");
    ResultSet rs = stmt.executeQuery();
    int i;
    while(rs.next()){
        i = 1;
        rs.previous();
%>
        <div class="row">
    <%
        while(i != 4 && rs.next()){
    %>
            <div class="col">
                <div class="card">
                    <div class="card-header center">
                        Organization
                    </div>
                    <div class="card-body center">
                        <h5 class="card-title"><%= rs.getString("college") %></h5>
                        <p class="card-text"><%= rs.getString("info") %></p>
                        <a href='<%= rs.getString("website") %>' class="btn btn-primary" target="_blank" rel="noopener noreferrer">Visit their website</a>
                    </div>
                </div>
            </div>
<%
            i++;
        }
%>
        </div><br><br>
<%
    }
%>
</body>
</html>