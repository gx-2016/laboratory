package cn.edu.njupt.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.njupt.model.User;
import cn.edu.njupt.service.UserServiceI;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class TestMybatis {
	
//	private ApplicationContext ac ;
	private UserServiceI userServiceI;
	
    public UserServiceI getUserServiceI() {
		return userServiceI;
	}

    @Autowired
	public void setUserServiceI(UserServiceI userServiceI) {
		this.userServiceI = userServiceI;
	}

	//	@Before
//	public void before()
//	{
//		 ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-mybatis.xml"});
//		 userServiceI = (UserServiceI)ac.getBean("userService");
//	}
	@Test
	public void test1()
	{
		User u = userServiceI.getUserById(1);
		System.out.println(u.getUsername());
	}
}
