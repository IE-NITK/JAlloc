<%-- 
    Document   : signUp
    Created on : 17 Dec, 2020, 4:21:53 PM
    Author     : Saish Mendke
--%>

<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Sign-Up</title>
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
                width:60%;
                  margin-left: auto;
                  margin-right: auto;
            }
        </style>
    </head>
    <body>
        <br><h1 class="center">Sign-Up/Register</h1><br><br>
        <div>
            <form name="user signUp" action="signUpprocess.jsp" method="post">
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
                        <tr>
                            <td>Password: </td>
                            <td><input type="password" name="confirm-password" value="Password" size="25" /></td>
                        </tr>
                    </tbody>
                </table>
                <table class="button">
                    <tbody>
                    <tr class="button">
                        <td><input type="submit" class="btn btn-info" value="Sign-Up"></td>
                        <td><a href="userLogin.jsp" class="btn btn-info" role="button">Back</a></td>
                </tr>
                </tbody>
                </table>
            </form><br>
        </div>
    </body>
</html>

