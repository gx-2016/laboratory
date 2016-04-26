<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="../assets/images/favicon_1.ico">

        <title>后台管理数据字典管理</title>
        
         <!-- DataTables -->
        <link href="../assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/plugins/custombox/dist/custombox.min.css" rel="stylesheet">

        <link href="../assets/plugins/switchery/switchery.min.css" rel="stylesheet" />
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css">
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css">
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css">
        <link href="../assets/css/menu.css" rel="stylesheet" type="text/css">
        <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css">

        <script src="../assets/js/modernizr.min.js"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        
    </head>
    

    <body class="fixed-left">
     <!-- 新增模态框 modal -->
        <div id="con-close-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">新增选项</h4>
                    </div>
                    <!--新增的form表单-->
                    <form id="saveSpotlightForm" action="saveSpotlight.do" method="post" enctype="multipart/form-data">
	                    <div class="modal-body">
	                        
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                 <label for="field-1" id="newKeywordLabel" class="control-label">类型</label>
	                                
	                                    <input type="text" class="form-control" id="newKeyword" name="newKeyword" placeholder="输入类型名称">
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <hr/>
	                    <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">编号</label>
	                                    <input type="text" class="form-control" id="ddlcode" name= "ddlcode"  onblur="checkDdlCode()" placeholder="输入编号(数字)">
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">名称</label>
	                                    <input type="text" class="form-control" id="ddlname" name="ddlname" onblur="checkDdlName()" placeholder="输入名称">
	                                </div>
	                            </div>
	                        </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">关闭</button>
	                        <button type="button"  class="btn btn-default btn-info" onclick="saveDDL()" data-dismiss="modal">保存</button>
	                    </div>
                    </form>
                </div>
            </div>
        </div>
       <!-- /.modal -->
        
        <!-- Begin page -->
        <div id="wrapper">
        
            <!-- Top Bar Start -->
           <#include "../frame/headAdmin.ftl">
            <!-- Top Bar End -->

            <!-- ========== Left Sidebar Start ========== -->
            <#include "../frame/leftAdmin.ftl">
            <!-- Left Sidebar End --> 

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->                      
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="page-title-box">
                                    <ol class="breadcrumb pull-right">
                                        <li><a href="#">Minton</a></li>
                                        <li class="active">数据字典管理</li>
                                    </ol>
                                    <h4 class="page-title">Welcome !</h4>
                                </div>
                            </div>
                        </div>
                        
                        <!--Page-Content-->
                        <!--数据字典管理-->
                         <!-- 提示信息 -->
					       <#if message??>
						       <div class="alert alert-success alert-dismissable">
								   <button type="button" class="close" data-dismiss="alert" 
								      aria-hidden="true">
								      &times;
								   </button>
								      ${message}
							  </div>
						  </#if>
					      <!-- /.提示信息 -->
		                    <div class="row">
		                         <div class="form-group " >
                                        <label class="col-sm-1 control-label">类型列表:</label>
                                        <div class="col-sm-2">
                                           <select  id="keyword" class="form-control" name="keyword"  onchange="changetype()">
											    <option value="-1">--增加类型和选项--</option>
												<#if keyWordList??>
													<#list keyWordList as keyWord>
													 <option>${keyWord}</option>
													</#list>
												</#if>
											</select>
                                        </div>
								  </div>
								  <br/>
		                          <div class="card-box table-responsive">
		                           <h4 class="m-t-0 header-title">
                                        <b>
                                          <#if Popedom?index_of('l')!=-1>
                                            <!-- Full width modal -->
                                            <button class="btn btn-primary waves-effect waves-light m-t-10" data-toggle="modal" data-target="#con-close-modal">增加选项</button>
                                        </#if>
                                       </b>
                                    </h4>
		                                <div id ="dataList">
		                                 <#include "systemDDLData.ftl">
		                                </div>
		                          </div>
                        </div>
                        <!--end Page-Content-->
                     </div>
                    <!-- end container -->
                </div>
                <!-- end content -->

                <footer class="footer text-right">
                    2016 © Minton.
                </footer>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <#include "../frame/rightAdmin.ftl">
            <!-- /Right-bar -->

        </div>
        <!-- END wrapper -->


    
        <script>
            var resizefunc = [];
        </script>

        <!-- Plugins  -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/detect.js"></script>
        <script src="../assets/js/fastclick.js"></script>
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <script src="../assets/js/jquery.blockUI.js"></script>
        <script src="../assets/js/waves.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/jquery.nicescroll.js"></script>
        <script src="../assets/js/jquery.scrollTo.min.js"></script>
        <script src="../assets/plugins/switchery/switchery.min.js"></script>

        <!-- Moment  -->
        <script src="../assets/plugins/moment/moment.js"></script>
        
        <!-- Counter Up  -->
        <script src="../assets/plugins/waypoints/lib/jquery.waypoints.js"></script>
        <script src="../assets/plugins/counterup/jquery.counterup.min.js"></script>
        
        <!-- Sweet Alert  -->
        <script src="../assets/plugins/sweetalert/dist/sweetalert.min.js"></script>
        
        <!-- flot Chart -->
        <script src="../assets/plugins/flot-chart/jquery.flot.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.time.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.resize.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.pie.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.selection.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.stack.js"></script>
        <script src="../assets/plugins/flot-chart/jquery.flot.crosshair.js"></script>

        <!-- Custom main Js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>
        
        <!-- Datatables-->
        <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.bootstrap.js"></script>
        
        <!-- Modal-Effect -->
        <script src="../assets/plugins/custombox/dist/custombox.min.js"></script>
        <script src="../assets/plugins/custombox/dist/legacy.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
            //    $('#datatable').dataTable();
            } );
            
             function changetype()
	          {
	           var keyword =  $('#keyword').val();
	           if(keyword =='-1')
	            {
	              $('#newKeywordLabel').show();
	              $('#newKeyword').show();
	            }
	            else{
	              $('#newKeywordLabel').hide();
	              $('#newKeyword').hide();
				}
				
				  //查询出下拉框中选中的关键字对应的数据项
		           	$.ajax({
							type: "post",
							url: "getDDLByKeyWord.do",
							data: {
							    keyword:keyword
							},
							 success: function(data) {
					             $("#dataList").html(data);
					         },
						});
	          }
	          
	          //检查是否已经存该类型的数据编号
	          function checkDdlCode(){
	             var keyword =  $('#keyword').val();
	                if(keyword=='-1')
			        {
			           keyword =  $('#newKeyword').val();
			        }
			        //判断关键字是否填写
			        if(keyword=='')
			        {
			           alert("类型不能为空！");
			           return false;
			        }
	               var ddlcode =  $('#ddlcode').val();
	               var reg = new RegExp("^[0-9]*$");  
				   if(!reg.test(ddlcode)){
					    alert("编号请输入数字!");
					    return false;
				    }
				    
	               //判断该关键字对应的数据项编号是否已经存在
	               	$.ajax({
							type: "post",
							url: "findDDLByDdlCode.do",
							data: {
							    keyword : keyword,
							    ddlcode : ddlcode
							},
							 success: function(data) {
					            if(data.result=='1')
					            {
						            alert("该数据项编号已存在！");
						            return false;
					            }
					         },
						});
	          }
	          
	          
	           //检查是否已经存该类型的数据名称
	          function checkDdlName(){
	             var keyword =  $('#keyword').val();
	                if(keyword=='-1')
			        {
			           keyword =  $('#newKeyword').val();
			        }
			        //判断关键字是否填写
			        if(keyword=='')
			        {
			           alert("类型不能为空！");
			           return false;
			        }
			        
	                 var ddlname =  $('#ddlname').val();
	               //判断该关键字对应的数据项名称是否已经存在
	              	$.ajax({
							type: "post",
							url: "findDDLByDdlName.do",
							data: {
							    keyword : keyword,
							    ddlname : ddlname
							},
							 success: function(data) {
					            if(data.result=='1')
					            {
					             alert("该数据项名称已存在！");
					              return false;
					            }
					         },
						});
	          }
	          
	          
	          function saveDDL(){
	               var keyword =  $('#keyword').val();
	                if(keyword=='-1')
			        {
			           keyword =  $('#newKeyword').val();
			        }
			        //判断关键字是否填写
			        if(keyword=='')
			        {
			           alert("类型不能为空！");
			           return false;
			        }
			        
	               var ddlcode =  $('#ddlcode').val();
	               var ddlname =  $('#ddlname').val();
	               
			        //保存选中的关键字对应的数据项
		           	$.ajax({
							type: "post",
							url: "saveDDLByKeyWord.do",
							data: {
							    keyword : keyword,
							    ddlcode : ddlcode,
							    ddlname : ddlname
							},
							 success: function(data) {
					             $("#dataList").html(data);
					         },
						});
	          }
	          
        </script>
        
    </body>
</html>