<%-- 
    Document   : orgResults
    Created on : 3 Jan, 2021, 2:28:30 AM
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
            .table1 {
                border-radius: 5px;
                width: 100%;
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
        </style>
    </head>
    <body>
        <br><br><h1 class="center">List of students admitted to your college</h1><br>
        <%!
            String college = null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement selectResult = null;
            PreparedStatement insertPreference = null;
        %>
        <%
            college = session.getAttribute("orgName").toString();
            try{
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectResult = con.prepareStatement("SELECT name, allottedBranch from users where allottedCollege ='" + college + "';");
                
                resultSet = selectResult.executeQuery(); %>
                
                <table border="1" class="table table1">
                <tbody>
                    <tr>
                        <th scope="row">Name</th>
                        <th scpoe="row">Allotted Branch</th>
                    </tr>
                <% while(resultSet.next()){
                
                    if(resultSet.getString("name").equals(null) || resultSet.getString("allottedBranch").equals(null)){
                         %><h2 class="center">The Results have not yet been declared. Please check again later!</h2><%
                             break;
                        //response.sendRedirect("noResults.jsp");
                    }
                    else{
                        %>
                        <tr>
                        <td><%= resultSet.getString("name") %></td>
                        <td><%= resultSet.getString("allottedBranch") %></td>
                    </tr>
                 <%
                    }
                }
            }
            catch(SQLException e) {
                e.printStackTrace();
            }
        %>
        <br>
        </tbody>
                </table>
        <div class="button1"><a href="orgDashboard.jsp" class="btn btn-info" role="button">Go Back!</a></div>
    </body>
</html>
