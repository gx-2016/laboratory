package cn.edu.njupt.controller;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.service.NewsServiceI;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Resource(name="newsService")
	private NewsServiceI newsService;
	
	@RequestMapping("/newsAdmin.do")
	public String toNews(){
		System.out.println("newsAdmin.do");
		return "news/newsAdmin";
	}
	
	
}
