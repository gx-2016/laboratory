<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="../assets/images/favicon_1.ico">

        <title>后台管理主页面</title>
        
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
                        <h4 class="modal-title">新增焦点</h4>
                    </div>
                    <!--新增的form表单-->
                    <form id="saveSpotlightForm" action="saveSpotlight.do" method="post" enctype="multipart/form-data">
	                    <div class="modal-body">
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-1" class="control-label">名称</label>
	                                    <input type="text" class="form-control" id="spotlightname" name= "spotlightname" placeholder="焦点标题">
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">备注</label>
	                                    <input type="text" class="form-control" id="remark" name="remark" placeholder="焦点备注">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <div class="fileupload btn btn-primary waves-effect waves-light">
	                                        <span><i class="ion-upload m-r-5"></i>上传图片</span>
	                                        <input type="file" class="upload form-control" id="file" name="file" placeholder="选择图片">
                                        </div>
                                        <!--
	                                    <input type="file" class="form-control" id="file" name="file" placeholder="选择图片">-->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">关闭</button>
	                        <input type="sunbmit" class="btn btn-default btn-info" onclick="saveSpotlight()" value="保存"/>
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
                                        <li class="active">焦点管理</li>
                                    </ol>
                                    <h4 class="page-title">Welcome !</h4>
                                </div>
                            </div>
                        </div>
                        <!--Page-Content-->
                        <!--焦点管理-->
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
                            <div class="col-sm-12">
                                    <h4 class="m-t-0 header-title">
                                       <#if Popedom?index_of('k')!=-1>
                                        <b>
                                            <!-- Full width modal -->
                                            <button class="btn btn-primary waves-effect waves-light m-t-10" data-toggle="modal" data-target="#con-close-modal">新增焦点</button>
                                       </b>
                                       </#if>
                                    </h4>
                                <div class="card-box table-responsive">
                                    <div id ="dataList">
                                    <#include "spotlightData.ftl">
                                    </div>
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
                $('#datatable').dataTable();
            } );
            
            function saveSpotlight()
            {
               var spotlightname = $("#spotlightname").val();
               var remark = $("#remark").val();
               
               if(spotlightname =="")
               {
                alert("焦点标题不能为空！");
                return false;
               }
               else{
                  $("#saveSpotlightForm").submit();
                }
            }
        </script>
    
    </body>
</html>