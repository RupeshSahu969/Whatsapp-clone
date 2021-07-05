<%-- 
    Document   : report
    Created on : Feb 27, 2021, 5:40:59 PM
    Author     : Asus
--%>

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
    <center>
        <table>
        </tbody>
        <tr>
            <td>
        
                                                    
              <%

                  String name=request.getParameter("name");
                  String email=request.getParameter("email");
             
    rs=stat.executeQuery("select name, email from user_reg");
    md=rs.getMetaData();
    int c=md.getColumnCount();

    for(int i=1; i<=c;i++)
	{

		//out.println("<th>" + md.getColumnName(i));
	
	}
    int n=0;
    while(rs.next())
    {
	n++;
	out.println("<tr>");
	//for(int i=1; i<=c;i++)
	{
		if(n%2!=0)
                {
                    out.println("<td><a href=#>" + rs.getString("name")+"</a>");
                    out.println("<td><a href=#>" + rs.getString("email")+"</a>");
                }
        
                else
                {
                    out.println("<td><a href=#>" + rs.getString("name")+"</a>");
                    out.println("<td><a href=#>" + rs.getString("email")+"</a>");
                }
	}
}
        %>
            </td>
        </tr>
        </tbody>
</table>
    </body>
</html>
