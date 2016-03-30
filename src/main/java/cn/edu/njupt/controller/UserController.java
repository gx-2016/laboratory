package cn.edu.njupt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;

@Controller
@RequestMapping("/userController")
public class UserController {
	@Resource(name="userService")
	private UserServiceI userServiceI;

	@RequestMapping("/userAdmin/{userid}")
	public String showUser(@PathVariable int userid,ModelMap map )
	{
		User user =  userServiceI.getUserById(userid);
		map.put("user", user);
		return "userinfo/userAdmin";
	}
	
}
