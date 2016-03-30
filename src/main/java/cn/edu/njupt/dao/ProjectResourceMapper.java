package cn.edu.njupt.dao;

import cn.edu.njupt.model.ProjectResource;

public interface ProjectResourceMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(ProjectResource record);

    int insertSelective(ProjectResource record);

    ProjectResource selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(ProjectResource record);

    int updateByPrimaryKey(ProjectResource record);
}