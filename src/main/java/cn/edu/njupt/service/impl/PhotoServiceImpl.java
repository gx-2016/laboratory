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

import cn.edu.njupt.dao.PicResourceMapper;
import cn.edu.njupt.model.PicResource;
import cn.edu.njupt.service.PhotoServiceI;

/**
 * @Author zhc
 * @Description TODO
 * @Date 2016年3月31日
 */
@Service("photoService")
public class PhotoServiceImpl implements PhotoServiceI {
	
	@Resource(name = "picResourceMapper")
	private PicResourceMapper picResourceMapper;
	
	public int insert(PicResource record) {
		
		return picResourceMapper.insert(record);
	}

	public List<PicResource> getAllPicResource() {

		List<PicResource> list = picResourceMapper.getAllPicResource();
		return list;
	}
	
	public int photoDelete(Integer seqid){
		
		return picResourceMapper.deleteByPrimaryKey(seqid);
	}

}
