package cn.edu.njupt.service;

import java.util.List;

import cn.edu.njupt.model.PicResource;;

public interface PhotoServiceI {

	public List<PicResource> getAllPicResource(); 
	
	public  int insert(PicResource record);
	
	public int  photoDelete(Integer seqid);
}
