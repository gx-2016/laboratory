package cn.edu.njupt.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.module.SimpleAbstractTypeResolver;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.service.WritingsServiceI;

@Controller
public class WrittingsController {
	@Resource(name="writingsService")
	private WritingsServiceI writingsService;
	
	@RequestMapping("/writtings.do")
	public String showWritings(HttpServletRequest request,ModelMap modelMap){	
		
		
		int year =Integer.parseInt(new SimpleDateFormat("yyyy").format((new Date())));
		int reqYear=0;
		if(request.getParameter("year")!=null)
			reqYear =Integer.parseInt(request.getParameter("year")); 
		else {
			reqYear=year;
		}
		System.out.println(reqYear);
		modelMap.put("writingsList", writingsService.queryWrittingsbyYear(reqYear));
		Vector yearlist=new Vector<Integer>();
		for(int i = year;i>=2010;i--)
			yearlist.add(i);
		modelMap.put("yearlist", yearlist);
		return "writings3";
    }
	
}
