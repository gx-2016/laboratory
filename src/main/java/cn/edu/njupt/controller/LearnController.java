package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.TeachServiceI;
import cn.edu.njupt.service.UserServiceI;

@Controller
public class LearnController {
	@Resource(name ="teachService")
	private TeachServiceI teachService;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI systemDDLService;
	
	
	@Resource(name="userService")
	private UserServiceI userService;
	
	@RequestMapping("/learn.do")
	public String learn(HttpServletRequest request,ModelMap modelMap){	
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "老师");
		List<User> teacherList = new ArrayList<User>();
		teacherList= userService.getTeachersByType(systemDDL.getDdlcode().toString());
		modelMap.put("teacherList", teacherList);
		Integer teacherID=0;
		if(null==request.getParameter("teacherID")){
			if(teacherList.size()>0)
				teacherID=((User)teacherList.get(0)).getUserid();
		}else {
			teacherID=Integer.parseInt(request.getParameter("teacherID"));
		}
		modelMap.put("teachList", teachService.queryTeachsByUserID(teacherID));
		return "learn_resource";
    }
	
}
