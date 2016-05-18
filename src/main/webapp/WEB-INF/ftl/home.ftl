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

	<section class="new-home">
		<div id="page-container" class="container">
			<div class="row-fluid">
				<div class="span12 rowWhite">

					<!-- SlidesJS Required: Start Slides -->
					<!-- The container is used to define the width of the slideshow -->
					<div class="container">
						<div id="slides" class="slidesjs">
						<#if spotlights??>
						<#list spotlights as spotlight>
							<a
								href="#"
								<#if spotlight.spotlightname?? >
								 title="${spotlight.spotlightname}"
								</#if>
								onClick="ga('send', 'event', 'Homepage', 'Banner', 'Building Appeal');"><img
								<#if spotlight.spotlightpicurl?? >
								src="spotlight\${spotlight.spotlightpicurl}"
								</#if>
								<#if spotlight.spotlightname?? >
								alt="${spotlight.spotlightname}"></a>
								</#if>
						</#list>
						</#if>	
						</div>
					</div>
					<!-- End SlidesJS Required: Start Slides -->
					<div class="addPad">
						<!-- News and Events feeds -->
						<div class="row-fluid">
							<div class="span6">
								<div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
											<a href="news.do"
												title="阅读更多新闻"><strong>最新新闻</strong></a> <a
												href="news.do"
												title="阅读更多新闻"
												class="news-events-feed__title-more-link"><span
												class="btn-icon"></span>更多...</a>
										</h2>
										<#if newsList?exists>
										<#list newsList as news>
											<ul class="news-events-feed__content">
												<li class="news-events-feed__content__item"><a
													href="newsDetails.do?id=${news.newsid}"
													title="Read More About New models predicting where to find fossils">
														<div class="news-events-feed__date">
															<span class="news-events-feed__date__day-abbr"><strong>${news.newstime?string("EEE")}</strong></span>
															<span class="news-events-feed__date__day"><strong>${news.newstime?string("dd")}</strong></span>
															<span class="news-events-feed__date__month--blue">${news.newstime?string("MMM")}</span>
														</div>
														<div class="news-events-feed__excerpt" style="height:80px;overflow-y:hidden;overflow-x:hidden;">
															<strong>${news.newstitle}</strong> <br>${news.newsabstract?default("")}
														</div>
												</a></li>
											</ul>
										</#list>
										</#if>
									</div>
								</div>
							</div>
							<div class="span6">
								<div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
											<a href="http://www.adelaide.edu.au/events/"
												title="更多"><strong>通知公告</strong></a> <a
												href="#"
												title="更多"
												class="news-events-feed__title-more-link"><span
												class="btn-icon"></span>更多...</a>
										</h2>
										<#if informList?exists>
										<#list informList as inform>
											<ul class="news-events-feed__content">
												<li class="news-events-feed__content__item"><a
													href="newsDetails.do?id=${inform.newsid}"
													title="Read More About New models predicting where to find fossils">
														<div class="news-events-feed__date">
															<span class="news-events-feed__date__day-abbr"><strong>${inform.newstime?string("EEE")}</strong></span>
															<span class="news-events-feed__date__day"><strong>${inform.newstime?string("dd")}</strong></span>
															<span class="news-events-feed__date__month--red">${inform.newstime?string("MMM")}</span>
														</div>
														<div class="news-events-feed__excerpt" style="height:80px;overflow:auto;overflow-x:hidden;">
															<strong>${inform.newstitle}</strong> <br>${inform.newsabstract?default("")}
														</div>
												</a></li>
											</ul>
										</#list>
										</#if>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- addPad -->
                    <!--图片-->
                  
		                  <div class="row-fluid mbl">
								<!-- new markup pod -->
								<div class="span6 home-pod mln__ie7" >
									<div class="pod" >
										<div class="pod__title" >
											<h2 align="center" >
											    <a href="teacher.do" title="科研著作">
													<strong><font color="#b38808">成员管理</font></strong></a>
													
											</h2>
										</div>
										<div class="pod__content" style="margin:0px 0px 0px 20px;"> 
											<a href="teacher.do"> <img
												src="assets/images/img_7.jpg"></a>
												<a href="teacher.do"  class="pod__action-btn" >More</a>
										</div>
									</div>
								</div>
									<!-- new markup pod -->
								<div class="span3 home-pod ">
									<div class="pod">
										<div class="pod__title">
											<h2 align="center">
												<a href="writtings.do" title="科研著作">
													<strong><font color="#b38808">科研著作</font></strong></a>
											</h2>
										</div>
										<div class="pod__content">
											<a href="writtings.do"> <img
												src="assets/images/img_10.jpg"></a>
												<a href="writtings.do"  class="pod__action-btn" >More</a>
										</div>
									</div>
								</div>
									<!-- new markup pod -->
								<div class="span3 home-pod ">
									<div class="pod">
										<div class="pod__title">
											<h2 align="center">
												<a href="learn.do" title="教学辅导">
													<strong><font color="#b38808">教学辅导</font></strong></a>
											</h2>
										</div>
										<div class="pod__content" style="margin:0px 10px 0px 0px;">
											<a href="learn.do"> <img
												src="assets/images/work_1.jpg"></a>
												<a href="learn.do"  class="pod__action-btn" >More</a>
										</div>
									</div>
								</div>
									<!-- new markup pod -->
								<div class="span3 home-pod ">
									<div class="pod">
										<div class="pod__title">
											<h2 align="center">
												<a href="contest.do" title="ACM竞赛">
													<strong><font color="#b38808">ACM竞赛</font></strong></a>
											</h2>
										</div>
										<div class="pod__content">
											<a href="contest.do"> <img
												src="assets/images/work_8.jpg"></a>
												<a href="contest.do"  class="pod__action-btn" >More</a>
										</div>
									</div>
								</div>
								
									<!-- new markup pod -->
								<div class="span3 home-pod">
									<div class="pod">
										<div class="pod__title">
											<h2 align="center">
												<a href="photos.do" title="生活影集">
													<strong><font color="#b38808">生活影集</font></strong></a>
											</h2>
										</div>
										<div class="pod__content" style="margin:0px 10px 0px 0px;">
											<a href="photos.do"> <img
												src="assets/images/work_2.jpg"></a>
												<a href="photos.do"  class="pod__action-btn" >More</a>
										</div>
									</div>
								</div>
								
					                  
		                   </div>
                  
                 <!--图片-->
						
				</div>
				<!-- /rowWhite -->
				
			</div>
		</div>
	</section>

	<#include "frame/footer1.ftl">

</body>
</html>



  
                   
