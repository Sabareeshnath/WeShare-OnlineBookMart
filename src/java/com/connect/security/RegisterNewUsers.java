/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connect.security;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author $abzz
 */
public class RegisterNewUsers extends HttpServlet {

    String dbUrl="jdbc:odbc:We_Share";
    String dbClass="com.mysql.jdbc.Driver";
    String userInfoInsertQuery = "";
    String userLoginCredentialsInsertQuery = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          
             out.println("<html>");
            out.println("<head>");
            out.println("<title>Please wait while we analyze your request...</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>Please wait... </h2>");

      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               
        Connection con = DriverManager.getConnection (dbUrl,"sa","sa1");
        
        PreparedStatement insertUserInfo;
        
          userInfoInsertQuery="insert into Student_Information (UserId, SName, SDepart, SYear,SPhone, SEmail) "
                + "values(?,?,?,?,?,?);"
                + ""
                + "insert into Login_Credentials (UserId, Password,Email)"
                + "values (?,?,?);";

        
        insertUserInfo = con.prepareStatement(userInfoInsertQuery);
        
        String UserId=request.getParameter("regid");
        String Name= request.getParameter("name");
        String Department=request.getParameter("department");
        String Year = request.getParameter("year");
        
        String Phone = request.getParameter("phoneno");
        String Email = request.getParameter("email");
        String UserName = request.getParameter("regid");
        String Password = request.getParameter("password");
        
        insertUserInfo.setString(1, UserId);
        insertUserInfo.setString(2, Name);
        insertUserInfo.setString(3, Department);
        insertUserInfo.setInt(4, Integer.parseInt(Year));
        
        insertUserInfo.setString(5, Phone);
        insertUserInfo.setString(6, Email);
        insertUserInfo.setString(7, UserName);
        insertUserInfo.setString(8, Password);
        insertUserInfo.setString(9,Email);
        
        
        int output = insertUserInfo.executeUpdate();
       
                
    //--------------------------------------------------------------------------------
        // The following segment of out.println() code is only for debugging purposes...
        //--------------------------------------------------------------------------------
        out.println("<br><br><h3>New User Registration Details</h3>" 
                + "-----------------------------------------------------------------<br>");
        out.println("<br>UserName     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: "+UserId);
        out.println("<br>Name     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: "+Name);
        out.println("<br>Year      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: "+Year);
        
        out.println("<br>Phone    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: "+Phone);
        out.println("<br>Email    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: "+Email);
        out.println("<br>Username &nbsp&nbsp&nbsp&nbsp&nbsp: "+UserName);
        out.println("<br>Password &nbsp&nbsp&nbsp&nbsp&nbsp: "+Password);
        
         out.println("<br><br> Rows Updated are :  "+output);
        //--------------------------------------------------------------------------------        
        out.println("<br><br><a href='inter_home.html'>Click here to login...</a></body>");
        out.println("</html>");
        } 
        catch(Exception er)
        {
            out.println("<br><br> It seems we've got bugs in our systems.... Thank you for bearing with us....<br>"
                    + "We'll get this fixed for you shortly.....<br> In the meantime, here's some techical jargon<br>"
                    + "for the geeks among you....<br><br>"
                    + er.getMessage());
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
