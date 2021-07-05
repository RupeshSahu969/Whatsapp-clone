
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="db_Con.jsp"%>
        <%
            String name=request.getParameter("name");
            String pass=request.getParameter("pass");
            String email=request.getParameter("email");
            String p=request.getParameter("p");
            
            ResultSet rs=stat.executeQuery("Select * from user_reg order by user_id desc");
            int user_id=1;
            if(!rs.next())
            {
                user_id=1;
            }
            else
            {
                user_id=rs.getInt("user_id")+1;
            }
            stat.executeUpdate("insert into user_reg values(" + user_id + ",'" + name + "','" + pass + "','" + email + "','" + p + "')");
            //out.println(user_id);
    %>
    <center><a href="login.jsp"><h1>Login<h1></a></center>
    </body>
</html>
