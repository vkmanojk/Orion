package com.orion.user;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtility {
	public static void sendEmail(String host, String port, final String senderEmail, String senderName,
			final String password, String recipientEmail, String subject, String message)
			throws AddressException, MessagingException, UnsupportedEncodingException {

		Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		
		System.out.println("Email utility");
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(senderEmail, password);
			}
		};
		System.out.println("Email utility1");
		Session session = Session.getInstance(properties, auth);
		System.out.println("Email utility2");
		// creates a new e-mail message
		Message msg = new MimeMessage(session);
		System.out.println("Email utility3");
		msg.setFrom(new InternetAddress(senderEmail, senderName));
		InternetAddress[] toAddresses = { new InternetAddress(recipientEmail) };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		msg.setText(message);

		// sends the e-mail
		Transport.send(msg);

	}
}
