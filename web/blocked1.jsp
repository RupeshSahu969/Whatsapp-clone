<%-- 
    Document   : blocked1
    Created on : Mar 19, 2021, 12:41:32 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        
         <%@ include file="db_Con.jsp"%>
         <%
             
           String user_id=(String)session.getAttribute("user_id");
           String user2block=request.getParameter("user2block");
           String comp=request.getParameter("comp");
           
           ResultSet rs=stat.executeQuery("select user_id from log_file");
          
          out.println(user_id);
           while(rs.next())
           {
               out.println(" <p> <b>" + rs.getString("user_id") + "</b>");
                
           }
           stat.executeUpdate("insert into user2block values('" + user_id + "','" + user2block + "','" + comp + "')");
         %>
        
        
    </body>
</html>
