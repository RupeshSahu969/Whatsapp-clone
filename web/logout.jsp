<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv=refresh content="2;URL=login.jsp?abc=bahar"/>
    </head>
    <body>
       <%
            session.invalidate();
            //response.sendRedirect("login.jsp");
        %>
        
    </body>
</html>
