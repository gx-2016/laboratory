package cn.edu.njupt.inteceptor;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.njupt.model.User;
import cn.edu.njupt.service.RoleServiceI;

/**
 * @Author 高翔
 * @Description 登陆拦截器
 * @Date 2016年4月13日
 */
public class AccessInteceptor implements HandlerInterceptor {

	@Resource(name="roleService")
	private RoleServiceI roleServiceI;
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//1.获取请求的url
		String uri = request.getRequestURI();
		System.out.println(uri);
		List<String> accessList = new ArrayList<String>();
		accessList.add("login.do");
		accessList.add("loginIndex.do");
		if(accessList.contains(uri)){
			return true;
		}
       //1.先判断用户是否登陆，即session中是否有值
		User user = (User) request.getSession().getAttribute("logonuser");
		if(null != user){
			return true;
		}
		else {
			
			response.sendRedirect("/laboratory/loginIndex.do");
			return false;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
  

}
