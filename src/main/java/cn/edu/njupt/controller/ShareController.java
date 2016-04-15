package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShareController {
	
	@RequestMapping("/share.do")
	public String home(ModelMap modelMap){	
		 return "share_resource";
    }
	
}
