package cn.edu.njupt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping("/home.do")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/news.do")
	public String news(ModelMap  modelMap){
		return "news";
	}
	
	@RequestMapping("/learn.do")
	public String learn(){
		return "learn_resource";
	}
	
	@RequestMapping("/share.do")
	public String share(){
		return "share_resource";
	}
	
	
	@RequestMapping("/research.do")
	public String index(ModelMap  modelMap){
		return "research";
	}
	
	@RequestMapping("/projects.do")
	public String projects(ModelMap  modelMap){
		return "projects";
	}
	
	@RequestMapping("/people.do")
	public String peopele(){
		return "people";
	}
	
	@RequestMapping("/photos.do")
	public String photos(ModelMap  modelMap){
		return "photos";
	}
	
}
