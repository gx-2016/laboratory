package cn.edu.njupt.service;
import java.util.List;

import org.ietf.jgss.Oid;

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
	void saveWritings(Writings writings);
	int editWritings(Writings writings);
}
