package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.SystemDDL;


public interface SystemDDLServiceI {

	List<String> findkeyWordList();

	List<SystemDDL> findDDLListByKeyWord(String keyword);

	int saveDDLListByKeyWord(SystemDDL systemDDL);

	SystemDDL findDDLListByDdlCode(String keyword, Integer ddlcode);
	
	SystemDDL findDDLListByDdlName(String keyword, String ddlname);
}
