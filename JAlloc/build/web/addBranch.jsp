<%-- 
    Document   : addBranch
    Created on : 2 Jan, 2021, 11:14:06 PM
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
        <form name="addBranch" action="addBranchProcess.jsp" method="post">
            <table border="1" class="table table1">
                <tbody>
                    <tr>
                        <th scope="row">Branch: </th>
                        <td><input type="text" name="branch" value="Name of the Branch" /></td>
                    </tr>
                    <tr>
                        <th scope="row">Total number of seats: </th>
                        <td><input type="text" name="seats" value="Number of seats" /></td>
                    </tr>
                </tbody>
            </table>
            <div class="button"><input type="submit" class="btn btn-primary" value="Add Branch" id="Add branch"></div>
        </form>
    </body>
</html>
