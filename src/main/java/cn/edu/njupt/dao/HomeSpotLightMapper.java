package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.HomeSpotLight;

public interface HomeSpotLightMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(HomeSpotLight record);

    int insertSelective(HomeSpotLight record);

    HomeSpotLight selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(HomeSpotLight record);

    int updateByPrimaryKey(HomeSpotLight record);
    
    List<HomeSpotLight> getAllSpotlights();
}