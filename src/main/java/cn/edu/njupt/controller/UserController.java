package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;

@Controller
public class UserController {
	@Resource(name = "userService")
	private UserServiceI userServiceI;


	@RequestMapping("/people.do")
	public String people(ModelMap  modelMap,String isduty){
		//未毕业学生信息
		List<User> peoples = userServiceI.getNotdutyUser(isduty);
		//已毕业学生信息
		List<User> isdutypeoples = userServiceI.getIsdutyUser(isduty);
		modelMap.put("peoples", peoples);
		modelMap.put("isdutypeoples", isdutypeoples);
		return "people";
	}
	
	
}
