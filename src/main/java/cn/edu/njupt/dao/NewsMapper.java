package cn.edu.njupt.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.njupt.model.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsid);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsid);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    List<News> queryNews(@Param("num")int num,@Param("newsType")String newsType);
    List<News> queryAllNews(@Param("newsType")String newsType);
    List<News> queryAllNewsAndInform();
    
}