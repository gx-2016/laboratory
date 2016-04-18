package cn.edu.njupt.inteceptor;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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
	
	protected final transient Log log =LogFactory.getLog(AccessInteceptor.class);

	@Resource(name="roleService")
	private RoleServiceI roleServiceI;
	
	 /**  
     * 在业务处理器处理请求之前被调用  
     * 如果返回false  
     *     从当前的拦截器往回执行所有拦截器的afterCompletion(),再退出拦截器链 
     * 如果返回true  
     *    执行下一个拦截器,直到所有的拦截器都执行完毕  
     *    再执行被拦截的Controller  
     *    然后进入拦截器链,  
     *    从最后一个拦截器往回执行所有的postHandle()  
     *    接着再从最后一个拦截器往回执行所有的afterCompletion()  
     */    
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//1.获取请求的url
		String uri = request.getRequestURI();
		log.info(new Date()+": "+uri);
		List<String> accessList = new ArrayList<String>();
		accessList.add("login.do");
		accessList.add("loginIndex.do");
		accessList.add("register.do");
		accessList.add("registerIndex.do");
		if(accessList.contains(uri)){
			return true;
		}
       //1.先判断用户是否登陆，即session中是否有值
		User user = (User) request.getSession().getAttribute("logonuser");
		if(null != user){
			return true;
		}
		else {
			log.info(new Date()+": session失效！");
			response.sendRedirect("/laboratory/loginIndex.do");
			return false;
		}
	}

	 /** 
     * 在业务处理器处理请求执行完成后,生成视图之前执行的动作    
     * 可在modelAndView中加入数据，比如当前时间 
     */  
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
        //日志管理
		log.info(new Date()+":生成视图！");
	}
	 /**  
     * 在DispatcherServlet完全处理完请求后被调用,可用于清理资源等   
     * 当有拦截器抛出异常时,会从当前拦截器往回执行所有的拦截器的afterCompletion()  
     */    
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		   log.info(new Date()+":异常："+ex.getMessage());
	}
  

}
