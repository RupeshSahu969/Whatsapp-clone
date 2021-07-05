
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
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

     <link href="style.css" type="text/css" rel="stylesheet" />
    <title>WhatsApp Web</title>
    
    <!--

         function message-area(){
             const[seed , setInput] = userState("");
            const[seed , setSeed] = userState("");
            userEffect(() => {
            setSeed(Math.floor(Math.random() * 5000));
            },[]);
            const sendMessage = (e) => {
            e.preventDefult();
            console.log("you typed >>> ",input);
            setInput(""); 
            
            };
-->
  </head>
  <body>
      
      <%@ include file="db_Con.jsp"%>
      <div class="back-container">
      <div class="container-fluid front-container">
          <div class="back-top"></div>
          <div class="back-main"></div>
      </div>
          <div class="container front-container1">
              <div class="row chat-top">
                  <div class="col-sm-4 border-right border-secondary">
                      <center><a href="login.jsp?user_from="><button class="btn btn-default mr-2 p-2 mt-1 bg-primary" search-icon name="" type="submit">Add new  user</button></a></center>
                  
       
                  
                  </div>
                  <div class="col-sm-8">
                      <img src="images/p4.jpeg" alt="" class="profile-image rounded-circle">
                      
                      <span ml-2>
                              <%
      
        String user_id=(String)session.getAttribute("user_id");
        session.setAttribute("user_id" , user_id);
        out.println(user_id);
        String s_no=request.getParameter("s_no");
        ResultSet rs=stat.executeQuery("select * from msg_table where s_no=" + s_no + " ");
        if(rs.next())
        {
	out.println("<center>");
	out.println(" <p> user_to: <b>" + rs.getString("user_to") + "</b>");
	out.println("<p> Message : <b>" + rs.getString("msg") + "</b>");	
        }
        %>
        
                      </span>
                      
                      <span class="float-right mt-2">
                          
                          <a href="search1.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
  </svg></a>
                                                           <a href="#">  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-paperclip mx-3" viewBox="0 0 16 16">
  <path d="M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z"/>
  </svg></a>
                          <a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots-vertical mx-3" viewBox="0 0 16 16">
  <path d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
  </svg></a>
                          
                      </span>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-4 contacts">
                      <div class="contact-table-scroll">
                          <table class="table table-hover p-3">

                              <tbody>
                                  <tr>
                                      <td>
                                  
    <%
      
        user_id=(String)session.getAttribute("user_id");
        //session.setAttribute("user_id" , user_id);
        out.println(user_id);
         s_no=request.getParameter("s_no");
         rs=stat.executeQuery("select * from msg_table where s_no=" + s_no + " ");
        if(rs.next())
        {
	out.println("<td> <p> user_to: <b>" + rs.getString("user_to") + "</b>");
	out.println("<td><p> Message : <b>" + rs.getString("msg") + "</b>");	
        }
        %>
        
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                      </div>
                      
                  </div>
        
                      <div class="col-sm-8 message-area">
                          
                          
                       <div class="message-table-scroll">
                           
                           <p class="chat_message chat_tm caht_reciever">
          <%
           Calendar cal;
           String tm="", dt="";
           int h, m, s;
    
            cal=Calendar.getInstance();
            h =cal.get(Calendar.HOUR);
            m =cal.get(Calendar.MINUTE);
            s =cal.get(Calendar.SECOND);
            
           user_id=(String)session.getAttribute("user_id");
        //session.setAttribute("user_id" , user_id);
            dt=cal.get(Calendar.DATE) + "/" +(cal.get(Calendar.MONTH)+1) + "/" +cal.get(Calendar.YEAR);
             tm= h +  " : " + m +  " : " +  s;
             
        out.println(user_id);
         s_no=request.getParameter("s_no");
        rs=stat.executeQuery("select * from msg_table where s_no=" + s_no + " ");
        if(rs.next())
        {
	
	out.println("<p> Message : <b>" + rs.getString("msg") + "</b>");	
        }
        %>
                         </p>
                           
                      </div>
                          
                          <div class="row message-box p-3">
                              <div class="col-sm-2 p-1 mt-2">
                                 
                              </div>
                              <div class="col-sm-8">
                                  <form action="db_msg.jsp" method="get">
                                      <input type="text" class="form-control" name="msg" value="" onChange="{(e) => setInput(e.target.value)}"  placeholder="Type a message..">
                                      
                                  
                                  
                              </div>
                              <div class="col-sm-2 p-1 mr-2 ">
                                  
                                  <button onClick="sendMessage()" type="submit" bg-primary ">sendMessage</button>
                                   </form>
                                  <MicIcon />
                              </div>
                              
                          </div>
                          
                  </div>
                  
              </div>
          </div>
          
      </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    
  </body>
</html>
</html>

