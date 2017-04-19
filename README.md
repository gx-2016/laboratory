# laboratory

项目架构： Spring3.2.0 + Spring MVC3.2.0 mybatis3.1.1 + freemarker2.3.20
项目管理： Maven + git，  github地址：https://github.com/gx-2016/laboratory
开发环境： Eclipse Java EE，Version: Kepler Release .
           JDK 1.7
		   tomcat 7

配置环境：
1、本地创建好数据库（laboratory）并初始化相关表数据，具体包括以下：
   ①初始化数据字典表（lab_systemDDL）中高级管理员数据项;
   ②初始化用户表中（lab_user）一位高级管理员用户数据;
   ③初始化用户角色表中（lab_user_role）分配好高级管理员用户对应角色的表关联关系;
   ④初始化角色权限表（lab_role_popedom）分配好高级管理员用户对应的权限：abcdefghijklmn;
   ⑤导入源码，修改数据库相关配置文件jdbc.properties，包括用户名、密码，运行源码。
   
2、测试：
   ①前台首页访问网址：localhost:8080/iacn
   ②后台管理登录页网址：localhost:8080/iacn/loginIndex.do

3、具体设计参考设计文档。