package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContestController {
	
	@RequestMapping("/contest.do")
	public String learn(ModelMap modelMap){	
		 return "contest";
    }
	
}
