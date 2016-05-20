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
								 <div class="span12">
				<div align="center">
					<div class="row">
						<div>
							<h3>往届毕业生</h3>
						</div>
					</div>
				</div>
			</div>
			
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
