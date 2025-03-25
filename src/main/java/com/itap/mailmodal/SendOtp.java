package com.itap.mailmodal;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendOtp {
	public static String sendOtp(String rEmail) {
		String sEmail = "nikhilpathak3528@gmail.com";
		String sPassword = "ozcb xaoz ggbn wkpq";
		String sub = "OTP";
		int o = (int)((Math.random()*900000)+100000);
		String body = Integer.toString(o);
		
		try {
			Properties props=new Properties();
            props.put("mail.smtp.host","smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port","465");
            props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth","true");
            props.put("mail.smtp.port","465");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            
            Session ses= Session.getInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication(sEmail,sPassword);
                }
            }
            );
            MimeMessage message=new MimeMessage(ses);
            message.setFrom(new InternetAddress(sEmail));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(rEmail));
            message.setSubject(sub);
            message.setContent(body,"text/html" );
            Transport.send(message);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return body;
	}
}
