package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

//后台管理learn 处理controller
@Controller
@RequestMapping("/learn")
public class LearnAdminController {

	@RequestMapping("/learnAdmin.do")
	public String learnAdmin(ModelMap modelMap){
		return "learn/learnAdmin";
	}
}
