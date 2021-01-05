<%-- 
    Document   : updateInfo
    Created on : 3 Jan, 2021, 1:52:37 AM
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
        <br>
        <%!
            String branch = null;
            String college = null;
            int seats = 0;
            ResultSet resultSet = null;
            Connection con = null;
            int number = 0;
            //static int flag = 0;
            PreparedStatement getInfo = null;
            PreparedStatement insertBranch = null;
        %>
        <%
            try{
                
                System.out.println("hi");
                
                college = session.getAttribute("orgName").toString();
                
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                getInfo = con.prepareStatement("SELECT * from organizations where college='" + college + "';");
                
                resultSet = getInfo.executeQuery();
                
                resultSet.next();
                
            } catch(SQLException e){
                    response.sendRedirect("orgError.jsp");
                    e.printStackTrace();
                }
            %>
            <br>
            <h1 class="center">Here is the information of your college</h1><br>
        <form name="updateInfo" action="updateInfoProcess.jsp" method="post">
            <table border="1" class="table table1">
                <tbody>
                    <tr>
                        <th scope="row">Name: </th>
                        <td><input type="text" name="name" value="<%= resultSet.getString("college") %>" /></td>
                    </tr>
                    <tr>
                        <th scope="row">Website Link: </th>
                        <td><input type="text" name="website" value="<%= resultSet.getString("website") %>" /></td>
                    </tr>
                    <tr>
                        <th scope="row">Organization Info: </th>
                        <td><input type="text" name="info" value="<%= resultSet.getString("info") %>" /></td>
                    </tr>
                </tbody>
            </table>
                    <div class="button"><input type="submit" class="btn btn-primary" value="Update Info" id="Add branch"></div><br>
                    <br><div class="button"><a class="btn btn-primary" href="orgDashboard.jsp" role="button">Go Back</a></div>
        </form>
    </body>
</html>
