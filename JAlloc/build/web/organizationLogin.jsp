<%-- 
    Document   : organizationLogin
    Created on : 1 Jan, 2021, 6:40:28 PM
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
                width:40%;
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
        <br><h1 class="center">Organization Login</h1><br><br>
        <div>
            <form name="organization login" action="organizationloginprocess.jsp" method="post">
                <table border="1" class="table">
                    <tbody>
                        <tr>
                            <td>Organization Name: </td>
                            <td><input type="text" name="name" value="Enter your name" size="25" /></td>
                        </tr>
                        <tr>
                            <td>Password: </td>
                            <td><input type="password" name="password" value="Password" size="25" /></td>
                        </tr>
                    </tbody>
                </table><br>
                <table class="button">
                    <tbody>
                    <tr class="button">
                        <td><input type="submit" class="btn btn-info" value="Login"></td>
                </tr>
                </tbody>
                </table>
            </form><br>
        </div>
    </body>
</html>

