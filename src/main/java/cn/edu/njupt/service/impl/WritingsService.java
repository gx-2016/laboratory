package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.WritingsMapper;
import cn.edu.njupt.model.Writings;
import cn.edu.njupt.service.WritingsServiceI;

/** 
 * @author  作者 E-mail: 
 * @date 创建时间：2016年4月22日 上午9:59:03 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Service("writingsService")
public class WritingsService implements WritingsServiceI{

	@Resource(name="writingsMapper")
	private WritingsMapper writingsMapper;
	
	@Override
	public List<Writings> queryWrittings() {
		// TODO Auto-generated method stub
		return writingsMapper.queryAllWritings();
	}

	@Override
	public void saveWritings(Writings writings) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int editWritings(Writings writings) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Writings> queryWrittingsbyYear(int year) {
		// TODO Auto-generated method stub
		return writingsMapper.queryAllWritingsbyYear(year);
	}

	@Override
	public Writings findWrtingsById(Integer wtringsid) {
		// TODO 自动生成的方法存根
		return writingsMapper.selectByPrimaryKey(wtringsid);
	}

}
