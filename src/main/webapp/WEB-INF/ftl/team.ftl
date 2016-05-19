<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6 menu-present" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7 menu-present" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8 menu-present" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9 menu-present" lang="en"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="gtIE9 menu-present">
<!--<![endif]-->
<head>
<script type="text/javascript">
	var uoa_data = {
		ga_id : 'UA-7185376-1',
		ga_domain : '.nupt.edu.cn',
		tms : false,
		global : '/global/v/response1/',
		english_accept : false
	};
</script>
<meta charset="utf-8">
<title>The ICV Laboratory</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Le styles -->
<link href="Css/jquery-ui-1.8.13.uoa.css" media="all" rel="stylesheet">
<link href="Css/df-autocomplete.css" media="all" rel="stylesheet">
<link href="Css/styles.min.css" media="screen" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="Scripts/html5.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="shortcut icon"
	href="global/v/response1/img/apple-touch-icon-57-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="global/v/response1/img/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="global/v/response1/img/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="global/v/response1/img/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="57x57"
	href="global/v/response1/img/apple-touch-icon-57-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="global/v/response1/img/apple-touch-icon-57-precomposed.png" />
<link rel="apple-touch-icon"
	href="global/v/response1/img/apple-touch-icon-57-precomposed.png" />
<script src="Scripts/production.min.js"></script>

</head>

