 <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">

                    <div id="sidebar-menu">
                        <ul>
                            <li class="text-muted menu-title">Main</li>
                          <#if Popedom?index_of('a')!=-1 && Popedom?index_of('b')!=-1 >
                            <li class="has_sub">
                                   <a href="#" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 首页管理 </span>
                                </a>
							     <ul class="list-unstyled">
							       <#if Popedom?index_of('a')!=-1>
								     <li><a href="../home/spotlightAdmin.do">焦点管理</a></li>
								    </#if>
								    <#if Popedom?index_of('b')!=-1>
								  	 <li><a href="../home/linksAdmin.do">链接管理</a></li>
								  	  </#if>
								 </ul>
								 
							</li>
                           </#if>
                           
                            <#if Popedom?index_of('c')!=-1 && Popedom?index_of('d')!=-1 >
							<li>
                                <a href="#" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 新闻管理 </span>
                                </a>
                                 <ul class="list-unstyled">
                                   <#if Popedom?index_of('c')!=-1>
								     <li><a href="../news/newsAdmin.do">编辑新闻</a></li>
								   </#if>
								   <#if Popedom?index_of('d')!=-1>
								     <li><a href="../news/toAddInform.do">编辑通知</a></li>
								   </#if>
								 </ul>
                            </li>
							</#if>
							
							
							 <#if Popedom?index_of('e')!=-1>
							<li >
                                <a href="../contest/contestAdmin.do" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 比赛管理 </span>
                                </a>
                            </li>
                            </#if>
							
							 <#if Popedom?index_of('f')!=-1>
							<li >
                                <a href="../learn/learnAdmin.do" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 教学管理 </span>
                                </a>
                            </li>
                            </#if>
							
							 <#if Popedom?index_of('g')!=-1>
							<li >
                                <a href="../writtings/writtingsAdmin.do" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 著作管理 </span>
                                </a>
                            </li>
                           </#if>
                           
                            <#if Popedom?index_of('h')!=-1>
							<li >
                                <a href="../photo/photoAdmin.do" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 生活管理 </span>
                                </a>
                            </li>
							</#if>
							
							<!--
							<li >
                                <a href="../share/shareAdmin.do" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 分享管理 </span>
                                </a>
                            </li>
                            -->
                            
							
							<li class="has_sub">
                                <a href="#" class="waves-effect waves-primary"><i class="md md-palette"></i> <span> 系统管理 </span>
                                </a>
                                <ul class="list-unstyled">
                                <#if Popedom?index_of('i')!=-1>
                                    <li><a href="../role/roleAdmin.do">角色管理</a></li>
                                 </#if>
                                 <!--根据用户角色，管理员可以管理所有，普通用户只能编辑自己-->
                                    <#if userRoleMap?? >
		                                   <#if userRoleMap['j']?? >
										     <li><a href="../user/userAdmin.do">用户管理</a></li>
							               <#else>
							                  <li><a href="../user/userAdminByUserId.do?userid=${logonuser.userid}">用户管理</a></li>
							               </#if>
								    </#if>
								      
								      
								      <#if Popedom?index_of('k')!=-1>
								  	 <li><a href="../system/systemDDLAdmin.do">数据字典</a></li>
                                       </#if>
                                </ul>
                            </li>
							
                        </ul>
                        <div class="clearfix"></div>
                    </div>


                    <div class="clearfix"></div>
                </div>
               <!--用户头像-->
                <div class="user-detail">
                    <div class="dropup">
                        <a href="" class="dropdown-toggle profile" data-toggle="dropdown" aria-expanded="true"><img
                                src="../assets/images/users/avatar-2.jpg" alt="user-img" class="img-circle"> </a>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:void(0)"><i class="md md-face-unlock"></i> Profile</a></li>
                            <li><a href="javascript:void(0)"><i class="md md-settings"></i> Settings</a></li>
                            <li><a href="javascript:void(0)"><i class="md md-lock"></i> Lock screen</a></li>
                            <li><a href="javascript:void(0)"><i class="md md-settings-power"></i> Logout</a></li>
                        </ul>
                    </div>

                    <h5 class="m-t-0 m-b-0">John Deo</h5>
                    <p class="text-muted m-b-0">
                        <small><i class="fa fa-circle text-success"></i> <span>Online</span></small>
                    </p>
                </div>
            </div>
            <!-- Left Sidebar End --> 