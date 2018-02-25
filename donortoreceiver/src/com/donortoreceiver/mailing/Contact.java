/**
 * 
 */
package com.donortoreceiver.mailing;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author Satish Reddy
 *
 */
@Component("mail")
public class Contact {
	@Autowired
	AuthenticationDetails authentication;
	private Properties getMailingProperties() {
		Properties properties = new Properties();
		InputStream input = null;

		try {
			ClassLoader classLoader = getClass().getClassLoader();
	       
			input = new FileInputStream(new File(classLoader.getResource("mailing.properties").getFile()));
			// load a properties file
			properties.load(input);
		} catch (IOException ex) {
			properties=null;
			ex.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return properties;
	}
	private Session getAuthentication(Properties props) {
		return Session.getInstance(props,
				  new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						
						return new PasswordAuthentication("nulaka.satish@gmail.com","Satish@19");
					}
				  });
	}
	public boolean sendMail(String to,String subject, String userName,String body) {
		boolean bool =false;
		Session session = getAuthentication(getMailingProperties());
		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(authentication.getUserName()));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(body);
			Transport.send(message);
			bool = true;
		} catch (MessagingException e) {
			bool=false;
			e.printStackTrace();
			
		}
		return bool;
	}
}
