package cn.edu.njupt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.njupt.model.SystemDDL;
import cn.edu.njupt.service.SystemDDLServiceI;


@Controller
@RequestMapping("/system")
public class SystemController {
	
	@Resource(name="systemDDLService")
	private SystemDDLServiceI  systemDDLService;
	
	
	@RequestMapping("/systemDDLAdmin.do")
	public String systemAdmin(ModelMap modelMap){
		//1.查询所有的数据类型
		List<String> keyWordList = systemDDLService.findkeyWordList();
		modelMap.put("keyWordList", keyWordList);
		
		
		return "system/systemDDLAdmin";
	}
	
	@RequestMapping("/getDDLByKeyWord.do")
	public String getDDLByKeyWord(String keyword,ModelMap modelMap){
		//1.根据keyword查询所有的数据项
		List<SystemDDL> ddlList = systemDDLService.findDDLListByKeyWord( keyword);
		modelMap.put("ddlList", ddlList);
		
		return "system/systemDDLData";
	}
	
	@RequestMapping("/saveDDLByKeyWord.do")
	public String saveDDLByKeyWord(String keyword,Integer ddlcode,String ddlname,ModelMap modelMap){
		//1.封装javabean
		SystemDDL systemDDL = new SystemDDL();
		systemDDL.setKeyword(keyword);
		systemDDL.setDdlcode(ddlcode);
		systemDDL.setDdlname(ddlname);
		//2.根据keyword查询所有的数据项
		int result = systemDDLService.saveDDLListByKeyWord(systemDDL);
		 //3.如果插入成功影响集返回为1
 	   if(result > 0){
 		    List<SystemDDL> ddlList = systemDDLService.findDDLListByKeyWord( keyword);
 			modelMap.put("ddlList", ddlList);
 		    modelMap.put("message", "保存对象成功！");
 		    return "system/systemDDLData";
 	   }else{
 		    modelMap.put("message", "保存焦点对象失败！");
	        return "500";
	   }
	}
	
	@ResponseBody
	@RequestMapping("/findDDLByDdlCode.do")
	public ModelMap findDDLByDdlCode(String keyword,Integer ddlcode,ModelMap modelMap){
		
		System.out.println("keyword:"+keyword);
		//1.根据keyword查询所有的数据项
		SystemDDL result = systemDDLService.findDDLByDdlCode( keyword,ddlcode);
		if( null != result)
		{
			System.out.println("存在");
		modelMap.put("result", "1");
		}
		else
		modelMap.put("result", "0");
		
		return modelMap;
	}
	
	@ResponseBody
	@RequestMapping("/findDDLByDdlName.do")
	public ModelMap findDDLByDdlName(String keyword,String ddlname,ModelMap modelMap){
		//1.根据keyword查询所有的数据项
		SystemDDL result = systemDDLService.findDDLByDdlName( keyword,ddlname);
		if( null != result)
		{
			System.out.println("存在");
			modelMap.put("result", "1");
		}
			else
			modelMap.put("result", "0");
			
		return modelMap;
	}
	
}
