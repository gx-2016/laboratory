package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.service.WritingsServiceI;

@Controller
public class UserController {
	@Resource(name = "userService")
	private UserServiceI userServiceI;
	
	@Resource(name="writingsService")
	private WritingsServiceI writingsService;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI systemDDLService;

//    /**
//     * 查询本科信息
//     * @Description: TODO
//     * @Author: zhc
//     * @Date: 2016年4月25日
//     */
//	@RequestMapping("/undergraduate.do")
//	public String undergraduate(ModelMap  modelMap){
//		//查询本科信息
//		List<User> undergraduates = userServiceI.getUndergraduateUser();
//		modelMap.put("undergraduates", undergraduates);
//		return "undergraduate";
//	}
//	
//	@RequestMapping("/master.do")
//	public String master(ModelMap  modelMap){
//		//查询硕士信息
//		List<User> masters = userServiceI.getMasterUser();
//		modelMap.put("masters", masters);
//		return "master";
//	}
//	
//	
//	@RequestMapping("/doctor.do")
//	public String doctor(ModelMap  modelMap){
//		//查询博士信息
//		List<User> doctors = userServiceI.getDoctorUser();
//		modelMap.put("doctors", doctors);
//		return "doctor";
//	}
	
//	@RequestMapping("/personalPage.do")
//	public String personalPage(ModelMap  modelMap,@RequestParam("userid") Integer userid){
//		//1.查询个人主页信息
//		PersonPageWithBLOBs bloBs = new PersonPageWithBLOBs();
//		
//		//查询个人主页相关信息
//		bloBs = userServiceI.getPersonalPageByUserId(userid);
//		if(null!= bloBs)
//		{
//			//查询著作信息
//			List<Writings> writings = new ArrayList<Writings>();
//			writings =  writingsService.findWrtingsByPersonpageId(bloBs.getPersonpageid());
//				
//		    modelMap.put("bloBs", bloBs);
//			modelMap.put("writings", writings);
//		}
//		return "personalPage";
//	}
	
	/**
	 * @Description: 查询往届毕业生信息
	 * @Parameter: @param modelMap
	 * @Parameter: @return
	 * @Return:String
	 * @Author: 高翔
	 * @Date: 2016年5月19日
	 */
	@RequestMapping("/dutyUser.do")
	public String dutyUser(ModelMap  modelMap){
		//1.查询往届学生信息
		List<User>  users = userServiceI.getIsdutyUser();
		modelMap.put("isdutypeoples", users);
		return "people";
	}
	
	/**
	 * @Description: 查询所有教师个人主页
	 * @Parameter: @param modelMap
	 * @Parameter: @return
	 * @Return:String
	 * @Author: 高翔
	 * @Date: 2016年5月19日
	 */
	@RequestMapping("/teacher.do")
	public String teacher(ModelMap  modelMap){
		//1.查询老师信息
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "老师");
		List<User> teachers =  userServiceI.getUsersByType(systemDDL.getDdlcode().toString());
		
		//2.查询个人主页上的字段信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//3查询老师的个人主页信息
		//3.1封装每个老师的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> teacherPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=teachers && teachers.size()>0)
		{
			teacherPersonpageMap = userServiceI.getUsersPersonpageMap(teachers, personpageSystemDDLs);
		}

