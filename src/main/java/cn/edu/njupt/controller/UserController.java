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

    /**
     * 查询本科信息
     * @Description: TODO
     * @Author: zhc
     * @Date: 2016年4月25日
     */
	@RequestMapping("/undergraduate.do")
	public String undergraduate(ModelMap  modelMap,String education){
		//查询本科信息
		List<User> undergraduates = userServiceI.getUndergraduateUser(education);
		modelMap.put("undergraduates", undergraduates);
		return "undergraduate";
	}
	
	@RequestMapping("/master.do")
	public String master(ModelMap  modelMap,String education){
		//查询硕士信息
		List<User> masters = userServiceI.getMasterUser(education);
		modelMap.put("masters", masters);
		return "master";
	}
	
	
	@RequestMapping("/doctor.do")
	public String doctor(ModelMap  modelMap,String education){
		//查询本科信息
		List<User> doctors = userServiceI.getDoctorUser(education);
		modelMap.put("doctors", doctors);
		return "doctor";
	}
	
	
}
