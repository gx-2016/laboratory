package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.HomeLinks;

public interface HomeLinksMapper {
    int deleteByPrimaryKey(Integer linkid);

    int insert(HomeLinks record);

    int insertSelective(HomeLinks record);

    HomeLinks selectByPrimaryKey(Integer linkid);

    int updateByPrimaryKeySelective(HomeLinks record);

    int updateByPrimaryKey(HomeLinks record);
    
    List<HomeLinks> getAllLinks();
}