package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.awt.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.*;
import java.awt.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class whatsapp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection con;
            Statement stat;
            ResultSet rs;
            ResultSetMetaData md;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/db_Con.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("   \n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("     <link href=\"style.css\" type=\"text/css\" rel=\"stylesheet\" />\n");
      out.write("    <title>WhatsApp Web</title>\n");
      out.write("    \n");
      out.write("    <!--\n");
      out.write("\n");
      out.write("         function message-area(){\n");
      out.write("             const[seed , setInput] = userState(\"\");\n");
      out.write("            const[seed , setSeed] = userState(\"\");\n");
      out.write("            userEffect(() => {\n");
      out.write("            setSeed(Math.floor(Math.random() * 5000));\n");
      out.write("            },[]);\n");
      out.write("            const sendMessage = (e) => {\n");
      out.write("            e.preventDefult();\n");
      out.write("            console.log(\"you typed >>> \",input);\n");
      out.write("            setInput(\"\"); \n");
      out.write("            \n");
      out.write("            };\n");
      out.write("-->\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      \n");
      out.write("      ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "Rupesh@123");
            stat=con.createStatement();
        
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("      <div class=\"back-container\">\n");
      out.write("      <div class=\"container-fluid front-container\">\n");
      out.write("          <div class=\"back-top\"></div>\n");
      out.write("          <div class=\"back-main\"></div>\n");
      out.write("      </div>\n");
      out.write("          <div class=\"container front-container1\">\n");
      out.write("              <div class=\"row chat-top\">\n");
      out.write("                  <div class=\"col-sm-4 border-right border-secondary\">\n");
      out.write("                      <center><a href=\"login.jsp?user_from=\"><button class=\"btn btn-default mr-2 p-2 mt-1 bg-primary\" search-icon name=\"\" type=\"submit\">Add new  user</button></a></center>\n");
      out.write("                  \n");
      out.write("       \n");
      out.write("                  \n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-sm-8\">\n");
      out.write("                      <img src=\"images/p4.jpeg\" alt=\"\" class=\"profile-image rounded-circle\">\n");
      out.write("                      \n");
      out.write("                      <span ml-2>\n");
      out.write("                              ");

      
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
        
      out.write("\n");
      out.write("        \n");
      out.write("                      </span>\n");
      out.write("                      \n");
      out.write("                      <span class=\"float-right mt-2\">\n");
      out.write("                          \n");
      out.write("                          <a href=\"search1.jsp\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-search\" viewBox=\"0 0 16 16\">\n");
      out.write("  <path d=\"M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z\"/>\n");
      out.write("  </svg></a>\n");
      out.write("                                                           <a href=\"#\">  <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-paperclip mx-3\" viewBox=\"0 0 16 16\">\n");
      out.write("  <path d=\"M4.5 3a2.5 2.5 0 0 1 5 0v9a1.5 1.5 0 0 1-3 0V5a.5.5 0 0 1 1 0v7a.5.5 0 0 0 1 0V3a1.5 1.5 0 1 0-3 0v9a2.5 2.5 0 0 0 5 0V5a.5.5 0 0 1 1 0v7a3.5 3.5 0 1 1-7 0V3z\"/>\n");
      out.write("  </svg></a>\n");
      out.write("                          <a href=\"#\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-three-dots-vertical mx-3\" viewBox=\"0 0 16 16\">\n");
      out.write("  <path d=\"M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z\"/>\n");
      out.write("  </svg></a>\n");
      out.write("                          \n");
      out.write("                      </span>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"row\">\n");
      out.write("                  <div class=\"col-sm-4 contacts\">\n");
      out.write("                      <div class=\"contact-table-scroll\">\n");
      out.write("                          <table class=\"table table-hover p-3\">\n");
      out.write("\n");
      out.write("                              <tbody>\n");
      out.write("                                  <tr>\n");
      out.write("                                      <td>\n");
      out.write("                                  \n");
      out.write("    ");

      
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
        
      out.write("\n");
      out.write("        \n");
      out.write("                                      </td>\n");
      out.write("                                  </tr>\n");
      out.write("                              </tbody>\n");
      out.write("                          </table>\n");
      out.write("                      </div>\n");
      out.write("                      \n");
      out.write("                  </div>\n");
      out.write("        \n");
      out.write("                      <div class=\"col-sm-8 message-area\">\n");
      out.write("                          \n");
      out.write("                          \n");
      out.write("                       <div class=\"message-table-scroll\">\n");
      out.write("                           \n");
      out.write("                           <p class=\"chat_message chat_tm caht_reciever\">\n");
      out.write("          ");

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
        
      out.write("\n");
      out.write("                         </p>\n");
      out.write("                           \n");
      out.write("                      </div>\n");
      out.write("                          \n");
      out.write("                          <div class=\"row message-box p-3\">\n");
      out.write("                              <div class=\"col-sm-2 p-1 mt-2\">\n");
      out.write("                                 \n");
      out.write("                              </div>\n");
      out.write("                              <div class=\"col-sm-8\">\n");
      out.write("                                  <form action=\"db_msg.jsp\" method=\"get\">\n");
      out.write("                                      <input type=\"text\" class=\"form-control\" name=\"msg\" value=\"\" onChange=\"{(e) => setInput(e.target.value)}\"  placeholder=\"Type a message..\">\n");
      out.write("                                      \n");
      out.write("                                  \n");
      out.write("                                  \n");
      out.write("                              </div>\n");
      out.write("                              <div class=\"col-sm-2 p-1 mr-2 \">\n");
      out.write("                                  \n");
      out.write("                                  <button onClick=\"sendMessage()\" type=\"submit\" bg-primary \">sendMessage</button>\n");
      out.write("                                   </form>\n");
      out.write("                                  <MicIcon />\n");
      out.write("                              </div>\n");
      out.write("                              \n");
      out.write("                          </div>\n");
      out.write("                          \n");
      out.write("                  </div>\n");
      out.write("                  \n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <!-- Option 2: Separate Popper and Bootstrap JS -->\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js\" integrity=\"sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js\" integrity=\"sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG\" crossorigin=\"anonymous\"></script>\n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