<body>
	<#include "frame/head1.ftl">
	<!--page content-->
	<section class="new-home">
		<div id="page-container" class="container">
			<div class="row-fluid">
				<div class="span12 rowWhite">
                   <!--面包屑导航-->
					<div class="region region-breadcrumb">
					    <div id="block-ua-theme-breadcrumbs" class="block block-system block-system-breadcrumb-block">
					        <nav class="c-site-breadcrumb" aria-label="You are here">
					        <ol class="c-site-breadcrumb__list">
					          <li class="c-site-breadcrumb__list-item">
					                  <a href="home.do">首页</a>
					              </li>
					          <li class="c-site-breadcrumb__list-item">
					                      <a href="team.do">团队</a>
					              </li>
					              <li class="c-site-breadcrumb__list-item">
					                     <#if type??>
					                      ${type}
					                      </#if>
					              </li>
					        </ol>
						  </nav>
					  </div>
				  </div>
                   <!-- 中间内容 -->
					<div class="o-layout-container">
						<article id="main-content" class="o-layout-main-article">
							<div class="region region-content">
							
								<!-- content -->
								 <#if teachers? exists>
								 <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
								          <a id="teacher" > 教师</a>
								         </h2>
								   <ul class="news-events-feed__content">
									 <#list teachers as teacher>
										 <div class="row-fluid" >
												<div class="span3" >
														<#if teacher.photourl??>
												        <img height="209"  src="system/${teacher.photourl}"/>
													    <#else>
													     <img height="209"  src="assets/images/person3.jpg"/>
													     </#if>
												</div>
												<div class="span3" >
													<table border='0' class="table">
													    <tr>
														<#if teacher.username??>
												        <h3><td>姓名：</td><td>${teacher.username}</td> </h3> 
												        </#if>
												         </tr>
												         <tr>
												        <#if teacher.education??>
												          </nobr><td>学历：</td><td> ${teacher.education}</td></nobr>
												        </#if>
												        </tr>
												         <tr>
												        <#if teacher.education??>
												          </nobr><td>学历：</td><td> ${teacher.education}</td></nobr>
												        </#if>
												        </tr>
												       </table>
												</div>
											</div>
											<br/>
											<!--每个栏目锚点-->
		                                         <div class="row-fluid span12" >
		                                        <#if teacherPersonpageMap? exists>
										              <#list teacherPersonpageMap?keys as userid>
											              <#if (userid == teacher.userid?string) >
											                 <#list teacherPersonpageMap[userid]?keys as ddlname>
																<a href="#${ddlname}" target="_self"><strong> <font face="Times New Roman" size="4">[${ddlname}]</font></strong></a>&nbsp;&nbsp;
														      </#list>
														  </#if>	
											          </#list>
				                                   </#if>	
				                                  </div>	
					                             <!--end 每个栏目锚点-->
                                           <div class="page-header">
				                            </div>
			                                 <!--数据项对应个人主页表中具体字段的内容-->
											    <#if teacherPersonpageMap? exists>
									              <#list teacherPersonpageMap?keys as userid>
										              <#if (userid == teacher.userid?string) >
										                 <#list teacherPersonpageMap[userid]?keys as ddlname>
												                <div class="page-header" >
												               <!--每个栏目锚点 对应数据字典中的     数据项名称-->
													           <p><a name="${ddlname}"></a><h3>${ddlname}</h3> </p>
														       <font face="Times New Roman" size="4">
														       <div class="row-fluid">
														         ${(teacherPersonpageMap[userid])[ddlname]}
														       </div>
														       </font>
														        </div>
													      </#list>
											          </#if>
										          </#list>
			                                   </#if>		
				                              <!--end 数据项对应个人主页表中具体字段的内容-->
				                             	
									 </#list>
				                    </ul>
				                   </div>
								</div>	
								</#if>	
			                  <!-- end content -->
			                  
			                  <!-- content -->
			                      <#if masters? exists>
			                      <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
			                       <a id="master" > 硕士 </a>
			                       </h2>
			                       <ul class="news-events-feed__content">
									 <#list masters as master>
										 <div class="row-fluid" >
												<div class="span3" >
														<#if master.photourl??>
												        <img height="209"  src="system/${master.photourl}"/>
													    <#else>
													     <img height="209"  src="assets/images/person3.jpg"/>
													     </#if>
												</div>
												<div class="span3" >
													<table border='0' class="table">
													    <tr>
														<#if master.username??>
												        <h3><td>姓名：</td><td>${master.username}</td> </h3> 
												        </#if>
												         </tr>
												         <tr>
												        <#if master.education??>
												          </nobr><td>学历：</td><td> ${master.education}</td></nobr>
												        </#if>
												        </tr>
												       </table>
												</div>
											</div>
										   <div class="page-header">
                                             <!--每个栏目锚点-->
                                             <div class="row-fluid" >
                                            <#if masterPersonpageMap? exists>
									              <#list masterPersonpageMap?keys as userid>
										              <#if (userid == master.userid?string) >
										                 <#list masterPersonpageMap[userid]?keys as ddlname>
															<a href="#${ddlname}" target="_self"><strong> <font face="Times New Roman" size="4">[${ddlname}]</font></strong></a>&nbsp;&nbsp;
													      </#list>
													  </#if>	
										          </#list>
			                                   </#if>	
			                                  </div>	
			                                </div>	
				                             <!--end 每个栏目锚点-->
				                             
			                                 <!--数据项对应个人主页表中具体字段的内容-->
											    <#if masterPersonpageMap? exists>
									              <#list masterPersonpageMap?keys as userid>
										              <#if (userid == master.userid?string) >
										                 <#list masterPersonpageMap[userid]?keys as ddlname>
												               <!--每个栏目锚点 对应数据字典中的     数据项名称-->
												                <div class="page-header">
													           <p><a name="${ddlname}"></a><h3>${ddlname}</h3> </p>
														       <font face="Times New Roman" size="4">
														       <div class="row-fluid">
														         ${(masterPersonpageMap[userid])[ddlname]}
														       </div>
														       </font>
														        </div>
													      </#list>
											          </#if>
										          </#list>
			                                   </#if>		
				                              <!--end 数据项对应个人主页表中具体字段的内容-->
				                         </#list>
				                    </ul>
				                   </div>
								</div>	
								 </#if>		
			                  <!-- end content -->
				                              
				               <!-- content -->
			                      <#if undergratuates? exists>
			                       <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
			                       <a id="undergraduate" > 本科</a>
			                       </h2>
			                        <ul class="news-events-feed__content">
									 <#list undergratuates as undergratuate>
										 <div class="row-fluid" >
												<div class="span3" >
														<#if undergratuate.photourl??>
												        <img height="209"  src="system/${undergratuate.photourl}"/>
													    <#else>
													     <img height="209"  src="assets/images/person3.jpg"/>
													     </#if>
												</div>
												<div class="span3" >
													<table border='0' class="table">
													    <tr>
														<#if undergratuate.username??>
												        <h3><td>姓名：</td><td>${undergratuate.username}</td> </h3> 
												        </#if>
												         </tr>
												         <tr>
												        <#if undergratuate.education??>
												          </nobr><td>学历：</td><td> ${undergratuate.education}</td></nobr>
												        </#if>
												        </tr>
												       </table>
												</div>
											</div>
                                             <!--每个栏目锚点-->
                                              <div class="page-header">
                                             <div class="row-fluid" >
                                            <#if undergratuatePersonpageMap? exists>
									              <#list undergratuatePersonpageMap?keys as userid>
										              <#if (userid == undergratuate.userid?string) >
										                 <#list undergratuatePersonpageMap[userid]?keys as ddlname>
															<a href="#${ddlname}" target="_self"><strong> <font face="Times New Roman" size="4">[${ddlname}]</font></strong></a>&nbsp;&nbsp;
													      </#list>
													  </#if>	
										          </#list>
			                                   </#if>	
			                                  </div>	
			                                  </div>	
				                             <!--end 每个栏目锚点-->
				                             
			                                 <!--数据项对应个人主页表中具体字段的内容-->
											    <#if undergratuatePersonpageMap? exists>
									              <#list undergratuatePersonpageMap?keys as userid>
										              <#if (userid == master.userid?string) >
										                 <#list undergratuatePersonpageMap[userid]?keys as ddlname>
												               <!--每个栏目锚点 对应数据字典中的     数据项名称-->
													           <div class="page-header">
													           <p><a name="${ddlname}"></a><h3>${ddlname}</h3> </p>
														       <font face="Times New Roman" size="4">
														       <div class="row-fluid">
														         ${(undergratuatePersonpageMap[userid])[ddlname]}
														       </div>
														       </font>
														       </div">
													      </#list>
											          </#if>
										          </#list>
			                                   </#if>		
				                              <!--end 数据项对应个人主页表中具体字段的内容-->
									 </#list>
				                  	
				                    </ul>
				                   </div>
								</div>
								 </#if>			
			                  <!-- end content -->
			                  
			                  
			                  
							</div>
						</article>
						
					</div>
					  <!-- end 中间内容 -->
					  
				</div>
			</div>
		</div>
	</section>
	<#include "frame/footer1.ftl">
</body>
</html>
