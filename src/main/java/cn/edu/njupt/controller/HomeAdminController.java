package cn.edu.njupt.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.edu.njupt.model.HomeLinks;
import cn.edu.njupt.model.HomeSpotLight;
import cn.edu.njupt.service.HomeLinksServiceI;
import cn.edu.njupt.service.HomeSpotLightServiceI;
import cn.edu.njupt.util.FileUtil;

@Controller
@RequestMapping("/home")
public class HomeAdminController {
	
	@Resource(name="homeSpotLightService")
	private HomeSpotLightServiceI homeSpotLightService;
	
	@Resource(name="homeLinksService")
	private HomeLinksServiceI homeLinksService;
	
	@RequestMapping("/spotlightAdmin.do")
	public String spotlightAdmin(ModelMap  modelMap){
		//1.查询所有的焦点记录
		List<HomeSpotLight> spotlights = homeSpotLightService.getAllHomeSpotLight();
		modelMap.put("spotlights", spotlights);
		return "home/spotlightAdmin";
	}

	@RequestMapping("/linksAdmin.do")
	public String linksAdmin(ModelMap  modelMap){
		//1.查询所有的链接记录
		List<HomeLinks> links = homeLinksService.getAllHomeLinks();
		modelMap.put("links", links);
		return "home/linksAdmin";
	}
	
	@RequestMapping(value="/saveSpotlight.do", method = RequestMethod.POST)
	public String saveSpotlight(String spotlightname,String remark,
			                    @RequestParam("file") CommonsMultipartFile file,
			                    HttpServletRequest httpServletRequest,ModelMap map){
		if (!file.isEmpty() && file.getContentType().contains("image")) {
			  File  filetemp = FileUtil.createFile(file, httpServletRequest, "/spotlight/");
              boolean flag = FileUtil.copyFile(file, httpServletRequest, "/spotlight/");
			  //上传成功 
              if(flag)
			   {
            	   //1.获取上传文件的路径
            	   String filepath = filetemp.getAbsolutePath();
            	  
            	   //2.封装javabean
            	   HomeSpotLight  spotlight = new HomeSpotLight();
            	   spotlight.setSpotlightpicurl(filepath);
            	   spotlight.setProgresstime(new Date());
            	   spotlight.setRemark(remark);
            	   
            	   int result = homeSpotLightService.insert(spotlight);
            	  
            	   //3.如果插入成功影响集返回为1
            	   if(result > 0){
            		   map.put("message", "保存焦点对象成功！");
            		   return "forward:spotlightAdmin.do";
            	   }
            	   else
            	   {
    				   map.put("message", "保存焦点对象失败！");
    			       return "500";
    			   }
			   }
			   else
			   {
				   map.put("message", "上传文件失败！");
			       return "500";
			   }
			}else{
				 map.put("message", "请选择正确的文件！");
				 return "500";
			}
	}

	@RequestMapping(value="/saveLinks.do", method = RequestMethod.POST)
	public String saveSpotlight(String linkname,String remark,String linkurl, ModelMap map){
		
		//1.封装javabean
		HomeLinks homeLinks = new HomeLinks();
		homeLinks.setLinkname(linkname);
		homeLinks.setLinkurl(linkurl);
		homeLinks.setRemark(remark);
		//2.调用service层
		int result = homeLinksService.insert(homeLinks);
		
		 //3.如果插入成功影响集返回为1
	 	   if(result > 0){
	 		   map.put("message", "保存焦点对象成功！");
	 		   return "forward:linksAdmin.do";
	 	   }
	 	   else
	 	   {
				   map.put("message", "保存焦点对象失败！");
			       return "500";
		   }
		
	}
	
}
