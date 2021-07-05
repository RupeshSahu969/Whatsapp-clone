<%-- 
    Document   : message
    Created on : Feb 19, 2021, 5:44:10 PM
    Author     : Asus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <form action="db_msg.jsp" method="get"/>
       
             <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" id="form">
                    
                    <center><b class="registration">Message here</b></center>
                    <form>
                        
                        <div class="form-group">
                            <label>To :</label>
                            <input type="text" name="user_to" class="form-control text" placeholder="Enter Gmail">
                        </div>
                        <div class="form-group">
                            <label>Message :</label>
                            <textarea class="form-control" name="msg" rows="10" clos="20" placeholder="Enter Text"></textarea>
                        </div>
                      <div class="form-group">
                           
                            <input type="submit" class="btn btn-primary" value="Send Message" >
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
            <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>