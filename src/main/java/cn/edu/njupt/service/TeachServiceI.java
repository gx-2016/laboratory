package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.Teach;

/** 
 * @author  作者 E-mail: 
 * @date 创建时间：2016年4月25日 下午6:56:47 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface TeachServiceI {
	List<Teach>  queryTeachsByUserID(int userid);
}
