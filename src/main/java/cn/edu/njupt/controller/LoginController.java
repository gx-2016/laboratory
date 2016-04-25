package cn.edu.njupt.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.User;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.service.RoleServiceI;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.util.FileUtil;
import cn.edu.njupt.util.LogonUtils;
import cn.edu.njupt.util.StringHelper;

@Controller
public class LoginController {
	
	@Resource(name="roleService")
	private RoleServiceI roleServiceI;

	@Resource(name = "userService")
	private UserServiceI userServiceI;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI  systemDDLService;
	
	
	@SuppressWarnings("deprecation")
	@RequestMapping("/loginIndex.do")
	public String loginIndex(HttpServletRequest request,
						HttpServletResponse response,ModelMap map){
		//1.读取本地cookie值
	    Cookie cookie[] = request.getCookies();
		if(cookie!=null && cookie.length>0){
	    	 for (Cookie cookie2 : cookie) {
		 	    	if(null!=cookie2 && "logonname".equals(cookie2.getName()))
		 	    	{
		 	    		map.put("logonname", URLDecoder.decode(cookie2.getValue()));
		 	    		map.put("checked", "checked");
	 	 	    		
		 	    	}
		 	    	if(null!=cookie2 && "logonpwd".equals(cookie2.getName()))
		 	    	{
		 	    		map.put("logonpwd", cookie2.getValue());
		 	    	}
	 	 		}
		  }
	  	return "login";
	}
	
	@RequestMapping("/login.do")
	public String login(String logonname,String logonpwd,HttpServletResponse response,HttpServletRequest request,ModelMap map){
		//验证登陆
		User user = userServiceI.findUserExist(logonname);
		if(null!= user)
		{
			if(logonpwd.equals(user.getLogonpwd())){
				//1.session放入用户
				request.getSession().setAttribute("logonuser",user);
				
				//获取权限
				//2.1根据用户id，获取该用户的角色和权限
				List<UserRole> userRoles = roleServiceI.findUserRoleByUserId(user.getUserid()+"");
				HashMap<String,String> userRoleMap = new HashMap<String, String>();
				if(null!=userRoles && userRoles.size()>0){
					String Popedom ="";
					for (UserRole userRole : userRoles) {
						String Popedomtemp = roleServiceI.findRolePopedomByRoleId(userRole.getRoleid()).getPopedomcode();
					    Popedom+=Popedomtemp;
					   //2.2根据角色id获取数据字典中角色名称
					    SystemDDL systemDDL = systemDDLService.findDDLByDdlCode("角色", Integer.parseInt(userRole.getRoleid()));
					    userRoleMap.put(systemDDL.getDdlcode()+"", systemDDL.getDdlname());
					}
					request.getSession().setAttribute("userRoleMap", userRoleMap);
					
					System.out.println("用户："+user.getLogonname()+"的权限:"+Popedom);
					
					if(!"".equals(Popedom)){
						request.getSession().setAttribute("Popedom", Popedom);
					}
					else{
						map.put("message", "该用户还没有分配权限！");
						return "login";
					}
				}
				else{
					map.put("message", "该用户还没有分配角色！");
					return "login";
				}
			}
			else{
				map.put("message", "密码不匹配！");
				return "login";
			}
			
		}
		else{
			map.put("message", "不存在该用户！");
			return "login";
		}
		//记住我的功能
		try {
				LogonUtils.remeberMeByCookie(request, response);
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
			}
		
		return "redirect:home/spotlightAdmin.do";
	}
	
	//退出系统
 	@RequestMapping("/exit.do")
	public String exit(HttpSession  httpSession){
 		httpSession.invalidate();
		return "redirect:loginIndex.do";
 	}
 	
	//注册用户
	@RequestMapping("/register.do")
	public String register(String username, String logonname, String logonpwd,
			                String sexid, String birthday, String address,
			                String email, String mobile, String isduty,
			                String ondutydate, String personpage, String education,
			                String companyname, String workdetail, String remark,
			                HttpServletRequest request,ModelMap map,
			                @RequestParam("file") CommonsMultipartFile file){

		// 2.封装javabean
		User user = new User();
		user.setUsername(username);
		user.setLogonname(logonname);
		user.setLogonpwd(logonpwd);
		user.setSexid(sexid);
		user.setBirthday(StringHelper.stringConvertDate(birthday));
		user.setAddress(address);
		user.setEmail(email);
		user.setEducation(education);
		user.setMobile(mobile);
		user.setIsduty(isduty);
		System.out.println("isduty:"+isduty);
		user.setOndutydate(StringHelper.stringConvertDate(ondutydate));
		user.setPersonpage(personpage);
		user.setCompanyname(companyname);
		user.setWorkdetail(workdetail);
		user.setRemark(remark);
		
		if (!file.isEmpty() && file.getContentType().contains("image")) {
			File filetemp = FileUtil.createFile(file, request,
					"/system/");
			boolean flag = FileUtil.copyFile(file, request,
					"/system/");
			System.out.println(flag);
			
			// 上传成功
			if (flag) {
				// 1.获取上传文件的路径
				String filepath = filetemp.getPath().substring(filetemp.getPath().lastIndexOf("\\"));
				System.out.println(filepath);
				user.setPhotourl(filepath);
			} else {
				map.put("message", "上传头像失败！");
				return "500";
			}
		}

		int result = userServiceI.addUser(user);

		//如果插入成功影响集返回为1
		if (result > 0) {
			map.put("message", "增加成功");
			//给用户默认角色
			//1.查询普通用户具有的角色
			SystemDDL systemDDL = systemDDLService.findDDLByDdlName("角色", "普通用户");
			//2.获取当前用户id号
			User user1 = userServiceI.findUserExist(logonname);
			//3.建立用户角色关联
			UserRole userRole = new UserRole();
			userRole.setRoleid(systemDDL.getDdlcode().toString());
			userRole.setUserid(user1.getUserid().toString());
			
			return "redirect:loginIndex.do";
		} else {
			map.put("message", "增加失败！");
			return "500";
		}
	}
	

	@RequestMapping("/registerIndex.do")
	public String registerIndex(){
		return "register";
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
    
	
}
