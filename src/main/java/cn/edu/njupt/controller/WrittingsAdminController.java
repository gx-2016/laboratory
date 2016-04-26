package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

//后台管理learn 处理controller
@Controller
@RequestMapping("/writtings")
public class WrittingsAdminController {

	@RequestMapping("/writtingsAdmin.do")
	public String writtingsAdmin(ModelMap modelMap){
		return "writtings/writtingsAdmin";
	}
}
