package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.RolePopedom;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.util.XmlObject;


public interface RoleServiceI {

	List<XmlObject> readXml(String realpath);

	/**
	 * @Description: TODO
	 * @Parameter: @param roleid
	 * @Parameter: @return
	 * @Return:RolePopedom
	 * @Author: 高翔
	 * @Date: 2016年4月6日
	 */
	RolePopedom findRolePopedomByRoleId(String roleid);

	/**
	 * @Description: TODO
	 * @Parameter: @param realpath
	 * @Parameter: @param popedom
	 * @Parameter: @return
	 * @Return:List<XmlObject>
	 * @Author: 高翔
	 * @Date: 2016年4月6日
	 */
	List<XmlObject> macthRolePopedom(String realpath, RolePopedom popedom);

	/**
	 * @Description: TODO
	 * @Parameter: @param roleid
	 * @Parameter: @return
	 * @Return:List<UserRole>
	 * @Author: 高翔
	 * @Date: 2016年4月10日
	 */
	List<UserRole> findUserRoleByRoleId(String roleid);


}
