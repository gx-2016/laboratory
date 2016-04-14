package cn.edu.njupt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.njupt.dao.NewsMapper;
import cn.edu.njupt.model.News;
import cn.edu.njupt.service.NewsServiceI;

/** 
 * @author wf: 
 * @date 创建时间：2016年3月31日 下午1:45:55 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Service("newsService")
public class NewsSericeImpl implements NewsServiceI{
	@Resource(name="newsMapper")
	private NewsMapper newsMapper;
	
	@Override
	public List<News> queryNewsforHomeNews(int num) {
		// TODO Auto-generated method stub
		return newsMapper.queryNews(num);
	}

	@Override
	public List<News> queryNews(int num) {
		// TODO Auto-generated method stub
		return newsMapper.queryNews(num);
	}

	@Override
	public List<News> queryAllNews() {
		// TODO Auto-generated method stub
		return newsMapper.queryAllNews();
	}

	@Override
	public News queryNewsById(int newsId) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey(newsId);
	}

}
