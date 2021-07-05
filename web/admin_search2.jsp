<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<head>

    </head>
    <body>
        
       <%@ include file="db_Con.jsp"%>
         <%
            String user_id=(String)session.getAttribute("user_id");
            String search_txt=request.getParameter("search_txt");
            //String msg=request.getParameter("msg");
            
            rs=stat.executeQuery("select * from msg_table where (user_from like '%" + search_txt + "%' or msg like '%" + search_txt + "%') and (user_to='" + user_id + "')");
            while(rs.next())
            {
                out.println("<p><b>" + rs.getString("msg") + "</b>");
            }
         %>

    </body>
</html>