/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connect.security;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author $abzz
 */
public class AuthenticateLogin extends HttpServlet {

    
    
String dbtime;
String dbUrl = "jdbc:odbc:We_Share";
String dbClass = "com.mysql.jdbc.Driver";
String query = "";
    
String adminSelectQuery="";
int authenticatorFlag=0;
int userTypeFlag=5;
        
        String DBPass= "";
        String DBUser= "";
        String DBName="";


static final int LOGIN_SUCCESS=1;
static final int LOGIN_WRONGPASSWORD=2;
static final int LOGIN_UNKNOWNUSERNAME=3;
static final int ADMIN_USER=4;
static final int NORMAL_USER=5;

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Please wait while we authenticate your credentials...</title>");  
            out.println("</head>");
            out.println("<body>");
            
            out.println("</body>");
            out.println("</html>");
            
            
            String Username="";
            String Password="";
           
            
            
            Username=request.getParameter("Username");
            Password=request.getParameter("Password");
      
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con= DriverManager.getConnection (dbUrl,"sa","sa1");
            Statement stmt= con.createStatement();
            
            query="select UserId, Password from Login_Credentials where UserId='"+Username+"'";
          
            
            
            ResultSet rs = stmt.executeQuery(query); 
            
            Connection con2= DriverManager.getConnection (dbUrl,"sa","sa1");
             Statement smt= con2.createStatement();
         
             query="select SName from Student_Information where UserId='"+Username+"'";
             ResultSet rss= smt.executeQuery(query) ;
            
        boolean UserAuth= false;
        if(rs.next() && rss.next())
        {
            
        DBUser = rs.getString("UserId");
        DBPass = rs.getString("Password");
        DBName=rss.getString("SName");
        UserAuth = DBUser.contains(Username);
        }
                if(UserAuth)
        { 
            authenticatorFlag= LOGIN_WRONGPASSWORD;
            
            if(DBPass.contains(Password))
            {
                
                authenticatorFlag= LOGIN_SUCCESS;
                
            }  
        }
        else
        {
            authenticatorFlag= LOGIN_UNKNOWNUSERNAME;
        }
        if( "".equals(Password)||Password==null)
        {
            authenticatorFlag=LOGIN_WRONGPASSWORD;
        }
        if( "".equals(Username)||Username==null)
        {
            authenticatorFlag=LOGIN_UNKNOWNUSERNAME;
        }
        
         con2.close();
         con.close();
         
         
        
         
         
         
            if(authenticatorFlag==LOGIN_SUCCESS)
        {
            
            
            HttpSession newUserSession = request.getSession(true);
            
            newUserSession.setMaxInactiveInterval(1800);
            newUserSession.setAttribute("Username", Username);
            newUserSession.setAttribute("Name", DBName);
            newUserSession.setAttribute("Privilage", "normalUser");
         
            response.sendRedirect("home.jsp");
        }
        else if(authenticatorFlag==LOGIN_WRONGPASSWORD)
        {
             out.println("<html>");
            out.println("<head>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center>");
            out.print("<img src='images/Useri.jpg' alt='image' width='700' height='700' />");
            out.println("<br>Please check the password you have entered and try again...<br>");//entered password: "+Password+"<br>DB password: "+DBPass);
            out.println("<br><a href=\"inter_home.html\">Click here to try again</a>");
            out.println("</body>");
            out.println("</html>");
        }
        else if(authenticatorFlag==LOGIN_UNKNOWNUSERNAME)
        {   out.println("<html>");
            out.println("<head>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center>");
            out.print("<img src='images/Useri.jpg' alt='image' width='700' height='700' />");
            
            out.println("<br>The username you have entered"
                   
                    +" does not exist in our database...");
            
            out.println("<br><a href=\"inter_home.html\">Click here to try again</a> ... OR ... "
                    + "<a href=\"register.jsp\">Click here to register</a>");
            out.println("</body>");
            out.println("</html>");
        }
           
        } 
        catch(Exception e)
        {
           
            out.println("<br><br><br>It seems we have some error in our login mechanism...<br>Don't worry, we'll get"
                    + "it fixed up pretty soon..."
                    + "<br><br>Here's a bit of technical stuff for debugging : <br><br>");
            e.printStackTrace(out);
    
         
            
        } finally {            
            out.close();
        }
    }
     // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AuthenticateLogin.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AuthenticateLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AuthenticateLogin.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AuthenticateLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
 
