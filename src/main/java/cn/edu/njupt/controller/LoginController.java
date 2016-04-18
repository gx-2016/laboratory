package cn.edu.njupt.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.service.RoleServiceI;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.util.LogonUtils;

@Controller
public class LoginController {
	
	@Resource(name="roleService")
	private RoleServiceI roleServiceI;

	@Resource(name = "userService")
	private UserServiceI userServiceI;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI  systemDDLService;
	
	
	@SuppressWarnings("deprecation")
	@RequestMapping("/loginIndex.do")
	public String loginIndex(HttpServletRequest request,
						HttpServletResponse response,ModelMap map){
		//1.读取本地cookie值
	    Cookie cookie[] = request.getCookies();
		if(cookie!=null && cookie.length>0){
	    	 for (Cookie cookie2 : cookie) {
		 	    	if(null!=cookie2 && "logonname".equals(cookie2.getName()))
		 	    	{
		 	    		map.put("logonname", URLDecoder.decode(cookie2.getValue()));
		 	    		map.put("checked", "checked");
	 	 	    		
		 	    	}
		 	    	if(null!=cookie2 && "logonpwd".equals(cookie2.getName()))
		 	    	{
		 	    		map.put("logonpwd", cookie2.getValue());
		 	    	}
	 	 		}
		  }
	  	return "login";
	}
	
	@RequestMapping("/login.do")
	public String login(String logonname,String logonpwd,HttpServletResponse response,HttpServletRequest request,ModelMap map){
		//验证登陆
		User user = userServiceI.findUserExist(logonname);
		if(null!= user)
		{
			if(logonpwd.equals(user.getLogonpwd())){
				//1.session放入用户
				request.getSession().setAttribute("logonuser",user);
				
				//获取权限
				//2.1根据用户id，获取该用户的角色和权限
				List<UserRole> userRoles = roleServiceI.findUserRoleByUserId(user.getUserid()+"");
				HashMap<String,String> userRoleMap = new HashMap<String, String>();
				if(null!=userRoles && userRoles.size()>0){
					String Popedom ="";
					for (UserRole userRole : userRoles) {
						String Popedomtemp = roleServiceI.findRolePopedomByRoleId(userRole.getRoleid()).getPopedomcode();
					    Popedom+=Popedomtemp;
					   //2.2根据角色id获取数据字典中角色名称
					    SystemDDL systemDDL = systemDDLService.findDDLListByDdlCode("角色", Integer.parseInt(userRole.getRoleid()));
					    userRoleMap.put(systemDDL.getDdlcode()+"", systemDDL.getDdlname());
					}
					request.getSession().setAttribute("userRoleMap", userRoleMap);
					
					System.out.println("用户："+user.getLogonname()+"的权限:"+Popedom);
					
					if(!"".equals(Popedom)){
						request.getSession().setAttribute("Popedom", Popedom);
					}
					else{
						map.put("message", "该用户还没有分配权限！");
						return "login";
					}
				}
				else{
					map.put("message", "该用户还没有分配角色！");
					return "login";
				}
			}
			else{
				map.put("message", "密码不匹配！");
				return "login";
			}
			
		}
		else{
			map.put("message", "不存在该用户！");
			return "login";
		}
		//记住我的功能
		try {
				LogonUtils.remeberMeByCookie(request, response);
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
			}
		
		return "redirect:home/spotlightAdmin.do";
	}
	
	
 	@RequestMapping("/exit.do")
	public String exit(HttpSession  httpSession){
 		httpSession.invalidate();
		return "redirect:loginIndex.do";
 	}
	
	@RequestMapping("/register.do")
	public String register(){

		return "register";
	}
	
	
}
