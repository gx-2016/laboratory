package cn.edu.njupt.controller;

import javax.annotation.Resource;

import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.service.WritingsServiceI;

@Controller
public class WrittingsController {
	@Resource(name="writingsService")
	private WritingsServiceI writingsService;
	
	@RequestMapping("/writtings.do")
	public String showWritings(ModelMap modelMap){	
		
		modelMap.put("writingsList", writingsService.queryWrittings());
		return "writtings2";
    }
	
}