		modelMap.put("teachers", teachers);
		modelMap.put("teacherPersonpageMap", teacherPersonpageMap);
		modelMap.put("type", "教师");
		return "team";
	}
	
	/**
	 * @Description: 查询学生个人主页，  按照本科，研究生类型
	 * @Parameter: @param modelMap
	 * @Parameter: @return
	 * @Return:String
	 * @Author: 高翔
	 * @Date: 2016年5月19日
	 */
	@RequestMapping("/student.do")
	public String student(ModelMap  modelMap,  String education){
		if(null!= education){
			if("master".equals(education.trim()))
			{
				education ="硕士";
			}
			if("undergraduate".equals(education.trim()))
			{
				education ="本科";
			}
		}
		//1.查询学生信息
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "学生");
		List<User> students =  userServiceI.getStudentsByType(systemDDL.getDdlcode().toString(),education);
		//2.查询个人主页上的字段信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//3查询学生的个人主页信息
		//3.2封装每个学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> studentPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=students && students.size()>0)
		{
			studentPersonpageMap = userServiceI.getUsersPersonpageMap(students, personpageSystemDDLs);
		}
		
		if("硕士".equals(education))
		{
			modelMap.put("masters", students);
			modelMap.put("masterPersonpageMap", studentPersonpageMap);
		}
		if("本科".equals(education))
		{
			modelMap.put("undergratuates", students);
			modelMap.put("undergraduatePersonpageMap", studentPersonpageMap);
		}
		
		modelMap.put("type", education);
		return "team";
	}
	/**
	 * @Description: 查询个人主页信息
	 * @Parameter: @param modelMap
	 * @Parameter: @return
	 * @Return:String
	 * @Author: 高翔
	 * @Date: 2016年5月19日
	 */
	@RequestMapping("/personalPage.do")
	public String personalPage(ModelMap  modelMap,@RequestParam("userid") Integer userid){
		//1.封装用户信息
		List<User> users = new ArrayList<User>();
		User user = userServiceI.getUserById(userid);
		users.add(user);
		//2.查询个人主页相关信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//3查询学生的个人主页信息
		//3.2封装每个学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> personpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=users && users.size()>0)
		{
			personpageMap = userServiceI.getUsersPersonpageMap(users, personpageSystemDDLs);
		}
		
		modelMap.put("users", users);
		modelMap.put("personpageMap", personpageMap);
		return "personalPage1";
	}
	/**
	 * @Description: 查询团队所有成员，  按照本科，研究生，教师
	 * @Parameter: @param modelMap
	 * @Parameter: @return
	 * @Return:String
	 * @Author: 高翔
	 * @Date: 2016年5月19日
	 */
	@RequestMapping("/team.do")
	public String team(ModelMap  modelMap){
		
		//1.查询个人主页上的字段信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//2查询老师的个人主页信息
		//2.1查询老师信息
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "老师");
		List<User> teachers =  userServiceI.getUsersByType(systemDDL.getDdlcode().toString());
		//2.2封装每个老师的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> teacherPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=teachers && teachers.size()>0)
		{
			teacherPersonpageMap = userServiceI.getUsersPersonpageMap(teachers, personpageSystemDDLs);
		}

		//3查询老师的个人主页信息
		//3.1查询硕士学生信息
		systemDDL = systemDDLService.findDDLByDdlName("用户类型", "学生");
		List<User> masters =  userServiceI.getStudentsByType(systemDDL.getDdlcode().toString(),"硕士");
		//3.2封装每个硕士学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> masterPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=masters && masters.size()>0)
		{
			masterPersonpageMap = userServiceI.getUsersPersonpageMap(masters, personpageSystemDDLs);
		}
		
		List<User> undergratuates =  userServiceI.getStudentsByType(systemDDL.getDdlcode().toString(),"本科");
		//3.3封装每个本科学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> undergratuatePersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=masters && masters.size()>0)
		{
			undergratuatePersonpageMap = userServiceI.getUsersPersonpageMap(undergratuates, personpageSystemDDLs);
		}
		
		//1.查询往届学生信息
		List<User>  users = userServiceI.getIsdutyUser();
		modelMap.put("isdutypeoples", users);
		
		modelMap.put("teachers", teachers);
		modelMap.put("teacherPersonpageMap", teacherPersonpageMap);
		modelMap.put("masters", masters);
		modelMap.put("studentPersonpageMap", masterPersonpageMap);
		modelMap.put("undergratuates", undergratuates);
		modelMap.put("undergratuatePersonpageMap", undergratuatePersonpageMap);
		return "team1";
	}
	
	/**
	 * @Description: 查询团队所有成员，  按照本科，研究生，教师
	 * @Parameter: @param modelMap
	 * @Parameter: @return
	 * @Return:String
	 * @Author: 高翔
	 * @Date: 2016年5月19日
	 */
	@RequestMapping("/teamAll.do")
	public String teamAll(ModelMap  modelMap){
		
		//1.查询个人主页上的字段信息
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//2查询老师的个人主页信息
		//2.1查询老师信息
		SystemDDL systemDDL = systemDDLService.findDDLByDdlName("用户类型", "老师");
		List<User> teachers =  userServiceI.getUsersByType(systemDDL.getDdlcode().toString());
		//2.2封装每个老师的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> teacherPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=teachers && teachers.size()>0)
		{
			teacherPersonpageMap = userServiceI.getUsersPersonpageMap(teachers, personpageSystemDDLs);
		}

		//3查询老师的个人主页信息
		//3.1查询硕士学生信息
		systemDDL = systemDDLService.findDDLByDdlName("用户类型", "学生");
		List<User> masters =  userServiceI.getStudentsByType(systemDDL.getDdlcode().toString(),"硕士");
		//3.2封装每个硕士学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> masterPersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=masters && masters.size()>0)
		{
			masterPersonpageMap = userServiceI.getUsersPersonpageMap(masters, personpageSystemDDLs);
		}
		
		List<User> undergratuates =  userServiceI.getStudentsByType(systemDDL.getDdlcode().toString(),"本科");
		//3.3封装每个本科学生的数据项map,key为 userid value是一个数据项map
		HashMap<String, HashMap<String,Object>> undergratuatePersonpageMap = new HashMap<String,  HashMap<String,Object>>();
		if(null !=masters && masters.size()>0)
		{
			undergratuatePersonpageMap = userServiceI.getUsersPersonpageMap(undergratuates, personpageSystemDDLs);
		}
		
		//1.查询往届学生信息
		List<User>  users = userServiceI.getIsdutyUser();
		modelMap.put("isdutypeoples", users);
		
		modelMap.put("teachers", teachers);
		modelMap.put("teacherPersonpageMap", teacherPersonpageMap);
		modelMap.put("masters", masters);
		modelMap.put("studentPersonpageMap", masterPersonpageMap);
		modelMap.put("undergratuates", undergratuates);
		modelMap.put("undergratuatePersonpageMap", undergratuatePersonpageMap);
		return "teamAll";
	}
	
}
