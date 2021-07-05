<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        
        <form action="blocked1.jsp" method="get">
            <input type="text" name="user2block">

            Why:
        <select name=comp>
        <option value="Banned"> Banned</option>
        <option value="Some body hack my whatsapp code">Some body hack my whatsapp code</option>
        <option value="A Fraud message">A Fraud message</option>
        <option value="He is tourchring">He is tourchring</option>
        <option value="Unwanted and disrespectful messages">Unwanted and disrespectful messages</option>
        <option value="Update feature problem">Update feature problem</option>
        </select>
        <button type="submit" value="Block">Block</button>
    </center>
    </body>
</html>
