<%-- 
    Document   : preferenceProcess
    Created on : 13 Dec, 2020, 11:37:16 PM
    Author     : Saish Mendke
--%>

<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding a new Preference</title>
    </head>
    <body>
        <%!
            String branch = null;
            String college = null;
            String userName = null;
            ResultSet resultSet = null;
            Connection con = null;
            int number = 0;
            //static int flag = 0;
            PreparedStatement selectPreference = null;
            PreparedStatement insertPreference = null;
        %>
        <%
            try{
                session.setAttribute("flag",0);
                
                userName = session.getAttribute("userName").toString();
                
                System.out.println("hi");
                
                number = Integer.valueOf(session.getAttribute("number").toString());
                
                college = session.getAttribute("college").toString();
                
                branch = request.getParameter("branch");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectPreference = con.prepareStatement("SELECT * from preference where name='"+userName+"';");
                
                System.out.println(selectPreference);
                
                resultSet = selectPreference.executeQuery();
                
                while(resultSet.next()){
                    if(resultSet.getString("college").equals(null) || resultSet.getString("branch").equals(null))
                    {
                        continue;
                    }
                    System.out.println(session.getAttribute("flag"));
                    if(college.equals(resultSet.getString("college")) && branch.equals(resultSet.getString("branch"))){
                        session.setAttribute("flag",1);
                    }
                }
                
                if(session.getAttribute("flag").toString().equals("1")){
                    response.sendRedirect("error.jsp");
                }

                if(! session.getAttribute("flag").toString().equals("1")){
                    insertPreference = con.prepareStatement("INSERT into preference values('"+userName+"', '"+college+"', '"+branch+"', "+number+");");
                
                    insertPreference.executeUpdate();
                                    
                    System.out.println(insertPreference);

                    branch = null;

                    college = null;

                    response.sendRedirect("dashboard.jsp");
                    }
                                    
                } catch(SQLException e){
                    e.printStackTrace();
                    response.sendRedirect("error.jsp");
                }
            %>
    </body>
</html>
