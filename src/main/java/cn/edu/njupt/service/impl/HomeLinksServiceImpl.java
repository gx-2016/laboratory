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

import cn.edu.njupt.dao.HomeLinksMapper;
import cn.edu.njupt.model.HomeLinks;
import cn.edu.njupt.service.HomeLinksServiceI;

/**
 * @Author Administrator
 * @Description TODO
 * @Date 2016年3月29日
 */
@Service("homeLinksService")
public class HomeLinksServiceImpl implements HomeLinksServiceI {
	
	@Resource(name = "homeLinksMapper")
	private HomeLinksMapper homeLinksMapper;
	

	public int insert(HomeLinks record) {
		
		return homeLinksMapper.insert(record);
	}

	public List<HomeLinks> getAllHomeLinks() {

		List<HomeLinks> list = homeLinksMapper.getAllLinks();
		return list;
	}

}
