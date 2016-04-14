package cn.edu.njupt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.njupt.model.RolePopedom;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.service.RoleServiceI;
import cn.edu.njupt.service.SystemDDLServiceI;
import cn.edu.njupt.util.XmlObject;

@Controller
@RequestMapping("/role")
public class RoleController {
	
	@Resource(name="roleService")
	private RoleServiceI roleServiceI;
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI systemDDLServiceI;

	@RequestMapping("/roleAdmin.do")
	public String roleAdmin(ModelMap map,HttpServletRequest request)
	{
		//1.数据字典查询所有的角色类型
		List<SystemDDL> roleList = systemDDLServiceI.findDDLListByKeyWord("角色");
		//2.function.xml中读出所有功能权限菜单,将数据放置到javabean中
		String realpath = request.getServletContext().getRealPath("/WEB-INF/classes/Function.xml");
		List<XmlObject> xmlObjects = roleServiceI.readXml(realpath);
		
		map.put("roleList", roleList);
		map.put("xmlObjects", xmlObjects);
		
		return "system/roleAdmin";
	}
	
	
	@RequestMapping("/roleEdit.do")
	public String roleEdit(ModelMap map,HttpServletRequest request,String roleid)
	{
		//1.根据roleid查询该角色具有的权限集合,
		RolePopedom popedom = roleServiceI.findRolePopedomByRoleId(roleid);
		//2.function.xml中读出所有功能权限菜单,与该角色具有的权限进行匹配
		String realpath = request.getServletContext().getRealPath("/WEB-INF/classes/Function.xml");
		List<XmlObject> rolePopedomList = roleServiceI.macthRolePopedom(realpath,popedom);
		//3.查询该角色所有的用户
		List<UserRole> userRoleList = roleServiceI.findUserRoleByRoleId(roleid);
		
		map.put("rolePopedomList", rolePopedomList);
		map.put("userRoleList", userRoleList);
		
		return "system/roleEdit";
	}
	
	@Transactional(readOnly=false,isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED)
	@ResponseBody
	@RequestMapping("/roleSave.do")
	public ModelMap roleSave(ModelMap map,String roleid,String rolepadom,@RequestParam("roleuser[]") String roleuser[])
	{
		try {
			//根据角色id删除角色和权限关联
		    roleServiceI.deleteRolePadomById(roleid);
			//1.保存角色和权限关联
			RolePopedom popedom = new RolePopedom();
			popedom.setRoleid(Integer.parseInt(roleid));
			popedom.setPopedomcode(rolepadom);
			roleServiceI.insertRolePadom(popedom);
			
			//根据角色id删除角色和用户关联
			 roleServiceI.deleteRoleUserById(roleid);
			 List<UserRole> list = new ArrayList<UserRole>();
			//2.保存角色和用户关联
	         for (String string : roleuser) {
	        	 UserRole userRole = new UserRole();
	        	 userRole.setRoleid(roleid);
	        	 userRole.setUserid(string);
	        	 list.add(userRole);
			}	
	         roleServiceI.insertUserRole(list);
	         map.put("message", "修改成功！");
			
		} catch (Exception e) {
			 map.put("message", "修改失败！");
		e.printStackTrace();
		}
		return map;
	}
}
