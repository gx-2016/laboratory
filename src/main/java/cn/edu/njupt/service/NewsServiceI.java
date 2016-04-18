package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.News;

/** 
 * @author wf 
 * @date 创建时间：2016年3月31日 下午1:41:09 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface NewsServiceI {
	public List<News> queryNewsforHomeNews(int num);
	public List<News> queryInformforHomeInfrom(int num);
	public List<News> queryNews(int num);
	public List<News> queryAllNews();
	public News queryNewsById(int newsId);
	public void insertNews(News news);
	int deleteNewsByID(int newsid);
}
