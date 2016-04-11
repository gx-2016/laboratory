package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    List<News> queryNews(int num);
    List<News> queryAllNews();
    
}