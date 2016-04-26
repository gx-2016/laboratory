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
						<div id="secondary_menu" class="o-layout-main-nav">
							<div class="region region-secondary-menu">
								<nav class="c-sitenav js-sitenav" aria-label="Site Menu"
									role="navigation">
									<div class="c-sitenav__item c-sitenav__toggle">
										<a href="#block-sitemenu-menu" class="c-sitenav__item-link">
											<i class="ua-icon-menu"></i> Site Menu
										</a>
									</div>

									<ul class="c-sitenav__level-1">
										<#list teacherList as teacher>
											<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
												<a href="learn.do?teacherID=${teacher.userid}"class="c-sitenav__item-link " >${teacher.username}</a><br>
											</li>
										</#list>
											
										
										
									</ul>
								</nav>

							</div>
						</div>

						<article id="main-content" class="o-layout-main-article" >
							<div class="region region-content">
								<!-- content -->
								<div id="block-ua-theme-content"
									class="block block-system block-system-main-block">
									<article role="article" class="contextual-region node node--type-ua-page node--promoted node--view-mode-full" 
									    about="/about/node/1">
										<div data-contextual-id="node:node=3:changed=1461039976&amp;langcode=en"></div>
										<h1>课程</h1>
										<div class="post" id="progect">
											<#if teachList?exists>
											<#list teachList as teach>
											
						 						<h6 class="title"><strong>Title：</Strong>${teach.coursename}</h6>
												<p class="byline"><small>Posted on&nbsp; &nbsp;by&nbsp;<a href="#"></a> | <a href="#">DONWORDLOAD</a></small></p>
												<#--><div class="entry">
													<p><strong>abstract:</strong></p>
													<p>${writings.writingsabstract} </p>
												</div>
												<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p><-->
											
											</#list>
											</#if>
											</div>
											
											<#-->
											<h1>专利</h1>
											<div class="post">
											<#if writingsList?exists>
											<#list writingsList as writings>
											<#if writings.writingstype=="3">
						 						<h6 class="title"><strong>Title：</Strong>${writings.writingsname}</h6>
												<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">DONWORDLOAD</a></small></p>
												<div class="entry">
													<p><strong>abstract:</strong></p>
													<p>${writings.writingsabstract} </p>
												</div>
												<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p>
											</#if>
											</#list>
											</#if>
											</div>
											<-->

									</article>

								</div>
									<!-- content结束 -->

							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>

	<#include "frame/footer1.ftl">
</body>
</html>
