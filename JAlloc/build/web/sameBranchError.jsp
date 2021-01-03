<%-- 
    Document   : sameBranchError
    Created on : 3 Jan, 2021, 1:20:22 AM
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
        <style>
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
    <body><br><br><br><br>
        <h1 class="center">Please select a different Branch as the entered Branch already exists!</h1><br>
        <div class="button"><a class="btn btn-primary" href="orgDashboard.jsp" role="button">Go Back</a></div>
    </body>
</html>
