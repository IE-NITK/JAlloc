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
        </style>
    </head>
    <body>
        <h1 class="center">ERROR</h1>
        <br><h2 class="center">Invalid User-Name or Password. Kindly Go back and check again! </h2>
        <form action="userLogin.jsp">
            <input class="btn-primary btn_center" type="submit" value="Go back" name="back" />
                   
        </form>
    </body>
</html>
