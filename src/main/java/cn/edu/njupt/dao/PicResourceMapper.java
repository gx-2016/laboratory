package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.PicResource;

public interface PicResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(PicResource record);

    int insertSelective(PicResource record);

    PicResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(PicResource record);

    int updateByPrimaryKey(PicResource record);
    
    List<PicResource> getAllPicResource();
}