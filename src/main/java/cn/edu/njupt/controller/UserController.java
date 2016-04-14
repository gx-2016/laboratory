package cn.edu.njupt.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.edu.njupt.model.User;
import cn.edu.njupt.model.UserForm;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.util.FileUtil;

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
