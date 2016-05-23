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
					              <span class="label label-success"> 竞赛队伍</span>
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
								    
									<!-- content -->
								
											<div class="news-events-feed__wrapper">
                                                                <!--循环控制换行 队伍名称-->
                                                                <#assign  ddlname = "" >
                                                                <#if contestTeamDDls??>
                                                                   <#list contestTeamDDls  as ddl>
                                                                         <#if ddl.ddlname != ddlname>
                                                                            <#if ddl_index !=0>  <br/><br/><br/><br/></#if>
																					<h2 class="news-events-feed__title">
																			           <strong>
																			            <font color="#b38808">
																			            <!--锚点-->
																			             <a id="${ddl.ddlname}"> </a> 
																			             ${ddl.ddlname}  
																			            </font>
																			          </strong>
																			        </h2>
																	        <!--队员信息-->
																	      <ul class="news-events-feed__content">
																	     <div class="span7"> 
																	     <span class="btn btn-info">成员介绍</span>
																	     </div> 
																	      <div class="span5" align="right"> 
																		     <a href="#${ddl.ddlname}" class="btn btn-info"> 
																		     <font color="white">比赛介绍</font>
																		     </a>
																	      </div><br/><br/>
																	      </#if>
																		        <#list  ddl.users as user>
																			           <#if (user.remark == 'leader')>
																			          	  <span class="label label-warning">${user.remark}</span> 
																			          	      <#if (user.sexid == '0')>
																			          	      <span class="label label-warning">♂</span> 
																			          	     <#else>
																			          	     <span class="label label-warning">♀</span> 
																			          	      </#if>
																			          	      <a href="personalPage.do?userid=${user.userid}" data-toggle="personmodal" data-uid="108">${user.username}</a><br><br>
																			          	<#else>
																			          	  <span class="label label-info">${user.remark}</span> 
																			          	    <#if (user.sexid == '0')>
																			          	      <span class="label label-info">♂</span> 
																			          	     <#else>
																			          	     <span class="label label-info">♀</span> 
																			          	      </#if>
																			          	   <a href="personalPage.do?userid=${user.userid}" data-toggle="personmodal" data-uid="89">${user.username}</a>&nbsp;&nbsp&nbsp;&nbsp;
																			          	 </#if> 
																			      </#list>
																			      
			                                                             <#if ddl.ddlname != ddlname>
			                                                              <#assign  ddlname = ddl.ddlname>
	                                                                           </ul>
																		</#if> 
                                                                   </#list>
                                                                </#if>
                                                                 </div>
															 </div>

								      
									<!-- content结束 -->

                   <!-- 比赛内容  content -->
                   <br/>
                   <br/>
                   <br/>
                 <div class="news-events-feed__wrapper">
				       <!--循环控制换行 队伍名称-->
				    <#assign  ddlname = "" >
				    <#if teamContestInfos??>
				       <#list teamContestInfos  as teamContestInfo>
				             <#if teamContestInfo.ddlname != ddlname>
				                <#if teamContestInfo_index !=0>  <br/><br/></#if>
										<h2 class="news-events-feed__title">
								           <strong>
								            <font color="#b38808">
								            <!--锚点-->
								                  <a id="${teamContestInfo.ddlname}"></a>
								                   ${teamContestInfo.ddlname}比赛介绍
								            </font>
								           </strong>
								        </h2>
						        <!--比赛信息-->
						      <ul class="news-events-feed__content">
						        <div class="span7"> 
								       <a href="#${teamContestInfo.ddlname}" class="btn btn-info"> 
									     <font color="white">成员介绍</font>
									     </a>
								     </div> 
								      <div class="span5" align="right"> 
									   
									     <span class="btn btn-info">比赛介绍</span>
								      </div><br/><br/>
						      </#if>
							     
                                         <#list  teamContestInfo.contests as contest>
                                                 <div class="row-fluid">
											            <div class="span5">
											              <p class="text-primary"><font size="4"><img style="width:8%" src="Images/golden.png"> <strong>${teamContestInfo.ddlname}</strong></font></p>
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
										       <br/><br/>
										  </#list>
								      
				             <#if teamContestInfo.ddlname != ddlname>
				              <#assign  ddlname = teamContestInfo.ddlname>
				                   </ul>
							</#if> 
				       </#list>
				    </#if>
				     </div>
				 </div>


<!-- 比赛内容 结束 -->





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
