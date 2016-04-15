package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

//前端展示news 处理controller
@Controller
public class ProjectController {

	@RequestMapping("/project.do")
	public String projects(ModelMap  modelMap){
		  	return "project";
	}

	
	
}
