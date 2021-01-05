<%-- 
    Document   : allocateSeatsProcess
    Created on : 23 Dec, 2020, 4:48:53 PM
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
    </head>
    <body>
        <%!
            ResultSet preference = null;
            ResultSet users = null;
            ResultSet seats = null;
            Connection con = null;
            PreparedStatement getUsers = null;
            PreparedStatement getPreference = null;
            PreparedStatement getInfo = null;
            PreparedStatement allocateSeat = null;
            PreparedStatement updateSeat = null;
            int availableSeats = 0;
            
        %>
        <%
            try{
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                getUsers = con.prepareStatement("SELECT distinct name from users order by rank ASC;");
                
                System.out.println(getUsers);
                
                users = getUsers.executeQuery();
                
                while(users.next()){
                    getPreference = con.prepareStatement("SELECT college, branch, number from preference where name = '"+users.getString("name")+"' order by number ASC;");
                    
                    preference = getPreference.executeQuery();
                    
                    System.out.println(getPreference);
                    
                    while(preference.next()){
                        getInfo = con.prepareStatement("SELECT totalSeats, availableSeats from colleges where college = '" + preference.getString("college") + "' and branch = '" + preference.getString("branch") + "';");
                        
                        seats = getInfo.executeQuery();
                        
                        System.out.println(getInfo);
                        
                        seats.next();
                        
                        //System.out.println(seats.getInt("availableSeats"));
                        
                        if(Integer.valueOf(seats.getInt("availableSeats")) > 0){
                            System.out.println("hi");
                            
                            allocateSeat = con.prepareStatement("Update users set allottedCollege = '" + preference.getString("college")+ "', allottedBranch = '" + preference.getString("branch") + "' where name = '" + users.getString("name") + "';");
                            
                            System.out.println(allocateSeat);
                            
                            allocateSeat.executeUpdate();
                            
                            System.out.println("hi");
                            
                            availableSeats = Integer.parseInt(seats.getString("availableSeats")) - 1;
                            
                            System.out.println(availableSeats);
                            
                            updateSeat = con.prepareStatement("Update colleges set availableSeats = " + availableSeats + " where college = '" + preference.getString("college") + "' and branch = '" + preference.getString("branch") + "';");

                            updateSeat.executeUpdate();
                            
                            break;
                        }
                    }
                }
                
                response.sendRedirect("adminDashboard.jsp");
                
                
            }
            catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("error.jsp");
            }
        %>
    </body>
</html>
