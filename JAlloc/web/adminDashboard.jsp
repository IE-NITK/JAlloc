<%-- 
    Document   : adminDashboard
    Created on : 23 Dec, 2020, 4:25:05 PM
    Author     : Saish Mendke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .button{
                width:12%;
                  margin-left: auto;
                  margin-right: auto;
            }
            .button1{
                margin-left: auto;
                margin-right: auto;
            }
            .center{
                text-align: center;
            }
            .table th{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <br><h1 class="center">Click the button present below to Allocate seats</h1><br>
        <div class="button"><a href="allocateSeatsProcess.jsp"  class="btn btn-info" role="button">Allocate seats</a></div>
        <form name="college" action="addCollegeProcess.jsp">
            <br><br><h2 class="center">Add a College and Branch</h2>
            <br><table border="1" class="table table1">
                <tbody>
                    <tr>
                        <th scope="row">College: </th>
                        <th><input type="text" name="college" value="Enter the College" size="25" /></th>
                    </tr>
                    <tr>
                        <th scope="row">Password: </th>
                        <th><input type="password" name="password" value="Enter the Password" size="25" /></th>
                    </tr>
                </tbody>
            </table>
            <div class="button"><input type="submit" class="btn btn-info" role="button" value="Add College"></div>
        </form>
    </body>
</html>
