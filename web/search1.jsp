<%-- 
    Document   : search1
    Created on : Mar 1, 2021, 6:46:12 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
             <link href="style.css" type="text/css" rel="stylesheet" />
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
           <form action="search2.jsp" method="get">
               <section
             <div class="form-container">
                 <h1>Search Form</h1>
            <div class="row">
                    <form>
                        
                        <div class="control">
                            <label for="name"> User ID :</label>
                            <input type="text" name="search_txt" placeholder="Enter User ID" required>
                        </div>
                      <div class="control">
                            <input type="submit" value="Search" >
                        </div>
                    </form>
        </div>
</section>   
            <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>