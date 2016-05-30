package cn.edu.njupt.mail;

import java.io.InputStream;
import java.util.Properties;

public class ReadMailSenderInfoProperties {

	public static String MailServerHost = null;
	public static String MailServerPort = null;
	public static String UserName = null;
	public static String Password = null; 
	public static String FromAddress = null;
	
	/**
	 * @Description: TODO
	 * @Author: 高翔
	 * @Param: 
	 * @Return:void
	 * @Date: 2015年8月13日
	 */
	public  ReadMailSenderInfoProperties()
	{
		Properties properties = new Properties();
		InputStream is = null;
		try {
			 is = this.getClass().getResourceAsStream("/Mail.properties");
			 properties.load(is);
			 
			 MailServerHost = (String)  properties.get("MailServerHost");
			 MailServerPort= (String)  properties.get("MailServerPort");
			 UserName= (String)  properties.get("UserName");
			 Password= (String)  properties.get("Password");
			 FromAddress= (String)  properties.get("FromAddress");

		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	public static void main(String[] args) {
		new ReadMailSenderInfoProperties();
	}
}
