package com.project.utils;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

public class Basemethods {

	public static String getUser() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		return userName;
	}

	public static String generatePassword() {

		int n = 8;
		// chose a Character random from this String
		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";

		// create StringBuffer size of AlphaNumericString
		StringBuilder sb = new StringBuilder(n);

		for (int i = 0; i < n; i++) {

			// generate a random number between
			// 0 to AlphaNumericString variable length
			int index = (int) (AlphaNumericString.length() * Math.random());

			// add Character one by one in end of sb
			sb.append(AlphaNumericString.charAt(index));
		}

		return sb.toString();
	}

	/*
	 * public static void sendMail(String receiver,String securityKey,String
	 * userName){
	 * 
	 * final String from = "noreply.bookyourtiffin@gmail.com"; final String
	 * username = ""; final String password = "Tiffin@123";
	 * 
	 * String host = "smtp.gmail.com";
	 * 
	 * Properties props = new Properties(); props.put("mail.smtp.auth", "true");
	 * props.put("mail.smtp.starttls.enable", "true");
	 * props.put("mail.smtp.host", host); props.put("mail.smtp.port", "587");
	 * props.put("mails.smtp.ssl.trust","smtp.gmail.com");
	 * 
	 * Session session = Session.getInstance(props, new
	 * javax.mail.Authenticator() { protected PasswordAuthentication
	 * getPasswordAuthentication() { return new PasswordAuthentication(from,
	 * password); } });
	 * 
	 * try { Message message = new MimeMessage(session); message.setFrom(new
	 * InternetAddress(from)); message.setRecipients(Message.RecipientType.TO,
	 * InternetAddress.parse(receiver)); message.setSubject("Approve ");
	 * 
	 * 
	 * message.setText("Hello ,  " + userName + " your OTP is " + securityKey );
	 * 
	 * Transport.send(message);
	 * 
	 * System.out.println("Sent message successfully....");
	 * 
	 * } catch (Exception e) {
	 * 
	 * e.printStackTrace(); }
	 * 
	 * }
	 */
	public static void sendMail(String email, String OTP) {
		System.out.println("in mail send method::::");
		java.util.Properties properties = new java.util.Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

		try {
			MimeMessage message = new MimeMessage(mailSession);

			message.setContent("Dear Customer, your profile has been created on power consumption monitoring web portal Your UserId is "+ email + " and Password is " + OTP, "text/html");
			message.setSubject("Approved ");

			InternetAddress sender = new InternetAddress("noreply.consumptionmonitorig@gmail.com", "project");
			InternetAddress receiver = new InternetAddress(email);
			message.setFrom(sender);
			message.setRecipient(Message.RecipientType.TO, receiver);
			message.saveChanges();

			javax.mail.Transport transport = mailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", 587, "noreply.consumptionmonitoring@gmail.com", "consumption@123");
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
			System.out.println("Msg sent :::: ");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
