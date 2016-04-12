package cn.edu.njupt.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.edu.njupt.model.User;
import cn.edu.njupt.model.UserForm;
import cn.edu.njupt.service.UserServiceI;
import cn.edu.njupt.util.FileUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name = "userService")
	private UserServiceI userServiceI;

	@RequestMapping("/userAdmin.do")
	public String userAdmin(ModelMap map) {
		List<User> userList = userServiceI.getAllUser();
		map.put("userList", userList);
		return "system/userAdmin";
	}

//	@InitBinder("user")
//	public void initBinder2(WebDataBinder binder) {
//		binder.setFieldDefaultPrefix("user.");
//	}

	@RequestMapping("/updateUser.do")
	public String updateUser(HttpServletRequest httpServletRequest,
			ModelMap map, @ModelAttribute UserForm user,
			@RequestParam("file") CommonsMultipartFile file) {
		System.out.println("UserController.updateUser()" + user.getUsername());
		// 2.封装javabean
		User user1 = new User();
		user1.setUserid(Integer.parseInt(user.getUserid()));
		user1.setAddress(user.getAddress());
		try {
			if (null != user.getBirthday() && !"".equals(user.getBirthday())) {
				user1.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(user
						.getBirthday()));
			}
			if (null != user.getOffdutydate()
					&& !"".equals(user.getOffdutydate())) {
				user1.setOffdutydate(new SimpleDateFormat("yyyy-MM-dd")
						.parse(user.getOffdutydate()));
			}
			if (null != user.getOndutydate()
					&& !"".equals(user.getOndutydate())) {
				user1.setOndutydate(new SimpleDateFormat("yyyy-MM-dd")
						.parse(user.getOndutydate()));
			}

		} catch (ParseException e) {
			e.printStackTrace();
			map.put("message", "日期转换失败！");
			return "500";
		}
		user1.setCompanyname(user.getCompanyname());
		user1.setEducation(user.getEducation());
		user1.setEmail(user.getEmail());
		user1.setIsduty(user.getIsduty());
		user1.setLogonname(user.getLogonname());
		user1.setLogonpwd(user.getLogonpwd());
		user1.setMobile(user.getMobile());
		user1.setPersonpage(user.getPersonpage());
		user1.setRemark(user.getRemark());
		user1.setSexid(user.getSexid());
		user1.setUsername(user.getUsername());
		user1.setWorkdetail(user.getWorkdetail());

		if (!file.isEmpty() && file.getContentType().contains("image")) {
			File filetemp = FileUtil.createFile(file, httpServletRequest,
					"/system/");
			boolean flag = FileUtil.copyFile(file, httpServletRequest,
					"/system/");
			System.out.println(flag);
			// 上传成功
			if (flag) {

				// 1.获取上传文件的路径
				String filepath = filetemp.getAbsolutePath();
				user1.setPhotourl(filepath);
			} else {
				map.put("message", "修改失败2！");
				return "500";
			}
		}

		int result = userServiceI.updateUser(user1);

		// 3.如果插入成功影响集返回为1
		if (result > 0) {

			map.put("message", "修改成功");
			return "forward:userAdmin.do";
		} else {
			map.put("message", "修改失败1！");
			return "500";
		}

	}
}
