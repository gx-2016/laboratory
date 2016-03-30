package cn.edu.njupt.dao;

import cn.edu.njupt.model.ShareResource;

public interface ShareResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(ShareResource record);

    int insertSelective(ShareResource record);

    ShareResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(ShareResource record);

    int updateByPrimaryKey(ShareResource record);
}