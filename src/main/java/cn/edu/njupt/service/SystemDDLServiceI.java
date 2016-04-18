package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.SystemDDL;


public interface SystemDDLServiceI {

	List<String> findkeyWordList();

	List<SystemDDL> findDDLListByKeyWord(String keyword);

	int saveDDLListByKeyWord(SystemDDL systemDDL);

	SystemDDL findDDLByDdlCode(String keyword, Integer ddlcode);
	
	SystemDDL findDDLByDdlName(String keyword, String ddlname);
}
