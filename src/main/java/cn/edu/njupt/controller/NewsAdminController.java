package cn.edu.njupt.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.News;
import cn.edu.njupt.model.User;
import cn.edu.njupt.service.NewsServiceI;

//后台管理news 处理controller
@Controller
@RequestMapping("/news")
public class NewsAdminController {
	@Resource(name="newsService")
	private NewsServiceI newsService;
	
	@RequestMapping("/newsAdmin.do")
	public String toNews(ModelMap modelMap){
		//System.out.println("newsAdmin.do");
		modelMap.put("newsList",newsService.queryAllNews());
		return "news/newsAdmin";
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
 		User user =(User)request.getSession().getAttribute("logonuser");
 		News news = new News();
 		news.setNewsauthor(user.getUsername());
 		news.setNewstitle(newsName);
 		news.setNewsabstract(newsAbstract);
 		news.setNewscontent(newsContent);
 		news.setNewstime(new Date());
 		newsService.insertNews(news);	
 		return "forward:newsAdmin.do";
 	}  
	 	
 	@RequestMapping("/deleteNews.do")
	public String deleteNews(HttpServletRequest request ){
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		newsService.deleteNewsByID(id);
		return "forward:newsAdmin.do";
	}
	
	
}
