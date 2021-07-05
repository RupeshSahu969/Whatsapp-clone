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

    <center>
        <%@ include file="db_Con.jsp"%>
           <%
           
            String user_id=(String)session.getAttribute("user_id");
          ResultSet rs=stat.executeQuery("select * from msg_table where user_to='" + user_id + "'");
          //String user_to="";
          out.println(user_id);
           while(rs.next())
           {
                String s_no=rs.getString("s_no");
                //user_to=rs.getString("user_to");
                //out.println("<p>" + user_to);
                out.println(" <p><a href=db_msg3.jsp?s_no=" +s_no +  ">Seen message</a>");
                //out.println(" <a href=search2.jsp?e_id=" +e_id  +  ">update</a>");
	
            }
            
         %>
         
    </body>
</html>
