/**
 * @Title: HomeSpotLightServiceImpl.java
 * @Description: TODO
 * @Author: 高翔
 * @Date: 2016年3月29日
 */
package cn.edu.njupt.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.SystemDDLMapper;
import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.service.SystemDDLServiceI;

/**
 * @Author Administrator
 * @Description TODO
 * @Date 2016年3月29日
 */
@Service("systemDDLService")
public class SystemDDLServiceImpl implements SystemDDLServiceI {
	
	@Resource(name = "systemDDLMapper")
	private SystemDDLMapper systemDDLMapper;


	/**
	 * 查询数据字典中所有的数据类型
	 */
	@Override
	public List<String> findkeyWordList() {
		
		return systemDDLMapper.findkeyWordList();
	}


	/* 
	 * 根据keyword查询所有数据项
	 */
	@Override
	public List<SystemDDL> findDDLListByKeyWord(String keyword) {
		return systemDDLMapper.findDDLListByKeyWord(keyword);
	}


	/* 
	 * 保存数据字典
	 */
	@Override
	public int saveDDLListByKeyWord(SystemDDL systemDDL) {
		return systemDDLMapper.insert(systemDDL);
	}


	/* 
	 * 根据关键字类型和数据项编号查询数据项
	 */
	@Override
	public SystemDDL findDDLByDdlCode(String keyword, Integer ddlcode) {
		HashMap<Object, Object> param = new HashMap<Object, Object>();
		param.put("keyword", keyword);
		param.put("ddlcode", ddlcode);

		return systemDDLMapper.findDDLByDdlCode(param);
	}


	/* 
	 * 根据关键字类型和数据项名称查询数据项
	 */
	@Override
	public SystemDDL findDDLByDdlName(String keyword, String ddlname) {
		HashMap<Object, Object> param = new HashMap<Object, Object>();
		param.put("keyword", keyword);
		param.put("ddlname", ddlname);
		
		return systemDDLMapper.findDDLByDdlName(param);
	}
	

}
