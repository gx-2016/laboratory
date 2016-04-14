package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.News;
import cn.edu.njupt.service.NewsServiceI;

@Controller
public class HomeController {
	
	@Resource(name="newsService")
	private NewsServiceI newsService;
	
	@RequestMapping("/home.do")
	public String home(ModelMap modelMap){	
		 	List<News> newsList= newsService.queryNewsforHomeNews(5);	
		 	modelMap.put("newsList", newsList);
		  		return "home";
    }
	
}
