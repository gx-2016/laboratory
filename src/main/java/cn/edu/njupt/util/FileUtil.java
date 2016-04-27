/**
 * @Title: CopyFile.java
 * @Description: TODO
 * @Author: 高翔
 * @Date: 2016年3月28日
 */
package cn.edu.njupt.util;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * @Author Administrator
 * @Description TODO
 * @Date 2016年3月28日
 */
public class FileUtil {
	
   /**
    * @Description: 用于上传文件
    * @Parameter: @param file 文件对象
    * @Parameter: @param httpServletRequest
    * @Parameter: @param floder 上传的子文件夹
    * @Return:boolean
    * @Author: 高翔
    * @Date: 2016年3月29日
    */
   public static boolean copyFile(CommonsMultipartFile file,HttpServletRequest httpServletRequest,String floder)
   {
	   File file2 = createFile(file, httpServletRequest, floder);
	   try {
		    file.getFileItem().write(file2); //将上传的文件写入新建的文件中
	   } catch (Exception e) {
		    e.printStackTrace();
		    return false;
	   }
	   return true;
   }

   /**
    * @Description: TODO
    * @Parameter: @param file
    * @Parameter: @param httpServletRequest
    * @Parameter: @param floder
    * @Parameter: @return
    * @Return:File
    * @Author: 高翔
    * @Date: 2016年3月29日
    */
	public static File createFile(CommonsMultipartFile file,
			HttpServletRequest httpServletRequest, String floder) {
		   String path = httpServletRequest.getServletContext().getRealPath(floder);  //获取本地存储路径
//		   System.out.println(path);
		   String fileName = file.getOriginalFilename();
		   String fileType = fileName.substring(fileName.lastIndexOf("."));
//		   System.out.println(fileType); 
		   File fileDir = new File(path);
		   File file2 = null;
		   if(fileDir.exists()){
			   file2 = new File(path,fileName.substring(0,fileName.lastIndexOf("."))+"_"+new Date().getTime() + fileType); //新建一个文件
		   }else{
			   fileDir.mkdirs();
			   file2 = new File(path,fileName.substring(0,fileName.lastIndexOf("."))+"_"+new Date().getTime() + fileType); //新建一个文件
		   }
		return file2;
	}

}
