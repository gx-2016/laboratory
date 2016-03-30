package cn.edu.njupt.dao;

import cn.edu.njupt.model.SystemDDL;

public interface SystemDDLMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(SystemDDL record);

    int insertSelective(SystemDDL record);

    SystemDDL selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(SystemDDL record);

    int updateByPrimaryKey(SystemDDL record);
}