package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.model.Writings;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.service.WritingsServiceI;
import cn.edu.njupt.util.ReflectClazz;

@Controller
public class UserController {
	@Resource(name = "userService")
	private UserServiceI userServiceI;
	
	@Resource(name="writingsService")
	private WritingsServiceI writingsService;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI systemDDLService;

    /**
     * 查询本科信息
     * @Description: TODO
     * @Author: zhc
     * @Date: 2016年4月25日
     */
	@RequestMapping("/undergraduate.do")
	public String undergraduate(ModelMap  modelMap){
		//查询本科信息
		List<User> undergraduates = userServiceI.getUndergraduateUser();
		modelMap.put("undergraduates", undergraduates);
		return "undergraduate";
	}
	
	@RequestMapping("/master.do")
	public String master(ModelMap  modelMap){
		//查询硕士信息
		List<User> masters = userServiceI.getMasterUser();
		modelMap.put("masters", masters);
		return "master";
	}
	
	
	@RequestMapping("/doctor.do")
	public String doctor(ModelMap  modelMap){
		//查询博士信息
		List<User> doctors = userServiceI.getDoctorUser();
		modelMap.put("doctors", doctors);
		return "doctor";
	}
	
	@RequestMapping("/teacher.do")
	public String teacher(ModelMap  modelMap){
		//1.查询老师信息
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "老师");
		List<User> teachers =  userServiceI.getTeachersByType(systemDDL.getDdlcode().toString());
		
		//2.查询个人主页上的字段信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//3查询老师的个人主页信息
		//3.1封装每个老师的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> teacherPersonpageMap = null;
		//3.2封装一个老师的数据项map,key为 ddlname value是一个数据项数据项内容
		HashMap<String,Object> map = null;
		if(null !=teachers && teachers.size()>0)
		{
			teacherPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
			for (User user : teachers) {
				PersonPageWithBLOBs teacherPersonpage =userServiceI.getPersonalPageByUserId(user.getUserid());
			    if(null != teacherPersonpage ){
				   map = new HashMap<String, Object>();
					for (SystemDDL systemDDL2 : personpageSystemDDLs) {
					     Object object = ReflectClazz.getFieldValue(teacherPersonpage, "field_"+systemDDL2.getDdlcode());
						if(null != object){
							map.put(systemDDL2.getDdlname(),object) ;
						}
					}
					teacherPersonpageMap.put(user.getUserid().toString(), map);
			   }
			}
		}

		modelMap.put("teachers", teachers);
		modelMap.put("teacherPersonpageMap", teacherPersonpageMap);
		return "teacher";
	}
	
	
	@RequestMapping("/student/{education}.do")
	public String student(ModelMap  modelMap, @PathVariable String education){
		System.out.println("education:"+education);
		if(null!= education){
			if("master".equals(education))
			{
				education ="硕士";
			}
			if("undergraduate".equals(education))
			{
				education ="本科";
			}
		}
		//1.查询学生信息
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "学生");
		
		List<User> students =  userServiceI.getStudentsByType(systemDDL.getDdlcode().toString(),education);
		
		System.out.println("students:"+students.size());
		//2.查询个人主页上的字段信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//3查询学生的个人主页信息
		//3.1封装每个学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> studentPersonpageMap = null;
		//3.2封装一个学生的数据项map,key为 ddlname value是一个数据项数据项内容
		HashMap<String,Object> map = null;
		if(null !=students && students.size()>0)
		{
			studentPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
			for (User user : students) {
				PersonPageWithBLOBs studentPersonpage =userServiceI.getPersonalPageByUserId(user.getUserid());
				if(null != studentPersonpage){
				   map = new HashMap<String, Object>();
					for (SystemDDL systemDDL2 : personpageSystemDDLs) {
					     Object object = ReflectClazz.getFieldValue(studentPersonpage,  "field_"+systemDDL2.getDdlcode());
						if(null != object){
							map.put(systemDDL2.getDdlname(),object) ;
						}
					}
					studentPersonpageMap.put(user.getUserid().toString(), map);
				 }
				
			}
		}
		System.out.println("studentPersonpageMap:"+studentPersonpageMap.size());
		
		modelMap.put("education", education);
		modelMap.put("students", students);
		modelMap.put("studentPersonpageMap", studentPersonpageMap);
		return "student";
	}
	
	@RequestMapping("/personalPage.do")
	public String personalPage(ModelMap  modelMap,@RequestParam("userid") Integer userid){
		//1.查询个人主页信息
		PersonPageWithBLOBs bloBs = new PersonPageWithBLOBs();
		
		//查询个人主页相关信息
		bloBs = userServiceI.getPersonalPageByUserId(userid);
		if(null!= bloBs)
		{
			//查询著作信息
			List<Writings> writings = new ArrayList<Writings>();
			writings =  writingsService.findWrtingsByPersonpageId(bloBs.getPersonpageid());
				
		    modelMap.put("bloBs", bloBs);
			modelMap.put("writings", writings);
		}
		return "personalPage";
	}
	
}
