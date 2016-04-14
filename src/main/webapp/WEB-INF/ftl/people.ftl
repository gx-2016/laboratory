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
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='http://fonts.useso.com/css?family=Source+Sans+Pro:400,300,600,400italic,700'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="assets/css/icomoon.css">
<!-- Simple Line Icons -->
<link rel="stylesheet" href="assets/css/simple-line-icons.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="assets/css/components.css">

</head>

<body>
	<#include "frame/head1.ftl">

	<section>
		<div class="container rowWhite">
			<div class="span12">
				<div align="center">
					<div class="row">
						<div>
							<h3>成员信息</h3>
						</div>
					</div>
				</div>
			</div>
			
			<div>
			<#assign leftindex =4>
						<#assign rightindex =1>
						<#if peoples? exists>
						 <#list peoples as people>
							 <#if leftindex % 4 ==0>
							 <div class="row-fluid" >
							 </#if>
									<div class="span3">
										<div>
											<figure>
											    <#if people.photourl??>
												<img src="system/${people.photourl}" alt="Image" style="width:200px;height:200px;">
												<#else>
												<img src="system/default.jpg" alt="Image" style="width:200px;height:200px;">
												</#if>
											</figure>
											<#if people.personpage??>
											<a href="${people.personpage}">
									        <h3 align="center"><b>${people.username}</b></h3>
									        </a>
									        </#if>
											<#if people.email??>
											<h4 align="center">${people.email}</h4>
											</#if>
										</div>
									</div>
									
									<#if rightindex % 4 ==0>
										 </div>
									</#if>
									 <#assign leftindex = leftindex+1>
									 <#assign rightindex = rightindex+1>
								 </#list>
			                     </#if>		
			        </div>
			<div>
			<hr>
			<div align="center">
					<div class="row">
						<div>
							<h3>毕业生信息</h3>
						</div>
					</div>
				</div>
				<div class="row" align="center">
				          <table  class="table " >
						    <thead>
						        <th>编号</th>
						        <th>姓名</th>
						        <th>学历</th>
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
		</div>
	</section>

	<!-- jQuery -->
	<script src="assets/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="assets/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="assets/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="assets/js/jquery.stellar.min.js"></script>
	<!-- Counter -->
	<script src="assets/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/magnific-popup-options.js"></script>


	<!-- Main JS (Do not remove) -->
	<script src="assets/js/main.js"></script>
	<br>
	<br> <#include "frame/footer1.ftl">

</body>
</html>