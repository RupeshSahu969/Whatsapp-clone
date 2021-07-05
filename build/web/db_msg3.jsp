<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>

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
        //session.setAttribute("user_id" , user_id);
        out.println(user_id);
        String s_no=request.getParameter("s_no");
        ResultSet rs=stat.executeQuery("select * from msg_table where s_no=" + s_no + " ");
        if(rs.next())
        {
	out.println("<center>");
	out.println(" <p> user_to: <b>" + rs.getString("user_to") + "</b>");
	out.println("<p> Message : <b>" + rs.getString("msg") + "</b>");	
        }
        %>
        
        
    </body>
</html>
