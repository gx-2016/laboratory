package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.HomeLinks;

public interface HomeLinksServiceI {

	public List<HomeLinks> getAllHomeLinks(); 
	
	public  int insert(HomeLinks record);
}
