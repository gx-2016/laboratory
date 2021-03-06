package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.PicResource;
import cn.edu.njupt.service.PhotoServiceI;

//前台
@Controller
public class PhotoController {
	
	@Resource(name="photoService")
	private PhotoServiceI photoServiceI;
	
	@RequestMapping("/photos.do")
	public String photos(ModelMap  modelMap){
		List<PicResource> photos = photoServiceI.getAllPicResource();
		modelMap.put("photos", photos);
		return "photos";
	}
}
