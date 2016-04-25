package cn.edu.njupt.dao;

import java.util.List;

import cn.edu.njupt.model.Teach;

public interface TeachMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(Teach record);

    int insertSelective(Teach record);

    Teach selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(Teach record);

    int updateByPrimaryKey(Teach record);
    
    List<Teach> queryTeachsByUserID(int userid);
}