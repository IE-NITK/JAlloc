<%-- 
    Document   : userLogin
    Created on : 10 Dec, 2020, 1:42:25 AM
    Author     : Saish Mendke
--%>

<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .center{
                text-align:center;
            }
            div{
                width:50%;
                  margin-left: auto;
                  margin-right: auto;
            }
            .button{
                width:12%;
                  margin-left: auto;
                  margin-right: auto;
            }
        </style>
    </head>
    <body>
        <br><h1 class="center">USER Login</h1><br><br>
        <div>
            <form name="user login" action="loginprocess.jsp" method="post">
                <table border="1" class="table">
                    <tbody>
                        <tr>
                            <td>Name: </td>
                            <td><input type="text" name="name" value="Enter your name" size="25" /></td>
                        </tr>
                        <tr>
                            <td>Password: </td>
                            <td><input type="password" name="password" value="Password" size="25" /></td>
                        </tr>
                    </tbody>
                </table>
                <br><div class="button"><input type="submit" value="Login"></div>
            </form>
        </div>
    </body>
</html>
