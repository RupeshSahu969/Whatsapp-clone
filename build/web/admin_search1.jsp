<%@page  contentType="text/html" pageEncoding="UTF-8"%>
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
           <form action="admin_search2.jsp" method="get">
               <section
             <div class="form-container">
                 <h1>Search Form</h1>
            <div class="row">
                        
                        <div class="control">
                            
                            <input type="text" name="search_txt" placeholder="typing" required>
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