package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.News;
import cn.edu.njupt.model.PicResource;
import cn.edu.njupt.service.NewsServiceI;
import cn.edu.njupt.service.PhotoServiceI;

@Controller
public class IndexController {
	
	@Resource(name="photoService")
	private PhotoServiceI photoServiceI;
	
	@Resource(name="newsService")
	private NewsServiceI newsService;
	
	@RequestMapping("/home.do")

	public String home(ModelMap modelMap){	
		 	List<News> newsList= newsService.queryNewsforHomeNews(5);	
		 	modelMap.put("newsList", newsList);
		  		return "home";
    }


	@RequestMapping("/news.do")
	public String news(ModelMap  modelMap){
		 	List<News> newsList= newsService.queryAllNews();	
		 	modelMap.put("newsList", newsList);
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
