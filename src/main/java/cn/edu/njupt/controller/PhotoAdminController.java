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

import cn.edu.njupt.model.PicResource;
import cn.edu.njupt.service.PhotoServiceI;
import cn.edu.njupt.util.FileUtil;

@Controller
@RequestMapping("/photo")
public class PhotoAdminController {
	
	@Resource(name="photoService")
	private PhotoServiceI photoServiceI;
	
	@RequestMapping("/photoAdmin.do")
	public String photoAdmin(ModelMap  modelMap){
		//1.查询所有的影集信息
		List<PicResource> photos = photoServiceI.getAllPicResource();
		modelMap.put("photos", photos);
		return "photo/photoAdmin";
	}
	 
	/**
	 * 
	 * @Description: 后台删除影集管理
	 * @Author: zhc
	 * @Date: 2016年3月31日
	 */
	@RequestMapping("photoDelete.do")
	public String  photoDelete(ModelMap map, @RequestParam("seqid") Integer seqid){
			int result= photoServiceI.photoDelete(seqid);
			if(result > 0){
		 		   map.put("message", "删除成功！");
		 		   return "forward:photoAdmin.do";
		 	   }
		 	   else
		 	   {
				   map.put("message", "删除失败！");
			       return "500";
			   }
	}
	
	/**
	 * 
	 * @Description: 后台添加影集管理
	 * @Author: zhc
	 * @Date: 2016年3月31日
	 */
	@RequestMapping(value="/savePhoto.do", method = RequestMethod.POST)
	public String savePhoto(String picname,String remark,
			                    @RequestParam("file") CommonsMultipartFile file,
			                    HttpServletRequest httpServletRequest,ModelMap map){
		if (!file.isEmpty() && file.getContentType().contains("image")) {
			  File  filetemp = FileUtil.createFile(file, httpServletRequest, "/photo/");
              boolean flag = FileUtil.copyFile(file, httpServletRequest, "/photo/");
			  //上传成功 
              if(flag)
			   {
            	   //1.获取上传文件的路径
            	   String filepath = filetemp.getAbsolutePath().substring(filetemp.getAbsolutePath().lastIndexOf("\\"));
            	   System.out.println(filepath);
            	   //2.封装javabean
            	   PicResource photo = new PicResource();
            	   photo.setPicname(picname);
            	   photo.setPicurl(filepath);
            	   photo.setProgresstime(new Date());
            	   photo.setRemark(remark);
            	   
            	   int result = photoServiceI.insert(photo);
            	  
            	   //3.如果插入成功影响集返回为1
            	   if(result > 0){
            		   map.put("message", "保存成功！");
            		   return "forward:photoAdmin.do";
            	   }
            	   else
            	   {
    				   map.put("message", "保存失败！");
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
	
}
