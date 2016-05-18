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
 		String newsText = request.getParameter("newsText");
 	
 		try {
 			if(newsAbstract.length()==0)
 	 			newsAbstract=newsText.substring(0,140)+"...";
		} catch (Exception e) {
			// TODO: handle exception
			newsAbstract=newsText;
		}
 		
 		User user =(User)request.getSession().getAttribute("logonuser");
 		News news = new News();
 		news.setNewsauthor(user.getUsername());
 		news.setNewstype("1");
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
		newsService.deleteNewsByID(id);
		return "forward:newsAdmin.do";
	}
	@RequestMapping("/toAddInform.do")
	public String toAddInform(){
		
		return "news/addInform";
	}
	
	@RequestMapping("/saveAddInform.do")
	public String saveAddInform(HttpServletRequest request){
		String informTitle =  request.getParameter("informName");
		String informContent = request.getParameter("informContent");
		String informText = request.getParameter("informText");
		System.out.println(informText);
		String informAbstract =null;
		try {
			informAbstract=informText.substring(0,140)+"...";
		} catch (Exception e) {
			// TODO: handle exception
			informAbstract=informText;
		}
		System.out.println(informAbstract);
		News inform = new News();
		User user = (User)request.getSession().getAttribute("logonuser");
		inform.setNewstitle(informTitle);
		inform.setNewscontent(informContent);
		inform.setNewsabstract(informAbstract);
		System.out.println(inform.getNewsabstract());
		inform.setNewstime(new Date ());
		inform.setNewsauthor(user.getUsername());
		inform.setNewstype("2");
		newsService.insertNews(inform);
		return "news/addInform";
	}
	
}
