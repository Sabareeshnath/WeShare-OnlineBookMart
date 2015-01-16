/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connect.security;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;

/**
 *
 * @author $abzz
 */
public class DBConnection {
    public Statement st=null;
    public ResultSet rs=null;
    public Connection con=null;
    public PreparedStatement ps=null;

public DBConnection(){
    try {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:We_Share","sa","sa1");
        st=con.createStatement();
    }
        catch (Exception e) {
        e.printStackTrace();
    }
}

public ResultSet getData(String sql){
    try {
        rs=st.executeQuery(sql);
    } catch (Exception e) {
        e.printStackTrace();
    }
    return rs;
}

public int putData(String sql){
    int i=-1;
    try {
         i=st.executeUpdate(sql);
         System.out.println("i is"+i);
    } catch (Exception e) {
        e.printStackTrace();
    }
    return i;
}
public int putpData(String sql){
    int i=-1;
    try 
    {
         i=ps.executeUpdate(sql);
         System.out.println("i is"+i);
    } 
    catch (Exception e) 
    {
        e.printStackTrace();
    }
    return i;
}

public void DBClose(){
    try {
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
}


