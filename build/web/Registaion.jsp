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
        
        
            
           <form action="reg.jsp" method="get"/>
       
             <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" id="form">
                    <center><b class="registration">Registration Form</b></center>
                    <form>
                        
                        <div class="form-group">
                            <label>User Name :</label>
                            <input type="text" name="name" class="form-control text" placeholder="Enter Name"required>
                        </div>
                        
                        <div class="form-group">
                            <label>Password :</label>
                            <input type="password" name="pass" class="form-control text" placeholder="Enter Password"required>
                        </div>
                        <div class="form-group">
                            <label>Email :</label>
                            <input type="email" name="email" class="form-control text" placeholder="Enter Email"required>
                        </div>
                        <div class="form-group">
                            <label>Mobile No :</label>
                            <input type="number" name="p" class="form-control text" placeholder="Enter Mobile Number :"required>
                        </div>
                        <div class="form-group">
                           
                            <input type="submit" class="btn btn-primary" value="Registere" >
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
        
       
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
        
    </body>
</html>
