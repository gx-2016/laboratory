package cn.edu.njupt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.njupt.service.WritingsServiceI;

/** 
 * @author wf 
 * @date 创建时间：2016年4月11日 下午7:41:24 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
@Controller
@RequestMapping("/writings")
public class WritingsController {
	@Resource(name="writingsService")
	private WritingsServiceI writingsService;
}
