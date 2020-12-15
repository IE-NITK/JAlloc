<%-- 
    Document   : error
    Created on : 13 Dec, 2020, 11:51:23 PM
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
        <br><h2 class="center">You have either selected an already set preference or chosen a null value. Kindly Go back and check again! </h2>
        <form action="dashboard.jsp">
            <input class="btn-primary btn_center" type="submit" value="Go back to Dashboard" name="back" />
        </form>
    </body>
</html>
