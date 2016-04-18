package cn.edu.njupt.util;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LogonUtils {

	/**  
	* @throws UnsupportedEncodingException 
	* @Name: remeberMeByCookie
	* @Description: 首页登录中添加记住我的功能
	* @Author: 刘洋（作者）
	* @Version: V1.00 （版本号）
	* @Create Date: 2011-12-30 （创建日期）
	* @Parameters: HttpServletRequest request对象
	*              HttpServletResponse response对象
	* @Return: 无
	*/
	public static void remeberMeByCookie(HttpServletRequest request,
			HttpServletResponse response) throws UnsupportedEncodingException {
		//获取页面中的登录名和密码
		String logonname = request.getParameter("logonname");
		String logonpwd = request.getParameter("logonpwd");
		//创建2个Cookie，分别用来存放登录名和密码
		//处理Cookie中存在的中文字符
		String codeName = URLEncoder.encode(logonname, "UTF-8");
		Cookie nameCookie = new Cookie("logonname",codeName);
		Cookie passwordCookie = new Cookie("logonpwd",logonpwd);
		//设置Cookie的有效路径，有效路径定义为项目的根路径
		System.out.println("path="+request.getContextPath());
		nameCookie.setPath(request.getContextPath()+"/");
		passwordCookie.setPath(request.getContextPath()+"/");
		/**
		 * 从页面中获取记住我的复选框的值，
		 *    * 如果有值，设置Cookie的有效时长
		 *    * 如果没有值，清空Cookie的有效时长
		 * <input type="checkbox" name="remeberMe" id="remeberMe" value="yes">
		 */
		String remeberMe = request.getParameter("remeberMe");
		//设置Cookie的有效时长
		if(remeberMe!=null && remeberMe.equals("yes")){
			nameCookie.setMaxAge(7*24*60*60);
			passwordCookie.setMaxAge(7*24*60*60);
		}
		//清空Cookie的有效时长
		else{
			nameCookie.setMaxAge(0);
			passwordCookie.setMaxAge(0);
		}
		//将2个Cookie的对象存放到response对象
		response.addCookie(nameCookie);
		response.addCookie(passwordCookie);
	}

}
