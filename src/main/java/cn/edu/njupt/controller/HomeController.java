package cn.edu.njupt.controller;

import java.io.ObjectOutputStream.PutField;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.HomeSpotLight;
import cn.edu.njupt.model.News;
import cn.edu.njupt.service.HomeSpotLightServiceI;
import cn.edu.njupt.service.NewsServiceI;

@Controller
public class HomeController {
	
	@Resource(name="homeSpotLightService")
	private HomeSpotLightServiceI homeSpotLightService;

	@Resource(name="newsService")
	private NewsServiceI newsService;
	
	@RequestMapping("/home.do")
	public String home(ModelMap modelMap){	
	 	//1.查询所有焦点
		List<HomeSpotLight> spotlights = homeSpotLightService.getAllHomeSpotLight();
		modelMap.put("spotlights", spotlights);
		
		//2.查询所有新闻
		List<News> newsList= newsService.queryNewsforHomeNews(5);	
	 	modelMap.put("newsList", newsList);
	 	
	 	//3.查询所有通知
	 	List<News> informList = newsService.queryInformforHomeInfrom(5);
	 	modelMap.put("informList", informList);
	 	
	 	return "home";
    }
	
	
}
