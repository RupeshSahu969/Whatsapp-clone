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
           Calendar cal;
           String tm="", dt="";
           int h, m, s;
    
            cal=Calendar.getInstance();
            h =cal.get(Calendar.HOUR);
            m =cal.get(Calendar.MINUTE);
            s =cal.get(Calendar.SECOND);
    
            String user_to=request.getParameter("user_to");
            String msg=request.getParameter("msg");
            String user_id=(String)session.getAttribute("user_id");
            
            
             dt=cal.get(Calendar.DATE) + "/" +(cal.get(Calendar.MONTH)+1) + "/" +cal.get(Calendar.YEAR);
             tm= h +  " : " + m +  " : " +  s;
             
            
            ResultSet rs=stat.executeQuery("Select * from msg_table order by s_no desc");
            int s_no=0;
            if(!rs.next())
            {
                s_no=1;
            }
            else
            {
              s_no=rs.getInt("s_no")+1;
            }
            
        
            stat.executeUpdate("insert into msg_table values(" + s_no + ",'" + user_id + "','" + user_to + "','" + dt + "','" + tm + "','" + msg + "','" + 1 + "'," + 1 + ")");
             
            
         %>
        <a href="db_msg2.jsp"><h1>View Message</h1></a>
    </body>
</html>
