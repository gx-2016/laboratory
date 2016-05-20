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
					                                     <span class="label label-success"> 团队</span>
					              </li>
					        </ol>
						  </nav>
					  </div>
				  </div>
                   <!-- 中间内容 -->
					<div class="o-layout-container">
					
					 <!--左边菜单-->
						<div id="secondary_menu" class="o-layout-main-nav">
							<div class="region region-secondary-menu">
								<nav class="c-sitenav js-sitenav" aria-label="Site Menu" role="navigation">
									<ul class="c-sitenav__level-1">
									    <li class="c-sitenav__item c-sitenav__current c-sitenav__active">
									    <a href="#teacher" class="c-sitenav__item-link">教师</a></li><br>
										<!--
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
										<a href="/iacn/student/doctor.do" class="c-sitenav__item-link ">博士</a>
										</li><br>
										-->
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active"><a href="#master"
											class="c-sitenav__item-link">硕士</a></li><br>
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<a href="#undergraduate" class="c-sitenav__item-link">本科</a>
										</li><br>
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<a href="#dutyUser" class="c-sitenav__item-link">往届学生</a>
										</li>
										<br>
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<a href="teamAll.do" class="c-sitenav__item-link">主页所有显示</a>
										</li>
										<br>
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<a href="user/personalPageAdmin.do" class="c-sitenav__item-link">修改个人主页</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
						<!--end 左边菜单-->
                        
						<article id="main-content" class="o-layout-main-article">
							<div class="region region-content">
								<!-- content -->
								<div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
								          <a id="teacher" href="teacher.do" > 
								           <strong>
								            <font color="#b38808">
								                               教师 MORE        
								            </font>
								          </strong>
								          </a>
								          
								        </h2>
								        <ul class="news-events-feed__content">
								             <#assign leftindex =2>
						                <#assign rightindex =1>
			                      <#if teachers? exists>
									 <#list teachers as teacher>
										 <#if leftindex % 2 ==0>
										 <div class="row-fluid" >
										 </#if>
												<div class="span3" >
												       <div class="pod__content" style="margin:0px 0px 0px 20px;"> 
															<a href="personalPage.do?userid=${teacher.userid}"> 
																<#if teacher.photourl??>
														        <img height="209"  src="system/${teacher.photourl}"/>
															    <#else>
															     <img height="209"  src="assets/images/person3.jpg"/>
															     </#if>
													   	     </a>
														     <a herf="personalPage.do?userid=${teacher.userid}"  class="pod__action-btn" >More</a>
														</div>  
												</div>
												<div class="span3" >
													<table border='0' class="table">
													    <tr>
														<#if teacher.username??>
												        <h3><td>${teacher.username}</td> </h3> 
												        </#if>
												         </tr>
												         <tr>
												        <#if teacher.education??>
												          <nobr><td> ${teacher.education}</td></nobr>
												        </#if>
												        </tr>
												         <tr>
												        <#if teacher.email??>
												          <nobr><td> ${teacher.email}</td></nobr>
												        </#if>
												        </tr>
												       </table>
												</div>
				                        <#if rightindex % 2 ==0>
											  </div>
											  <br/>
											</#if>
											 <#assign leftindex = leftindex+1>
											 <#assign rightindex = rightindex+1>
				                         </#list>
				                   </#if>	
				                    </ul>
				                   </div>
								</div>		
			                  <!-- end content -->
			                  <br>
			                  <!-- content -->
			                  <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
										  <a id="master" href="student.do?education=master" >
								          <strong>
								            <font color="#b38808"> 硕士 MORE </font>
								          </strong>
								         </a>
								        </h2>
								        <ul class="news-events-feed__content">
								        <#assign leftindex =2>
						                <#assign rightindex =1>
			                      <#if masters? exists>
									 <#list masters as master>
										<#if leftindex % 2 ==0>
										 <div class="row-fluid" >
										 </#if>
												<div class="span3" >
												     <div class="pod__content" style="margin:0px 0px 0px 20px;"> 
															<a href="personalPage.do?userid=${master.userid}"> 
																<#if master.photourl??>
														        <img height="209"  src="system/${master.photourl}"/>
															    <#else>
															     <img height="209"  src="assets/images/person3.jpg"/>
															     </#if>
													   	     </a>
														     <a href="personalPage.do?userid=${master.userid}"  class="pod__action-btn" >More</a>
														</div>  
												</div>
												<div class="span3" >
													<table border='0' class="table">
													    <tr>
														<#if master.username??>
												        <h3><td>${master.username}</td> </h3> 
												        </#if>
												         </tr>
												         <tr>
												        <#if master.education??>
												          <nobr><td> ${master.education}</td></nobr>
												        </#if>
												        </tr>
												         <tr>
												        <#if master.email??>
												          <nobr><td> ${master.email}</td></nobr>
												        </#if>
												        </tr>
												       </table>
												</div>
											 <#if rightindex % 2 ==0>
											  </div>
											  <br/>
											</#if>
											 <#assign leftindex = leftindex+1>
											 <#assign rightindex = rightindex+1>
				                         </#list>
				                   </#if>	
				                    </ul>
				                   </div>
								</div>		
			                  <!-- end content -->
				                      <br>         
				               <!-- content -->
				               <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
								         <a id="undergraduate" href="student.do?education=undergraduate">
								          <strong>
								            <font color="#b38808"> 本科 MORE</font>
								          </strong>
								         </a>
								        </h2>
								        <ul class="news-events-feed__content">
								         <#assign leftindex =2>
						                <#assign rightindex =1>
			                      <#if undergratuates? exists>
									 <#list undergratuates as undergratuate>
										<#if leftindex % 2 ==0>
										 <div class="row-fluid" >
										 </#if>
												<div class="span3" >
													  <div class="pod__content" style="margin:0px 0px 0px 20px;"> 
														<a href="personalPage.do?userid=${undergratuate.userid}"> 
															<#if undergratuate.photourl??>
													        <img height="209"  src="system/${undergratuate.photourl}"/>
														    <#else>
														     <img height="209"  src="assets/images/person3.jpg"/>
														     </#if>
												   	     </a>
													     <a href="personalPage.do?userid=${undergratuate.userid}"  class="pod__action-btn" >More</a>
													</div>  
												</div>
												<div class="span3" >
													<table border='0' class="table">
													    <tr>
														<#if undergratuate.username??>
												        <h3><td>${undergratuate.username}</td> </h3> 
												        </#if>
												         </tr>
												         <tr>
												        <#if undergratuate.education??>
												          <nobr><td> ${undergratuate.education}</td></nobr>
												        </#if>
												        </tr>
												         <tr>
												        <#if undergratuate.email??>
												          <nobr><td> ${undergratuate.email}</td></nobr>
												        </#if>
												        </tr>
												       </table>
												</div>
											</div>
											 <#if rightindex % 2 ==0>
											  </div>
											  <br/>
											</#if>
											 <#assign leftindex = leftindex+1>
											 <#assign rightindex = rightindex+1>
									 </#list>
				                   </#if>		
				                    </ul>
				                   </div>
								</div>	
			                  <!-- end content -->
			                  <br/>
			                   <!--content  往届毕业生-->
			                   <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
								         <a id="dutyUser" href="dutyUser.do">
								          <strong>
								            <font color="#b38808"> 往届毕业生 MORE</font>
								          </strong>
								         </a>
								        </h2>
								        <ul class="news-events-feed__content">
									
										<div class="row" align="center">
										          <table  class="table " >
												    <thead>
												        <th>编号</th>
												        <th>姓名</th>
												        <th>学历</th>
												        <th>入学时间</th>
												        <th>毕业去向</th>
												        <th>邮箱</th>
											
												    </thead>
												    <tbody>
													   <#if isdutypeoples?exists>
														    <#list isdutypeoples as isdutypeople>
														    <tr>
														        <td>${(isdutypeople_index)+1}</td>
														        <td align="center">${isdutypeople.username}</td>
														        
														        <#if isdutypeople.education??>
														        <td>${isdutypeople.education}</td>
														        <#else>
														        <td></td>
														        </#if>
														         
														          <#if isdutypeople.ondutydate??>
														        <td>${isdutypeople.ondutydate?string('yyyy')}级</td>
														        <#else>
														        <td></td>
														        </#if>
														        
														        <#if isdutypeople.companyname??>
															        <td>${isdutypeople.companyname}</td>
															        <#else>
															        <td></td>
														        </#if>
														        <#if isdutypeople.email??>
															        <td>${isdutypeople.email}</td>
															        <#else>
															        <td></td>
														        </#if>
														    </tr>
														    </#list>
													   </#if>
												    </tbody>
												</table>
										  </div>
									  </div>
			                     </ul>
				               </div>
							</div>	
			                  <!--end content -->
			                  
			                  
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
