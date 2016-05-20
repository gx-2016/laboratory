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
					                   <a href="contest.do?contestType=校外"> 竞赛</a>
					            </li>
					            <li class="c-site-breadcrumb__list-item">
					                                   <span class="label label-success">    获奖比赛</span>
					            </li>
					        </ol>
						  </nav>
					  </div>
				  </div>
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
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active"><a href="contest.do?contestType=校外"
											class="c-sitenav__item-link " >ACM　比赛获奖</a></li><br/>
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active"><a href="contestTeam.do"
											class="c-sitenav__item-link " >ACM　队伍介绍</a></li><br/>
										<li class="c-sitenav__item c-sitenav__current c-sitenav__active"><a href="#"
											class="c-sitenav__item-link " >ACM　介绍</a></li><br/>
									    <li class="c-sitenav__item c-sitenav__current c-sitenav__active">
											<a href="http://acm.njupt.edu.cn" target="_blank" class="c-sitenav__item-link">南邮NOJ平台</a>
										</li>
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
										<!-- node__content -->
										<div class="node__content">
											<div
												class="field field--name-field-ua-page-content field--type-entity-reference-revisions field--label-hidden field__items">
												<div class="field__item">
													<div
														class="paragraph paragraph--type--text paragraph--view-mode--default">
														<div
															class="clearfix text-formatted field field--name-field-text field--type-text-long field--label-hidden field__item">
                                                              <!--time控制输出年份-->
                                                               <#assign time ="">
                                                                <#if contestList??>
                                                                   <#list contestList as contest>
	                                                                      <#if (contest.contesttime?string('yyyy-MM-dd') != time)>
	                                                                      <div class="news-events-feed">
																				<div class="news-events-feed__wrapper">
																					<h2 class="news-events-feed__title">
																			          <a id="teacher" href="teacher.do" > 
																			           <strong>
																			            <font color="#b38808">
																			              DATE&nbsp;&nbsp;&nbsp;&nbsp; ${contest.contesttime?string('yyyy-MM-dd')}
																			            </font>
																			          </strong>
																			          </a>
																			        </h2>
	                                                                      </#if>
	                                                                      <!--一个比赛信息-->
	                                                                       <ul class="news-events-feed__content">
																			<div class="row-fluid">
																		            <div class="span5">
																		              <p class="text-success"><font size="+2"><img style="width:12%" src="Images/golden.png"> <strong>${contest.contestTeamName}</strong></font></p>
																		            </div>
																		            <div class="span7 media-text-right">
																		              <div class="row" ><div class=" alert alert-info media-pull-right width-full" style="width:auto;margin-bottom:5px;float: right;"> ${contest.contestdestination} @ ${contest.contesttime?string('yyyy-MM')}</div></div>
																		              <#if contest.contestAward??>
																		              <div class="row" align="right"><div style="display:inline-block;margin-bottom:10px;" class="alert alert-warning"><strong>${contest.contestAward}</strong></div> 
																		              <#else>
																		              <div class="row" align="right"><div style="display:inline-block;margin-bottom:10px;" class="alert alert-warning"><strong>未知</strong></div> 
																		              </#if>
																		              <#if contest.contestRank??>
																		              <div style="display:inline-block;margin-bottom:10px;" class="alert alert-success"><strong>${contest.contestRank}</strong></div></div>
																		              <#else>
																		              <div style="display:inline-block;margin-bottom:10px;" class="alert alert-success"><strong>未知</strong></div></div>
																		              </#if>
																		            </div>
																	         </div>
																	           <br/>
																	        <!--队员信息-->
																	      <div class="row-fluid">
	                                                                      <#list contest.userTeams as userTeam>
																	           <#if (userTeam.remark == 'leader')>
																	          	<div class="span${contest.size}">
																	          	  <p><span class="label label-warning">${userTeam.remark}</span> 
																	          	      <#if (userTeam.sexid == '0')>
																	          	      <span class="label label-success">♂</span> 
																	          	     <#else>
																	          	     <span class="label label-success">♀</span> 
																	          	      </#if>
																	          	      <a href="personalPage.do?userid=${userTeam.userid}" data-toggle="personmodal" data-uid="108">${userTeam.username}</a></p>
																	          	</div>
																	          	<#else>
																	          	 <div class="span${contest.size}">
																	          	  <p><span class="label label-info">${userTeam.remark}</span> 
																	          	    <#if (userTeam.sexid == '0')>
																	          	      <span class="label label-success">♂</span> 
																	          	     <#else>
																	          	     <span class="label label-success">♀</span> 
																	          	      </#if>
																	          	   <a href="personalPage.do?userid=${userTeam.userid}" data-toggle="personmodal" data-uid="89">${userTeam.username}</a></p>
																	          	 </div>
																	           </#if>
	                                                                      </#list>
	                                                                       </div>
	                                                                       <!--图片信息-->
	                                                                        <div class="row-fluid">
	                                                                        <#if contest.contestResource?? >
		                                                                        <#list contest.contestResource as contestResource>
																		          	      <#if contestResource.contestresourceurl??>
																			          	      <div class="span6 home-pod ">
																								 <div class="pod">
																									 <div class="pod__content">
																										<img
																											src="contest/${contestResource.contestresourceurl}" style="height:250px;">
																									 </div>
																								 </div>
																							  </div>
																						  <#else>
																				          	  <div class="span6 home-pod ">
																									<div class="pod">
																										<div class="pod__content">
																											 <img
																												src="assets/images/work_8.jpg">
																										</div>
																									</div>
																							  </div>
																						  </#if>
																	           </#list>	
																			</#if>	 
	                                                                       </div>
	                                                                       <#assign time ="${contest.contesttime?string('yyyy-MM-dd')}">
                                                                        </ul>
													                   </div>
																	</div>	
                                                                   <br/> <br/>
                                                                   </#list>
                                                                </#if>
                                                                
														</div>

													</div>
												</div>
												
											</div>
										</div>

											
                                        <!-- node__content 结束-->
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
