package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.User;
import cn.edu.njupt.model.Writings;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.service.WritingsServiceI;

@Controller
public class UserController {
	@Resource(name = "userService")
	private UserServiceI userServiceI;
	
	@Resource(name="writingsService")
	private WritingsServiceI writingsService;

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
		//查询博士信息
		List<User> doctors = userServiceI.getDoctorUser(education);
		modelMap.put("doctors", doctors);
		return "doctor";
	}
	
	
	@RequestMapping("/personalPage.do")
	public String personalPage(ModelMap  modelMap,@RequestParam("userid") Integer userid){
		//1.查询个人主页信息
		PersonPageWithBLOBs bloBs = new PersonPageWithBLOBs();
		
		//多表联合查询个人著作信息
		List<PersonPageWithBLOBs> personalPages = userServiceI.getPersonalPage(userid);
		List<Writings> writings = new ArrayList<Writings>();
		for (PersonPageWithBLOBs personPageWithBLOBs : personalPages) {
			bloBs = personPageWithBLOBs;
			Writings writing =  writingsService.findWrtingsById(personPageWithBLOBs.getWtringsid());
			writings.add(writing);
		}
		
		modelMap.put("bloBs", bloBs);
		modelMap.put("writings", writings);
		return "personalPage";
	}
	
}
