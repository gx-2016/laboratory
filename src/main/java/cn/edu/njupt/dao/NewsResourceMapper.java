package cn.edu.njupt.dao;

import cn.edu.njupt.model.NewsResource;

public interface NewsResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(NewsResource record);

    int insertSelective(NewsResource record);

    NewsResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(NewsResource record);

    int updateByPrimaryKey(NewsResource record);
}