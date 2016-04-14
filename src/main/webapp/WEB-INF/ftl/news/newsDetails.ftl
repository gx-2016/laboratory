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
<!-- <link href="../Css/print.min.css" media="print" rel="stylesheet" /> -->

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

	<#include "../frame/head1.ftl">
	<!--page content-->
	<section class="new-home">
		<div id="page-container" class="container">
			<div class="row-fluid">
				<div class="span12 rowWhite">

					<div class="addPad">
						<!-- News and Events feeds -->
						<div  class="row-fluid">
							<div class="span10">
							   <div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
											<a href="http://www.adelaide.edu.au/events/"
												title="Read more What's On">校内</a> <a
												href="http://www.adelaide.edu.au/events/"
												title="Read More What's On"
												class="news-events-feed__title-more-link"><span
												class="btn-icon"></span>More</a>
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
															<strong>${news.newstitle}</strong> <br>${news.newscontent}
														</div>
												</a></li>
											</ul>
										</#list>
										</#if>
									</div>
								</div>
							</div>
							<!--
							<div class="span6">
								<div class="news-events-feed">
									<div class="news-events-feed__wrapper">
										<h2 class="news-events-feed__title">
											<a href="http://www.adelaide.edu.au/events/"
												title="Read more What's On">行业</a> <a
												href="http://www.adelaide.edu.au/events/"
												title="Read More What's On"
												class="news-events-feed__title-more-link"><span
												class="btn-icon"></span>More</a>
										</h2>
									</div>
								</div>
							</div>
							-->
						</div>
					</div>
					<!-- addPad -->

				</div>
				<!-- /rowWhite -->
			</div>
		</div>
	</section>

	<#include "../frame/footer1.ftl">
</body>
</html>
