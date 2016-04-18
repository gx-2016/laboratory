package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.HomeSpotLight;

public interface HomeSpotLightServiceI {

	public List<HomeSpotLight> getAllHomeSpotLight(); 
	
	public  int insert(HomeSpotLight record);

	public int deleteSpotlightById(int parseInt);
}
