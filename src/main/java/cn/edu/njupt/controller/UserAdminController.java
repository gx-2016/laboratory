package cn.edu.njupt.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.edu.njupt.model.PersonPageWithBLOBs;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.model.UserForm;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.util.FileUtil;
import cn.edu.njupt.util.ReflectClazz;

@Controller
@RequestMapping("/user")
public class UserAdminController {
	@Resource(name = "userService")
	private UserServiceI userServiceI;

	@Resource(name="systemDDLService")
	private SystemDDLServiceI systemDDLService;
	
	/**
	 * 
	 * @Description: 后台管理成员信息
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@RequestMapping("/userAdmin.do")
	public String userAdmin(ModelMap map) {
		List<User> userList = userServiceI.getAllUser();
		map.put("userList", userList);
		return "system/userAdmin";
	}
	
	
	/**
	 * 
	 * @Description: 后台管理成员信息
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@RequestMapping("/personalPageAdmin.do")
	public String personalPageAdmin(ModelMap map,HttpServletRequest req) {
		System.out.println("UserAdminController.personalPageAdmin()");
		//1.session中获取登陆用户
		User user = (User)(req.getSession().getAttribute("logonuser"));
		
		//2.查询个人主页上可手动添加的数据项
		List<SystemDDL> personpageSystemDDLs = systemDDLService.findDDLListByKeyWord("个人主页数据项");
		//3.查询个人主页上数据项对应的数据
		PersonPageWithBLOBs personpage =userServiceI.getPersonalPageByUserId(user.getUserid());
		HashMap<String, Object> ddlmap = null;
		if(null != personpage){
			//3.1封装个人主页的数据项map,key为 userid value是一个数据项map
			ddlmap = new HashMap<String, Object>();
			for (SystemDDL systemDDL2 : personpageSystemDDLs) {
			     Object object = ReflectClazz.getFieldValue(personpage, "field_"+systemDDL2.getDdlcode()); 
				 if(null != object){
						ddlmap.put(systemDDL2.getDdlname(),object) ;
				 }
			}
		}
	    if(null==ddlmap || ddlmap.size() == 0){
	    	map.put("isexistpage", "no");
	    }else if(null != ddlmap && ddlmap.size() > 0){
	    	map.put("isexistpage", "yes");
	    }
		map.put("personpageSystemDDLs", personpageSystemDDLs);
		map.put("ddlmap", ddlmap);
		return "system/personPageAdmin";
	}
	@RequestMapping("/savePersonPage.do")
	public String savePersonPage(ModelMap map,HttpServletRequest req,@RequestParam("area[]") String area[]) {
		//1.session中获取登陆用户
		User user = (User)(req.getSession().getAttribute("logonuser"));
		//2.保存用户个人主页
		userServiceI.savePersonPage(user,area);
		
		map.put("message", "保存成功！");
		return "system/personPageData";
	}

	@RequestMapping("/updatePersonPage.do")
	public String updatePersonPage(ModelMap map,HttpServletRequest req,@RequestParam("area[]") String area[]) {
		//1.session中获取登陆用户
		User user = (User)(req.getSession().getAttribute("logonuser"));
		//2.更新用户个人主页
		userServiceI.updatePersonPage(user,area);
		
		map.put("message", "更新成功！");
		return "system/personPageData";
	}
	
	/**
	 * 
	 * @Description: 后台管理成员信息
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@RequestMapping("/userAdminByUserId.do")
	public String userAdminByUserId(String  logonname,ModelMap map) {
		List<User> userList = new ArrayList<User>();
		userList.add(userServiceI.findUserExist(logonname));
		map.put("userList", userList);
		return "system/userAdmin";
	}
	
	/**
	 * 后台查询登录名是否存在
	 * @Description: TODO
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@ResponseBody
	@RequestMapping("/findUserExist.do")
	public ModelMap findUserExist(ModelMap map,String logonname) {
		
		User user = userServiceI.findUserExist(logonname);
			
			if (null!=user) {
				map.put("result", "ok");
				
			} else {
				map.put("result", "error");
			}
			return map;
	}
    
	/**
	 * 
	 * @throws ParseException 
	 * @Description: 后台增加成员信息
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@RequestMapping("/addUser.do")
	public String addUser(HttpServletRequest httpServletRequest,
			ModelMap map, @ModelAttribute UserForm user,
			@RequestParam("file") CommonsMultipartFile file) throws ParseException {
		// 2.封装javabean
		User user1 = new User();
		user1.setUsername(user.getUsername());
		if (null != user.getOndutydate() && !"".equals(user.getOndutydate())) {
			user1.setOndutydate(new SimpleDateFormat("yyyy-MM-dd").parse(user
					.getOndutydate()));
		}
		user1.setLogonname(user.getLogonname());
		user1.setLogonpwd(user.getLogonpwd());
		user1.setSexid(user.getSexid());
		user1.setIsduty(user.getIsduty());
		user1.setEmail(user.getEmail());
		user1.setEducation(user.getEducation());
		user1.setPersonpage(user.getPersonpage());
		user1.setCompanyname(user.getCompanyname());
		
		if (!file.isEmpty() && file.getContentType().contains("image")) {
			File filetemp = FileUtil.createFile(file, httpServletRequest,
					"/system/");
			boolean flag = FileUtil.copyFile(file, httpServletRequest,
					"/system/");
			System.out.println(flag);
			
			// 上传成功
			if (flag) {
				// 1.获取上传文件的路径
				String filepath = filetemp.getAbsolutePath().substring(filetemp.getAbsolutePath().lastIndexOf("\\"));
				System.out.println(filepath);
				user1.setPhotourl(filepath);
			} else {
				map.put("message", "上传头像失败！");
				return "500";
			}
		}

		int result = userServiceI.addUser(user1);

		//如果插入成功影响集返回为1
		if (result > 0) {

			map.put("message", "增加成功");
			return "forward:userAdmin.do";
		} else {
			map.put("message", "增加失败！");
			return "500";
		}

	}
    
	/**
	 * 
	 * @Description: 后台修改成员信息
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@RequestMapping("/updateUser.do")
	public String updateUser(HttpServletRequest httpServletRequest,
			ModelMap map, @ModelAttribute UserForm user,
			@RequestParam("file") CommonsMultipartFile file) {
		System.out.println("UserController.updateUser()" + user.getUsername());
		// 2.封装javabean
		User user1 = new User();
		user1.setUserid(Integer.parseInt(user.getUserid()));
		user1.setAddress(user.getAddress());
		try {
			if (null != user.getBirthday() && !"".equals(user.getBirthday())) {
				user1.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(user
						.getBirthday()));
			}
			if (null != user.getOffdutydate()
					&& !"".equals(user.getOffdutydate())) {
				user1.setOffdutydate(new SimpleDateFormat("yyyy-MM-dd")
						.parse(user.getOffdutydate()));
			}
			if (null != user.getOndutydate()
					&& !"".equals(user.getOndutydate())) {
				user1.setOndutydate(new SimpleDateFormat("yyyy-MM-dd")
						.parse(user.getOndutydate()));
			}

		} catch (ParseException e) {
			e.printStackTrace();
			map.put("message", "日期转换失败！");
			return "500";
		}
		user1.setCompanyname(user.getCompanyname());
		user1.setEducation(user.getEducation());
		user1.setEmail(user.getEmail());
		user1.setIsduty(user.getIsduty());
		user1.setLogonname(user.getLogonname());
		user1.setLogonpwd(user.getLogonpwd());
		user1.setMobile(user.getMobile());
		user1.setPersonpage(user.getPersonpage());
		user1.setRemark(user.getRemark());
		user1.setSexid(user.getSexid());
		user1.setUsername(user.getUsername());
		user1.setWorkdetail(user.getWorkdetail());

		if (!file.isEmpty() && file.getContentType().contains("image")) {
			File filetemp = FileUtil.createFile(file, httpServletRequest,
					"/system/");
			boolean flag = FileUtil.copyFile(file, httpServletRequest,
					"/system/");
			System.out.println(flag);
			// 上传成功
			if (flag) {

				// 1.获取上传文件的路径
				String filepath = filetemp.getAbsolutePath().substring(filetemp.getAbsolutePath().lastIndexOf("\\"));
				System.out.println(filepath);
				user1.setPhotourl(filepath);
			} else {
				map.put("message", "修改失败！");
				return "500";
			}
		}

		int result = userServiceI.updateUser(user1);

		// 3.如果插入成功影响集返回为1
		if (result > 0) {

			map.put("message", "修改成功");
			return "forward:userAdmin.do";
		} else {
			map.put("message", "修改失败！");
			return "500";
		}

	}
	
	/**
	 * 
	 * @Description: 后台删除成员信息
	 * @Author: zhc
	 * @Date: 2016年4月13日
	 */
	@RequestMapping("deleteUser.do")
	public String  deleteUser(ModelMap map, @RequestParam("userid") Integer userid){
			int result= userServiceI.deleteUser(userid);
			if(result > 0){
		 		   map.put("message", "删除成功！");
		 		   return "forward:userAdmin.do";
		 	   }
		 	   else
		 	   {
				   map.put("message", "删除失败！");
			       return "500";
			   }
	}
}
