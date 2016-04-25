<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Accomplishable
Description: A two-column, fixed-width design.
Version    : 1.0
Released   : 20090731

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
	var uoa_data = {
		ga_id : 'UA-7185376-1',
		ga_domain : '.nupt.edu.cn',
		tms : false,
		global : '/global/v/response1/',
		english_accept : false
	};
	
	$(function(){
		$(".subNav").click(function(){
			$(this).toggleClass("currentDd").siblings(".subNav").removeClass("currentDd")
			$(this).toggleClass("currentDt").siblings(".subNav").removeClass("currentDt")
			
			// 修改数字控制速度， slideUp(500)控制卷起速度
			$(this).next(".navContent").slideToggle(300).siblings(".navContent").slideUp(300);
	})	
})
</script>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Accomplishable by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="assets/css/writtingsStyle.css" rel="stylesheet" type="text/css" media="screen" />
<script src="assets/js/writingsLeft.js"></script>
<link href="assets/css/writingsLeft.css" type="text/css" rel="stylesheet">
<!-- Le styles -->
<link href="Css/jquery-ui-1.8.13.uoa.css" media="all" rel="stylesheet">
<link href="Css/df-autocomplete.css" media="all" rel="stylesheet">
<link href="Css/styles.min.css" media="screen" rel="stylesheet">
<!-- <link href="Css/print.min.css" media="print" rel="stylesheet" /> -->

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

<!-- start header -->

	<#include "frame/head1.ftl">

<!-- end header -->
<!-- start page -->

	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<!-- start content -->
				<div id="content">
					<div class="post" id="progect">
					<#if writingsList?exists>
					<#list writingsList as writings>
					<#if writings.writingstype=="1">
 						<h4 class="title"><strong></Strong>${writings.writingsname}</h4>
						<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">Edit</a></small></p>
						<#--><div class="entry">
							<p><strong>abstract:</strong></p>
							<p>${writings.writingsabstract} </p>
						</div><-->
						<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p>
					</#if>
					</#list>
					</#if>
					</div>
					<div class="post">
					<#if writingsList?exists>
					<#list writingsList as writings>
					<#if writings.writingstype=="2">
 						<h4 class="title"><strong></Strong>${writings.writingsname}</h4>
						<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">Edit</a></small></p>
						<#--><div class="entry">
							<p><strong>abstract:</strong></p>
							<p>${writings.writingsabstract} </p>
						</div><-->
						<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p>
					</#if>
					</#list>
					</#if>
					</div>
					<div class="post">
					<#if writingsList?exists>
					<#list writingsList as writings>
					<#if writings.writingstype=="3">
 						<h2 class="title"><strong></Strong>${writings.writingsname}</h2>
						<p class="byline"><small>Posted on&nbsp; ${writings.writingstime?string("yyyy-MM")}&nbsp;by&nbsp;<a href="#">${writings.writingspeople}</a> | <a href="#">Edit</a></small></p>
						<#--><div class="entry">
							<p><strong>abstract:</strong></p>
							<p>${writings.writingsabstract} </p>
						</div><-->
						<p class="meta"><a href="#" class="more">DONWORDLOAD</a></p>
					</#if>
					</#list>
					</#if>
					</div>
				</div>
				<!-- end content -->
				<!-- start sidebar -->
				<div id="sidebar">
					<li>
						<h2><a href="#">按年份</a></h2>
					<ul>
						<li>
						<#list yearlist as year>
							<a href="#">${year}</a>			
						</#list>					
						</li>
					</ul>
					<li>
				</div>
				<!-- end sidebar -->
				<div style="clear:both">&nbsp;</div>
			</div>
		</div>
	</div>

	<#include "frame/footer1.ftl">

</body>
</html>
