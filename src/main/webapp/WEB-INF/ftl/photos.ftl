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


</head>

<body>

	<#include "frame/head1.ftl">
	<!--page content-->

	<section id="fh5co-work" class="new-home">
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
					                      <a href="photos.do">生活</a>
					              </li>
					              <li class="c-site-breadcrumb__list-item">
					              </li>
					        </ol>
						  </nav>
					  </div>
					  <br>
					<div class="addPad">
						<!-- News and Events feeds -->
						
						<#assign leftindex =3> 
						<#assign rightindex =1> 
						<#if photos?exists> 
								<#list photos as photo> 
									<#if (photo_index + 1 <= 6 )>
											<#if leftindex % 3 ==0>
											<div class="row-fluid">
											</#if>
											<div class="span4" style="padding: 4px 8px; width: 350px;"
												style="float:left">
												<!--  <a href="photo/${photo.picurl}" >-->
												<img src="photo/${photo.picurl}"
													style="width: 450px; height: 250px;" alt="Image">
												<h3>${photo.picname}</h3>
												<!--   </a> -->
											</div>
											<#if rightindex % 3 ==0>
											  </div>
											</#if> 
									<#else>	
									<!--6个以后图片隐藏区域-->
									<!--如果遍历到第七张，则显示加载更多button-->	
									    <#if (photo_index + 1 == 7 )>
										<div id='divContent' style='display: none'>
										</#if> 
									<!-- end 如果遍历到第七张，则显示加载更多button-->		
										    <!--加载剩下的图片-->
										    <#if leftindex % 3 ==0>
											<div class="row-fluid">
											</#if>
											<div class="span4" style="padding: 4px 8px; width: 350px;"
												style="float:left">
												<!--  <a href="photo/${photo.picurl}" >-->
												<img src="photo/${photo.picurl}"
													style="width: 450px; height: 250px;" alt="Image">
												<h3>${photo.picname}</h3>
												<!--   </a> -->
											</div>
											<#if rightindex % 3 ==0>
											  </div>
											</#if> 
                                          <!--end 加载剩下的图片-->
										<#if (photo_index + 1 == (photos?size) )>
										 </div>
										</#if>
									   <!--end  6个以后图片隐藏区域-->	
									</#if>	
								<#assign leftindex = leftindex+1> 
								<#assign rightindex =rightindex+1> 
								</#list> 
						</#if>
					</div>
					<!-- addPad -->
					<hr>
					<div align="center">
			         <input type='button'value='加载更多' id='divContentt' class="degreefinder__btn-red" 	onclick='ShowOrHide();' />
			         </div>
			         <br>
				</div>
				<!-- /rowWhite -->
			</div>
		</div>
	</section>
	<br>


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

	<script type='text/javascript'>
		var ShowOrHide = function() {
			var divContent = document.getElementById('divContent');
			var divContentt = document.getElementById('divContentt');
			if (divContent.style.display == 'none') {
				divContent.style.display = 'block';
				divContentt.style.display = 'none';
			} else {
				divContent.style.display = 'none';
			}
		}
	</script>


	<#include "frame/footer1.ftl">
</body>
</html>
