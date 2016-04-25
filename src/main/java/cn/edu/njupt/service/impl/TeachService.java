package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.TeachMapper;
import cn.edu.njupt.model.Teach;
import cn.edu.njupt.service.TeachServiceI;

/** 
 * @author  作者 E-mail: 
 * @date 创建时间：2016年4月25日 下午7:02:23 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */

@Service("teachService")
public class TeachService implements TeachServiceI {

	@Resource(name="teachMapper")
	private TeachMapper teachMapper;
	@Override
	public List<Teach> queryTeachsByUserID (int userid) {
		// TODO Auto-generated method stub
		return teachMapper.queryTeachsByUserID( userid);
	}

}
