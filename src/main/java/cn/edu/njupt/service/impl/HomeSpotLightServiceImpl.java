/**
 * @Title: HomeSpotLightServiceImpl.java
 * @Description: TODO
 * @Author: 高翔
 * @Date: 2016年3月29日
 */
package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.HomeSpotLightMapper;
import cn.edu.njupt.model.HomeSpotLight;
import cn.edu.njupt.service.HomeSpotLightServiceI;

/**
 * @Author Administrator
 * @Description TODO
 * @Date 2016年3月29日
 */
@Service("homeSpotLightService")
public class HomeSpotLightServiceImpl implements HomeSpotLightServiceI {
	
	@Resource(name = "homeSpotLightMapper")
	private HomeSpotLightMapper homeSpotLightMapper;
	

	@Override
	public int insert(HomeSpotLight record) {
		
		return homeSpotLightMapper.insert(record);
	}

	@Override
	public List<HomeSpotLight> getAllHomeSpotLight() {

		List<HomeSpotLight> list = homeSpotLightMapper.getAllSpotlights();
		return list;
	}

	/* 
	 * 删除主页的焦点
	 */
	@Override
	public int deleteSpotlightById(int seqid) {
		return homeSpotLightMapper.deleteByPrimaryKey(seqid);
	}

}
