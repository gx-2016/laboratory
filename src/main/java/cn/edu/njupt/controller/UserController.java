package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name="userService")
	private UserServiceI userServiceI;

	@RequestMapping("/userAdmin.do")
	public String userAdmin(ModelMap map )
	{
		List<User> userList =  userServiceI.getAllUser();
		map.put("userList", userList);
		return "system/userAdmin";
	}
	
}
