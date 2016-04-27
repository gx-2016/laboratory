package cn.edu.njupt.service;
import java.util.List;

import cn.edu.njupt.model.Writings;
/** 
 * @author  作者 E-mail: 
 * @date 创建时间：2016年4月21日 下午5:09:54 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface WritingsServiceI {
	List<Writings> queryWrittings();
	List<Writings> queryWrittingsbyYear(int year);
	void saveWritings(Writings writings);
	int editWritings(Writings writings);
	Writings findWrtingsById(Integer wtringsid);
	/**
	 * @Description: TODO
	 * @Parameter: @param personpageid
	 * @Parameter: @return
	 * @Return:List<Writings>
	 * @Author: 高翔
	 * @Date: 2016年4月27日
	 */
	List<Writings> findWrtingsByPersonpageId(Integer personpageid);
}
