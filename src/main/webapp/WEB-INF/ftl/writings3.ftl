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
	
	function locationPatent(flag){
		if(flag==0)
			window.location.hash="#progect";
		else if(flag==1)
			window.location.hash="#pape";
		else if(flag==2)
			window.location.hash="#patent";
	}
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
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<button  class="c-sitenav__item-link " onclick="locationPatent(0)" >科研项目</button></li>
									</ul>
									<ul class="c-sitenav__level-1">
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<button  class="c-sitenav__item-link " onclick="locationPatent(1)" >科研论文</button></li>
										
										
									</ul>
									<ul class="c-sitenav__level-1">
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<button  class="c-sitenav__item-link " onclick="locationPatent(2)" >科研专利</button></li>
										
										
									</ul>
								</nav>

							</div>
						</div>

						<article id="main-content" class="o-layout-main-article" >
							<div class="region region-content">
								
								<!-- title 
								<div id="block-ua-theme-page-title"
									class="contextual-region block block-core block-page-title-block">
									<div
										data-contextual-id="block:block=ua_theme_page_title:langcode=en"></div>
									<h3 class="page-title">
										<span
											class="field field--name-title field--type-string field--label-hidden">
											ACM 校队历年比赛信息 </span>
									</h3>
								</div>
								-->
								
								<!-- content -->
								<div id="block-ua-theme-content"
									class="block block-system block-system-main-block">
									<article role="article" class="contextual-region node node--type-ua-page node--promoted node--view-mode-full" 
									    about="/about/node/1">
										<div data-contextual-id="node:node=3:changed=1461039976&amp;langcode=en"></div>
										
										<div class="post" id="progect">
										<h5 class="title">项目</h5>
											<#if writingsList?exists>
											<#list writingsList as writings>
											<#if writings.writingstype=="1">
						 						<h7 class="title"><strong>Title：${writings.writingsname}</Strong></h7>
												<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">DONWORDLOAD</a></small></p>
												<#--><div class="entry">
													<p><strong>abstract:</strong></p>
													<p>${writings.writingsabstract} </p>
												</div>
												<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p><-->
											</#if>
											</#list>
											</#if>
											</div>
											
											<div class="post" id="pape">
											<h5 class="title">论文</h5>
											<#if writingsList?exists>
											<#list writingsList as writings>
											<#if writings.writingstype=="2">
						 						<h7 class="title"><strong>Title：${writings.writingsname}</Strong></h7>
												<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">DONWORDLOAD</a></small></p>
												<#--><div class="entry">
													<p><strong>abstract:</strong></p>
													<p>${writings.writingsabstract} </p>
												</div>
												<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p><-->
											</#if>
											</#list>
											</#if>
											</div>
											
											<div class="post" id="patent">
											<h5 class="title">专利</h5>
											<#if writingsList?exists>
											<#list writingsList as writings>
											<#if writings.writingstype=="3">
						 						<h7 class="title"><strong>Title：${writings.writingsname}<strong></h7>
												<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">DONWORDLOAD</a></small></p>
												<#--><div class="entry">
													<p><strong>abstract:</strong></p>
													<p>${writings.writingsabstract} </p>
												</div>
												<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p><-->
											</#if>
											</#list>
											</#if>
											</div>

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
