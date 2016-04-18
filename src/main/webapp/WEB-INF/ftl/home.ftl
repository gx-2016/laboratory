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
								href="https://blogs.adelaide.edu.au/eucentre/2016/03/11/shakespeare/"
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
												title="阅读更多新闻">最新校内新闻</a> <a
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
														<div class="news-events-feed__excerpt">
															<strong>${news.newstitle}</strong> <br>${news.newstitle}
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
												title="更多">校外连接</a> <a
												href="http://www.adelaide.edu.au/events/"
												title="更多"
												class="news-events-feed__title-more-link"><span
												class="btn-icon"></span>更多...</a>
										</h2>
										<#if newsList?exists>
										<#list newsList as news>
											<ul class="news-events-feed__content">
												<li class="news-events-feed__content__item"><a
													href="http://www.adelaide.edu.au/news/news84042.html"
													title="Read More About New models predicting where to find fossils">
														<div class="news-events-feed__date">
															<span class="news-events-feed__date__day-abbr"><strong>${news.newstime?string("EEE")}</strong></span>
															<span class="news-events-feed__date__day"><strong>${news.newstime?string("dd")}</strong></span>
															<span class="news-events-feed__date__month--blue">${news.newstime?string("MMM")}</span>
														</div>
														<div class="news-events-feed__excerpt">
															<strong>${news.newstitle}</strong> <br>${news.newstitle}
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

					<div class="row-fluid">

						<!-- New social markup -->
						<div id="socialmedia-bar" class="socialmedia-bar">
							<div class="socialmedia-bar__wrapper">
								<ul class="socialmedia-bar__list">
									<li class="socialmedia-bar__item"><a
										href="//instagram.com/uniofadelaide"
										title="See our snaps on Instagram"
										class="btn-icon btn-icon__instagram">Instagram</a></li>
									<li class="socialmedia-bar__item"><a
										href="//www.facebook.com/uniofadelaide"
										title="Friend us on Facebook"
										class="btn-icon btn-icon__facebook">Facebook</a></li>
									<li class="socialmedia-bar__item"><a
										href="//twitter.com/uniofadelaide"
										title="Follow us on Twitter"
										class="btn-icon btn-icon__twitter">Twitter</a></li>
									<li class="socialmedia-bar__item"><a
										href="//www.linkedin.com/edu/school?id=10217"
										title="Connect with us on LinkedIn"
										class="btn-icon btn-icon__linkedin">LinkedIn</a></li>
									<li class="socialmedia-bar__item"><a
										href="//www.youtube.com/user/universityofadelaide"
										title="Watch us on Youtube" class="btn-icon btn-icon__youtube">Youtube</a></li>
									<li class="socialmedia-bar__item"><a
										href="//plus.google.com/109424345116380358719/posts"
										title="See us on Google+" class="btn-icon btn-icon__gplus">Google+</a></li>
									<li class="socialmedia-bar__item"><a href="/rss/"
										title="Subscribe to our News &amp; Events RSS"
										class="btn-icon btn-icon__rss">RSS</a></li>
									<li class="socialmedia-bar__item"><a
										href="//blogs.adelaide.edu.au/" title="Read our Blogs"
										class="btn-icon btn-icon__blogs">Blogs</a></li>
								</ul>
								<div class="fb-like" id="facebook-like-page"
									data-href="http://www.adelaide.edu.au/" data-send="false"
									data-width="490" data-show-faces="false"
									data-action="recommend" data-font="arial"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- /rowWhite -->
			</div>
		</div>
	</section>

	<#include "frame/footer1.ftl">

</body>
</html>
