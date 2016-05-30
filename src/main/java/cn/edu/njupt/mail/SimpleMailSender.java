package cn.edu.njupt.mail;

import java.io.File;
import java.util.Date;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;



public class SimpleMailSender { 
	 public boolean sendTextMail(MailSenderInfo mailInfo) {
		 Session sendMailSession = getMailSession(mailInfo);
		 try {
			 // 根据session创建一个邮件消息
			 Message mailMessage = new MimeMessage(sendMailSession);
			 // 创建邮件发送者地址
			 Address from = new InternetAddress(mailInfo.getFromAddress());
			 // 设置邮件消息的发送者
			 mailMessage.setFrom(from);
			 // 创建邮件的接收者地址，并设置到邮件消息中
			 Address to = new InternetAddress(mailInfo.getToAddress());
			 mailMessage.setRecipient(Message.RecipientType.TO, to);
			 // 设置邮件消息的主题
			 mailMessage.setSubject(mailInfo.getSubject());
			 // 设置邮件消息发送的时间
			 mailMessage.setSentDate(new Date());
			 // 设置邮件消息的主要内容
			 String mailContent = mailInfo.getContent();
			 mailMessage.setText(mailContent);
			 // 发送邮件
			 Transport.send(mailMessage);
			 return true;
		 } catch (MessagingException ex) {
			 ex.printStackTrace();
	  	 }
		 return false;
	 }
	 public  boolean sendHtmlMail(MailSenderInfo mailInfo) {
		 Session sendMailSession = getMailSession(mailInfo);
		 try {
			 // 根据session创建一个邮件消息
			 Message mailMessage = new MimeMessage(sendMailSession);
			 // 创建邮件发送者地址
			 Address from = new InternetAddress(mailInfo.getFromAddress());
			 // 设置邮件消息的发送者
			 mailMessage.setFrom(from);
			 // 创建邮件的接收者地址，并设置到邮件消息中
			 Address to = new InternetAddress(mailInfo.getToAddress());
			 // Message.RecipientType.TO属性表示接收者的类型为TO
			 mailMessage.setRecipient(Message.RecipientType.TO, to);
			 // 设置邮件消息的主题
			 mailMessage.setSubject(mailInfo.getSubject());
			 // 设置邮件消息发送的时间
			 mailMessage.setSentDate(new Date());
			 // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
			 Multipart mainPart = new MimeMultipart();
			 // 创建一个包含HTML内容的MimeBodyPart
			 BodyPart html = new MimeBodyPart();
			 // 设置HTML内容
			 html.setContent(mailInfo.getContent(), "text/html; charset=utf-8");
			 mainPart.addBodyPart(html);
			 BodyPart attach = new MimeBodyPart();
			 attach.setDataHandler(new DataHandler(mailInfo.getAttachcontent(), "text/html; charset=gbk"));
			 attach.setFileName("salary.html");
			 mainPart.addBodyPart(attach);
			//存在附件  
           String[] filePaths = mailInfo.getAttachFileNames();  
           if (filePaths != null && filePaths.length > 0) {  
               for(String filePath:filePaths){  
               	BodyPart text = new MimeBodyPart();  
                   File file = new File(filePath);   
                   if(file.exists()){//附件存在磁盘中  
                       FileDataSource fds = new FileDataSource(file);//得到数据源  
                       System.out.println(fds);
                       text.setDataHandler(new DataHandler(fds));//得到附件本身并至入BodyPart  
                       text.setFileName(fds.getName());//得到文件名同样至入BodyPart 
                       System.out.println(file.getName());
                       mainPart.addBodyPart(text);  
                   }  
               }  
           }  
			 // 将MiniMultipart对象设置为邮件内容
			 mailMessage.setContent(mainPart);
			 // 发送邮件
			 Transport.send(mailMessage);
			 return true;
		 } catch (MessagingException ex) {
			 ex.printStackTrace();
		 }
		 return false;
	 }
	 /**
	  * @Description: 根据邮件会话属性和密码验证器构造一个发送邮件的session
	  * @Author: 高翔
	  * @Param: @param mailInfo
	  * @Param: @return
	  * @Return:Session
	  * @Date: 2015年12月17日
	  */
	private  Session getMailSession(MailSenderInfo mailInfo) {
		// 1.判断是否需要身份认证
		 MyAuthenticator authenticator = null;
		 Properties pro = mailInfo.getProperties();
		 // 如果需要身份认证，则创建一个密码验证器
		 if (mailInfo.isValidate()) {
			 authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
		 }
	 	 // 2.根据邮件会话属性和密码验证器构造一个发送邮件的session
		 Session sendMailSession = Session.getDefaultInstance(pro, authenticator);
		return sendMailSession;
	}
	/**
	 * @Description: 初始化MailSenderInfo
	 * @Author: 高翔
	 * @Param: @return
	 * @Return:MailSenderInfo
	 * @Date: 2015年12月17日
	 */
	public MailSenderInfo initMailSenderInfo() {
		//从配置文件获取初始化信息
		new ReadMailSenderInfoProperties();
		MailSenderInfo info = new MailSenderInfo();
		info.setMailServerHost(ReadMailSenderInfoProperties.MailServerHost.trim());
		info.setMailServerPort(ReadMailSenderInfoProperties.MailServerPort.trim());
		info.setUserName(ReadMailSenderInfoProperties.UserName.trim());
		info.setPassword(ReadMailSenderInfoProperties.Password.trim());
		info.setFromAddress(ReadMailSenderInfoProperties.FromAddress.trim());
		info.setValidate(true);
		return info;
	}
	
	/**
	 * @Description: 根据目的主机发送内容
	 * @Author: 高翔
	 * @Param: @param address
	 * @Param: @param subject
	 * @Param: @param content
	 * @Return:void
	 * @Date: 2015年12月17日
	 */
	public static void sendMail(String address, String subject, String content) {
		SimpleMailSender mailSender = new SimpleMailSender();
		MailSenderInfo info =mailSender.initMailSenderInfo();
		info.setToAddress(address);
		info.setSubject(subject);
		info.setContent(content);
		mailSender.sendTextMail(info);
	}
}
