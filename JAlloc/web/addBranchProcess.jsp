<%-- 
    Document   : addBranchProcess
    Created on : 3 Jan, 2021, 1:12:23 AM
    Author     : Saish Mendke
--%>

<%@page import="java.sql.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding a new Branch</title>
    </head>
    <body>
        <%!
            String branch = null;
            String college = null;
            int seats = 0;
            ResultSet resultSet = null;
            Connection con = null;
            int number = 0;
            //static int flag = 0;
            PreparedStatement selectBranch = null;
            PreparedStatement insertBranch = null;
        %>
        <%
            try{
                session.setAttribute("flag3",0);
                
                System.out.println("hi");
                
                seats = Integer.parseInt(request.getParameter("seats"));
                
                college = session.getAttribute("orgName").toString();
                
                branch = request.getParameter("branch");
                
                con = DriverManager.getConnection("jdbc:mysql://localhost/jalloc", "root", "");
                
                selectBranch = con.prepareStatement("SELECT branch from colleges where college='" + college + "';");
                
                System.out.println(selectBranch);
                
                resultSet = selectBranch.executeQuery();
                
                while(resultSet.next()){
                    if(resultSet.getString("branch").equals(null))
                    {
                        continue;
                    }
                    System.out.println(session.getAttribute("flag3"));
                    if(branch.equals(resultSet.getString("branch"))){
                        session.setAttribute("flag3","1");
                    }
                }
                
                if(session.getAttribute("flag3").equals("1")){
                    response.sendRedirect("sameBranchError.jsp");
                }

                if(! session.getAttribute("flag3").equals("1")){
                    insertBranch = con.prepareStatement("INSERT into colleges values('"+college+"', '"+branch+"', '"+seats+"', "+seats+");");
                
                    insertBranch.executeUpdate();
                                    
                    System.out.println(insertBranch);

                    branch = null;

                    college = null;

                    response.sendRedirect("orgDashboard.jsp");
                    }
                                    
                } catch(SQLException e){
                    response.sendRedirect("orgError.jsp");
                    e.printStackTrace();
                }
            %>
    </body>
</html>

