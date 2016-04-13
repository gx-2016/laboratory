package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.PicResource;
import cn.edu.njupt.service.PhotoServiceI;

@Controller
public class IndexController {
	
	@Resource(name="photoService")
	private PhotoServiceI photoServiceI;
	
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
		List<PicResource> photos = photoServiceI.getAllPicResource();
		modelMap.put("photos", photos);
		return "photos";
	}
	
}
