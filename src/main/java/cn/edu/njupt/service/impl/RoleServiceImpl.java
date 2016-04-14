package cn.edu.njupt.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.RolePopedomMapper;
import cn.edu.njupt.dao.UserRoleMapper;
import cn.edu.njupt.model.RolePopedom;
import cn.edu.njupt.model.UserRole;
import cn.edu.njupt.service.RoleServiceI;
import cn.edu.njupt.util.XmlObject;

@Service("roleService")
public class RoleServiceImpl implements RoleServiceI{

	@Resource(name = "userRoleMapper")
	private UserRoleMapper userRoleMapper;
	
	@Resource(name = "rolePopedomMapper")
	private RolePopedomMapper rolePopedomMapper;

    /**
     * 从配置文件中读取权限集合
     */
	public List<XmlObject> readXml(String realpath) {
		
		List<XmlObject> xmlObjects = new ArrayList<XmlObject>();
		File file =  new File(realpath); 
        //使用dom4j解析xml文件
		try {
			SAXReader reader = new SAXReader();
			Document document = reader.read(file);
			Element element = document.getRootElement();
			XmlObject xmlObject = null;
			//遍历元素
			for(@SuppressWarnings("unchecked")
			Iterator<Element> iter = element.elementIterator("Function");iter.hasNext();)
			{
				Element xmlElement = iter.next();
				xmlObject = new XmlObject();
				xmlObject.setCode(xmlElement.elementText("FunctionCode"));
				xmlObject.setName(xmlElement.elementText("FunctionName"));
				xmlObject.setParentCode(xmlElement.elementText("ParentCode"));
				xmlObject.setParentName(xmlElement.elementText("ParentName"));
				xmlObjects.add(xmlObject);
			}
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return xmlObjects;
	}

	/*
	 * 根据角色id读取所具有的权限
	 */
	@Override
	public RolePopedom findRolePopedomByRoleId(String roleid) {
		return rolePopedomMapper.selectByPrimaryKey(roleid) ;
	}

	/* 
	 *  用flag标识匹配角色具有的权限 ,flag =0表示不具有该权限 ,如果flag =1 表示具有该权限、
	 */
	@Override
	public List<XmlObject> macthRolePopedom(String realpath, RolePopedom popedom) {
		List<XmlObject> list = new ArrayList<XmlObject>();
		List<XmlObject> xmlObjects = this.readXml(realpath);
		if(null!=popedom){
			for(XmlObject xmlObject: xmlObjects){
				if(null!=popedom.getPopedomcode() && 
				   popedom.getPopedomcode().contains(xmlObject.getCode())){
					xmlObject.setFlag("1");
				}
				else{
					xmlObject.setFlag("0");
				}
				list.add(xmlObject);
			}
		}
		return list;
	}

	/* 
	 * 根据角色id查询该角色拥有的所有用户
	 */
	@Override
	public List<UserRole> findUserRoleByRoleId(String roleid) {
		return userRoleMapper.findUserRoleByRoleId(roleid);
	}

	/*
	 * 根据角色id删除角色权限关联
	 */
	@Override
	public int deleteRolePadomById(String roleid) {
		return rolePopedomMapper.deleteByPrimaryKey(Integer.parseInt(roleid));
		
	}

	/* 
	 * 保存角色权限关联
	 */
	@Override
	public int insertRolePadom(RolePopedom popedom) {
		return rolePopedomMapper.insert(popedom);
	}

	/* 
	 * 根据角色id删除用户角色关联
	 */
	@Override
	public int deleteRoleUserById(String roleid) {
		return userRoleMapper.deleteByRoleid(roleid);
	}

	/*
	 * 保存用户角色关联 
	 */
	@Override
	public int insertUserRole(List<UserRole> list) {
		return userRoleMapper.insertUserRole(list);
	}
	
	/*
	 * 根据用户id查询用户角色列表
	 */
	@Override
	public List<UserRole> findUserRoleByUserId(String userid) {
		return userRoleMapper.findUserRoleByUserId(userid);
	}
	

}
