package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.News;
import cn.edu.njupt.service.NewsServiceI;

//前端展示news 处理controller
@Controller
public class NewsController {
	@Resource(name="newsService")
	private NewsServiceI newsService;
	

	@RequestMapping("/news.do")
	public String news(ModelMap  modelMap){
		 	List<News> newsList= newsService.queryAllNews();	
		 	modelMap.put("newsList", newsList);
		  	return "news";
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
	
	
}
