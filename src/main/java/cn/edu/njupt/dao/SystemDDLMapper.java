package cn.edu.njupt.dao;

import java.util.HashMap;
import java.util.List;

import cn.edu.njupt.model.SystemDDL;

public interface SystemDDLMapper {
    int deleteByPrimaryKey(Integer seqid);

    int insert(SystemDDL record);

    int insertSelective(SystemDDL record);

    SystemDDL selectByPrimaryKey(Integer seqid);

    int updateByPrimaryKeySelective(SystemDDL record);

    int updateByPrimaryKey(SystemDDL record);

	List<String> findkeyWordList();

	List<SystemDDL> findDDLListByKeyWord(String keyword);

	SystemDDL findDDLByDdlCode(HashMap<Object, Object> param);

	SystemDDL findDDLByDdlName(HashMap<Object, Object> param);

}