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
                   
                   <!-- 中间内容 -->
					<div class="o-layout-container">
					 <!--左边菜单-->
						<div id="secondary_menu" class="o-layout-main-nav">
							<div class="region region-secondary-menu">
								<nav class="c-sitenav js-sitenav" aria-label="Site Menu" role="navigation">
									<ul class="c-sitenav__level-1">
									    <li class="c-sitenav__item c-sitenav__current c-sitenav__active"><a href="/iacn/teacher.do"
											class="c-sitenav__item-link">老师</a></li>
										<!--
										<li class="c-sitenav__item ">
										<a href="/iacn/student/doctor.do" class="c-sitenav__item-link">博士</a>
										</li>
										-->
										<li class="c-sitenav__item "><a href="/iacn/student/master.do"
											class="c-sitenav__item-link">硕士</a></li>
											<li
											class="c-sitenav__item ">
											<a href="/iacn/student/undergraduate.do" class="c-sitenav__item-link">本科</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
						<!--end 左边菜单-->
                        
						<article id="main-content" class="o-layout-main-article">
							<div class="region region-content">
								<!-- content -->
			                      <#if teachers? exists>
									 <#list teachers as teacher>
										 <div class="row-fluid" >
												<div class="span4" >
														<#if teacher.photourl??>
												        <img height="209"  src="system/${teacher.photourl}"/>
													    <#else>
													     <img height="209"  src="assets/images/person3.jpg"/>
													     </#if>
												</div>
												<div class="span2" >
												</div>
												<div class="span4" >
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
												       </table>
												</div>
											</div>
										    <br/>
                                            <hr/>
                                             <!--每个栏目锚点-->
                                             <div class="row-fluid" >
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
				                             
			                                 <!--数据项对应个人主页表中具体字段的内容-->
											    <#if teacherPersonpageMap? exists>
									              <#list teacherPersonpageMap?keys as userid>
										              <#if (userid == teacher.userid?string) >
										                 <#list teacherPersonpageMap[userid]?keys as ddlname>
												               <!--每个栏目锚点 对应数据字典中的     数据项名称-->
													           <p><a name="${ddlname}"></a><h3>${ddlname}</h3> </p>
														       <font face="Times New Roman" size="4">
														       <div class="row-fluid">
														         ${(teacherPersonpageMap[userid])[ddlname]}
														       </div>
														       </font>
														       <hr/>
													      </#list>
											          </#if>
										          </#list>
			                                   </#if>		
				                              <!--end 数据项对应个人主页表中具体字段的内容-->
				                             	
									 </#list>
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
