<%-- 
    Document   : errorLogin
    Created on : 15 Dec, 2020, 12:55:07 AM
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
        <br><h2 class="center">Invalid User-Name or Password. Kindly Go back and check again! </h2>
        <form action="userLogin.jsp">
            <br><div class="button"><input class="btn btn-info" type="submit" value="Go back" name="back" /></div>
        </form>
    </body>
</html>
