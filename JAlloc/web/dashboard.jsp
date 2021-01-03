<%-- 
    Document   : dashboard
    Created on : 10 Dec, 2020, 6:30:35 PM
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
        <title>Dashboard</title>
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
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <script>
            function myFunction() {
                    document.getElementById("Add preference").disabled = true;
            }
            function Function(){
                    document.getElementById("Add preference").disabled = false;
            }
        </script>
        <%!
            String s= null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement selectPreference = null;
            PreparedStatement insertPreference = null;
        %>
        <%! public class Actor{
            String s= null;
            ResultSet resultSet = null;
            Connection con = null;
            PreparedStatement selectColleges = null;
            public Actor(){
            try{
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectColleges = con.prepareStatement("SELECT distinct college from Colleges");
            
            } catch (SQLException e){
                e.printStackTrace();
            }
           }
            
           public ResultSet getColleges(){
                try{
                    resultSet = selectColleges.executeQuery();
                }
                catch(SQLException e){
                    e.printStackTrace();
                }
                return resultSet;
            }
        }
            %>
            <%!
                Actor actor = new Actor();
                ResultSet colleges = actor.getColleges();
                String college = null;
                String foo = null;
                String branch = null;
                String userName = null;
                int number = 1;
%>
        <nav class="navbar navbar-light bg-light justify-content-end">
        <ul class="nav justify-content-end">
            <li class="nav-item">
              <a class="nav-link active" href="viewResults.jsp">View Results</a>
            </li>
          </ul>
        </nav><br>
        <h1 class="center">Add Preferrences</h1>
        <form name="college" action="dashboard.jsp">
            <br><br><table border="1" class="table table1">
                <tbody>
                    <tr>
                        <th scope="row">College: </th>
                        <%
                            ResultSet resultSet = null;
                            Connection con = null;
                            PreparedStatement selectColleges = null;
                            try{
                                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");

                                selectColleges = con.prepareStatement("SELECT distinct college from Colleges");
                                
                                resultSet = selectColleges.executeQuery();
                                
                                colleges = resultSet;

                            } catch (SQLException e){
                                e.printStackTrace();
                            }
                        %>
                        <% college = request.getParameter("college");%>
                        <td><select name="college">
                        <% if(college != null){ %>
                            <option  selected="selected"><%= college %></option>
                            <% }%>
                            <% while(colleges.next()){ 
                                if(colleges.getString("college")!=null){
                            %>
                                <option><%= colleges.getString("college") %></option>
                            <% }} %>
                            </select></td>
                            <% college = request.getParameter("college");
                               branch = null;
                            %>
                            <td><input type="submit" value="Select College"><% branch = null; %></button></td>
                            <% session.setAttribute("college",request.getParameter("college")); %>
                    </tr>
                </tbody>
            </table>
        </form>
        <form name="branch" action="preferenceProcess.jsp" method="post">
            <table border="1" class="table table1">
                <tbody>
                    <tr>
                        <th scope="row">Branch: </th>
                        <%-- branch = request.getParameter("branch");--%>
                        <td><select name="branch">
                            <option selected="selected"><%= branch %></option>\
                            <% branch = request.getParameter("branch");
                            ResultSet branches =null;
                            PreparedStatement selectBranches = null;
                               try{
                                   con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                                   selectBranches = con.prepareStatement("SELECT branch from Colleges where college = '"+college+"';");

                                   System.out.println(selectBranches);
                                   branches = selectBranches.executeQuery();
   
                               } catch(SQLException e)
                               {
                                   e.printStackTrace();
                               }
                            %>
                             <% while(branches.next()){ %>
                             <% if(!(branches.getString("branch").equals(null))){ %>
                                <option><%= branches.getString("branch") %></option>
                             <% }} %>
                            </select></td>
                            <% branch = request.getParameter("branch");%>
                            <td><input type="submit" value="Add preference" id="Add preference"></td>
                            <%--
                                try{
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");

                                    insertPreference = con.prepareStatement("INSERT into preference values('"+userName+"', '"+college+"', '"+branch+"', "+number+");");

                                    insertPreference.executeUpdate();
                                    
                                    System.out.println(insertPreference);
                                    
                                    branch = null;
                                    
                                    college = null;
                                    
                                } catch(SQLException e){
                                    e.printStackTrace();
                                }
                            --%>
                    </tr>
                </tbody>
            </table>
        </form>
                    <br><br><h1 class="center">Here are your Preferrences</h1><br>
        <% 
            try{
                 
                userName = session.getAttribute("userName").toString();
                
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectPreference = con.prepareStatement("SELECT college, branch, number from Preference where name='"+userName+"' order by number ASC;");
                
                System.out.println(selectPreference);
                
                resultSet = selectPreference.executeQuery();
                
                System.out.println(selectPreference); %>
                
                <table border="1" class="table center">
                    <thead>
                        <tr>
                            <th scope="row">College</th>
                            <th scope="row">Branch</th>
                            <th scope="row">Preference Number</th>
                        </tr>
                    </thead> 
                    <tbody>
                <% number = 1;
                    while(resultSet.next()){ 
                        if(!(resultSet.getString("branch").equals("null"))){
                %>
                        <tr>
                            <td><%= resultSet.getString("college") %></td>
                            <td><%= resultSet.getString("branch") %></td>
                            <td><%= resultSet.getInt("number") %></td>
                            <% number = resultSet.getInt("number")+1;
                            %>
                        </tr>
                <%      }
                    }
                    session.setAttribute("number",number);
                %>
                    </tbody>
                </table>
            <% } catch(SQLException e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
