<%-- 
    Document   : errorSignUp
    Created on : 17 Dec, 2020, 5:01:56 PM
    Author     : Saish Mendke
--%>

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
            .btn_center{
                position: absolute;
                left: 50%;
                top: 30%;
                transform: translate(-50%, -50%);
            }
            .button{
                  width:6%;
                  margin-left: auto;
                  margin-right: auto;
            }
        </style>
    </head>
    <body>
        <h1 class="center">ERROR</h1>
        <br><h2 class="center">Your Password's do not match or there is a null value. Kindly Check again</h2>
        <form action="signUp.jsp">
            <br><div class="button"><input class="btn btn-info" type="submit" value="Go back" name="back" /></div>
        </form>
    </body>
</html>
