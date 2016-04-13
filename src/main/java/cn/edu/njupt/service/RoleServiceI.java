package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.RolePopedom;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.util.XmlObject;


public interface RoleServiceI {

	List<XmlObject> readXml(String realpath);

	RolePopedom findRolePopedomByRoleId(String roleid);

	List<XmlObject> macthRolePopedom(String realpath, RolePopedom popedom);

	List<UserRole> findUserRoleByRoleId(String roleid);

	int deleteRolePadomById(String roleid);
	
	int insertRolePadom(RolePopedom popedom);

	int deleteRoleUserById(String roleid);

	/**
	 * @Description: TODO
	 * @Parameter: @param list
	 * @Return:void
	 * @Author: 高翔
	 * @Date: 2016年4月12日
	 */
	int insertUserRole(List<UserRole> list);

	/**
	 * @Description: TODO
	 * @Parameter: @param userid
	 * @Parameter: @return
	 * @Return:List<UserRole>
	 * @Author: 高翔
	 * @Date: 2016年4月13日
	 */
	List<UserRole> findUserRoleByUserId(Integer userid);


}
