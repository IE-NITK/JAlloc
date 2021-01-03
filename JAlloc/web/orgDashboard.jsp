<%-- 
    Document   : orgDashboard
    Created on : 2 Jan, 2021, 10:44:55 PM
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
        <title>Dashboard</title>
        <style>
                    .table1 {
                    border-radius: 5px;
                    width: 50%;
                    margin-left: auto;
                    margin-right: auto;
                    float: none;
                    }
                    .table th{
                        text-align: center;
                        width: 450px;
                    }
                    .table td{
                        text-align: center;
                        width: 450px;
                    }
                    .center{
                        text-align: center;
                    }
                    .button{
                        width: 7%;
                        margin-left: auto;
                        margin-right: auto;
                    }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <script>
            function myFunction() {
                    document.getElementById("Add preference").disabled = true;
            }
            function Function(){
                    document.getElementById("Add preference").disabled = false;
            }
        </script>
        <%!
            String college= null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement getBranch = null;
            PreparedStatement insertPreference = null;
        %>
        <nav class="navbar navbar-light bg-light justify-content-end">
        <ul class="nav justify-content-end">
            <li class="nav-item">
              <a class="nav-link active" href="orgResults.jsp">View Results</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="updateOrgInfo.jsp">Update Info</a>
            </li>
          </ul>
        </nav><br>
        <h1 class="center">Welcome to the College Dashboard</h1><br>
        <h2 class="center">Here are the branches at your College</h2>
        <%
            college = session.getAttribute("orgName").toString();
            try{
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                getBranch = con.prepareStatement("SELECT branch, totalSeats from colleges where college = '" + college + "';");

                System.out.println(getBranch);
                resultSet = getBranch.executeQuery();
   
            } catch(SQLException e)
            {
                e.printStackTrace();
            }
        %>
        <table border="1" class="table table1">
            <thead>
                <tr>
                    <th scope="row">Branch</th>
                    <th scope="row">Total Seats</th>
                </tr>
            </thead>
            <tbody>
            <% while(resultSet.next()){ %>
            <tr>
                    <td><%= resultSet.getString("branch")%></td>
                    <td><%= resultSet.getString("totalSeats")%></td>
                    </tr>
        <% } %>
            </tbody>
        </table><br>
        <div class="button"><a class="btn btn-primary" href="addBranch.jsp" role="button">Add a Branch</a></div>
    </body>
</html>
