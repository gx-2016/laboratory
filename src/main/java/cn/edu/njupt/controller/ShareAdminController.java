package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

//后台管理learn 处理controller
@Controller
@RequestMapping("/share")
public class ShareAdminController {
	
	@RequestMapping("/shareAdmin.do")
	public String shareAdmin(ModelMap modelMap){
		return "share/shareAdmin";
	}
	
}
