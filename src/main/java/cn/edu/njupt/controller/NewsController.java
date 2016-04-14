package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.News;
import cn.edu.njupt.service.NewsServiceI;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Resource(name="newsService")
	private NewsServiceI newsService;
	
	@RequestMapping("/newsAdmin.do")
	public String toNews(ModelMap modelMap){
		//System.out.println("newsAdmin.do");
		modelMap.put("newsList",newsService.queryAllNews());
		return "news/newsAdmin";
	}
	@RequestMapping("/newsDetails.do")
	public String showNewsDetails(ModelMap modelMap,HttpServletRequest request){
		int newsId =Integer.parseInt(request.getParameter("id"));
		System.out.println(newsId);
		List<News> newsList = new ArrayList<News>();
		News news=newsService.queryNewsById(newsId);
		System.out.println(news.getNewstitle());
		newsList.add(news); 
		
		modelMap.put("newsList", newsList);
		return "news/newsDetails";
	}
	
	@RequestMapping("/toAddNews.do")
	public String toAddNews(){
		return "news/addNews";
	}
	
	@RequestMapping("/saveAddNews.do")
	public String saveNews(HttpServletRequest request){
		String newsName = request.getParameter("newsName");
		String newsAbstract = request.getParameter("newsAbstract");
		String newsContent = request.getParameter("newsContent");
		News news = new News();
		news.setNewstitle(newsName);
		news.setNewsabstract(newsAbstract);
		news.setNewscontent(newsContent);
		news.setNewstime(new Date());
		newsService.insertNews(news);	
		return "forward:newsAdmin.do";
	}  
	
	
}
