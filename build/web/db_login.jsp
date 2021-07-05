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
           Calendar cal;
           String tm="", dt="";
           int h, m, s;
    
            cal=Calendar.getInstance();
            h =cal.get(Calendar.HOUR);
            m =cal.get(Calendar.MINUTE);
            s =cal.get(Calendar.SECOND);
             String user_id=request.getParameter("user_id");
             String pass=request.getParameter("pass");
             
            
             dt=cal.get(Calendar.DATE) + "/" +(cal.get(Calendar.MONTH)+1) + "/" +cal.get(Calendar.YEAR);
             tm= h +  " : " + m +  " : " +  s;

            ResultSet rs=stat.executeQuery("select * from user_reg where email='" + user_id + "' and pass='" + pass + "'");
            
            if(rs.next())
            {
              session.setAttribute("user_id" , user_id);
              session.setAttribute("name",rs.getString("name"));
	
        	//response.sendRedirect("login2.jsp");

            
            rs=stat.executeQuery("Select * from log_file order by s_no desc");
             int s_no=0;
            if(!rs.next())
            {
                s_no=1;
                
            }
            else
            {
              s_no=rs.getInt("s_no")+1;
            }
            
            
            stat.executeUpdate("insert into log_file values(" + s_no + ",'" + user_id + "','" +pass+ "','" + dt + "','" + tm + "','" + 1 + "')");
            
            }       

      %>  
    <center> 
        <a href="message.jsp"><h1>Message</h1></a>
        <a href="db_msg2.jsp"><h1>View Message</h1></a>
        <center><a href="logout.jsp"><h1>Logout</h1></a></center>
    </center>
    </body>
</html>
