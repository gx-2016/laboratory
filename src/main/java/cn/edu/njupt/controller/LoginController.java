package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.User;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.service.RoleServiceI;

@Controller
public class LoginController {
	
	@Resource(name="roleService")
	private RoleServiceI roleServiceI;
	
	@RequestMapping("/loginIndex.do")
	public String loginIndex(){
		return "login";
	}
	
	@RequestMapping("/login.do")
	public String login(String logonname,String logonpwd,HttpServletRequest request){
		//验证登陆
		User user = (User) request.getSession().getAttribute("logonuser");
		//获取权限
		//2.1根据用户id，获取该用户的角色和权限
		List<UserRole> userRoles = roleServiceI.findUserRoleByUserId(user.getUserid());
		String Popedom ="";
		for (UserRole userRole : userRoles) {
			String Popedomtemp = roleServiceI.findRolePopedomByRoleId(userRole.getRoleid()).getPopedomcode();
		    Popedom+=Popedomtemp;
		}
		System.out.println("用户："+user.getLogonname()+"的权限:"+Popedom);
		request.getSession().setAttribute("Popedom", Popedom);
	
		return "home";
	}
	
	
}
