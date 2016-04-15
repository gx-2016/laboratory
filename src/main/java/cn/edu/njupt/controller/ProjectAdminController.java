package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

//后台管理news 处理controller
@Controller
@RequestMapping("/project")
public class ProjectAdminController {
	
	@RequestMapping("/projectAdmin.do")
	public String projectAdmin(ModelMap modelMap){
		return "project/projectAdmin";
	}
	
	
}
