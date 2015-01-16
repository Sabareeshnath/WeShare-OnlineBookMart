/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.connect.security;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
/**
 *
 * @author $abzz
 */
public class RequestPassword
{
    public static void sendMail(String id)
{
     final String username = "wesharebookmart@gmail.com";
		final String password = "weshare@rvscet";
                String p=getPassword(id);

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.socketFactory.port","465");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "465");

		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
            @Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("rvscetcse2015@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(id));
			message.setSubject("Testing Subject");
			message.setText("Dear User,"
				+ "Your Password Is "+p);

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e)
                {
                    
			throw new RuntimeException(e);
		}
}
public static String getPassword(String id){
    String p="";
    try {

    
        String sql1="select Password from Login_Credentials where Email='"+id+"' ";
      
        DBConnection db=new DBConnection();
        ResultSet rs=db.getData(sql1);
      
        if(rs.next()){
           p =rs.getString("Password");
          

        }
        db.DBClose();
    }
       catch (Exception e) {
        e.printStackTrace();
    }
    return p;
}

    
}
