<div class="col-lg-12">
	 <ul class="nav nav-tabs tabs tabs-top">
	       <#if personpageSystemDDLs? exists>
			   <#list personpageSystemDDLs as ddl>
			        <li class="tab">
			            <a href="#${ddl.ddlname}-12" data-toggle="tab" aria-expanded="false" class="">
			                <span class="visible-xs"><i class="fa fa-home"></i></span>
					        <span class="hidden-xs">${ddl.ddlname}</span>
			            </a>
			        </li>
			    </#list>
		    </#if>
	    <div class="indicator" style="right: 263px; left: 131px;"></div>
	    </ul>
    
	    <div class="tab-content">
	    <#if personpageSystemDDLs? exists>
			   <#list personpageSystemDDLs as ddl>
		        <div class="tab-pane" id="${ddl.ddlname}-12" style="display: block;">
		                <#if ddlmap??>
							 <#list ddlmap?keys as ddlname>
							       <#if ddlmap[ddl.ddlname]??>
							         <#if ddlname==ddl.ddlname>
								      <!--富文本编辑器-->
								      <div class="row">
											<div class="col-sm-12">
												<div class="card-box">
													<form method="post">
														<textarea  name="area" >
										                ${ddlmap[ddlname]}
										               </textarea>
													</form>
												</div>
											</div>
										</div>
								      <!--end 富文本编辑器-->
							      </#if>
							       <#else>
									      <div class="alert alert-success alert-dismissable">
											   <button type="button" class="close" data-dismiss="alert" 
											      aria-hidden="true">
											      &times;
											   </button>
											      您个人主页的该数据还没有内容
										  </div>
										  <!--富文本编辑器-->
									      <div class="row">
											<div class="col-sm-12">
												<div class="card-box">
													<form method="post">
														<textarea  name="area">
										               </textarea>
													</form>
												</div>
											</div>
										</div>
									     <!--end 富文本编辑器-->
									    </#if>
							  </#list>
					     <#else>
						      <div class="alert alert-success alert-dismissable">
								   <button type="button" class="close" data-dismiss="alert" 
								      aria-hidden="true">
								      &times;
								   </button>
								      您个人主页的该数据还没有内容
							  </div>
							  <!--富文本编辑器-->
						      <div class="row">
								<div class="col-sm-12">
									<div class="card-box">
										<form method="post">
											<textarea  name="area">
							               </textarea>
										</form>
									</div>
								</div>
							</div>
						     <!--end 富文本编辑器-->
					 </#if>	     
		           </div>
	           </#list>
		    </#if>
	    </div>
</div>

