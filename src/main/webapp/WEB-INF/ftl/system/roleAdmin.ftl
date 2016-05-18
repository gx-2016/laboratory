<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="../assets/images/favicon_1.ico">

        <title>后台管理-角色管理</title>
        
           <!-- DataTables -->
        <link href="../assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

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
            <div class="content-page card-box ">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="page-title-box">
                                    <ol class="breadcrumb pull-right">
                                        <li><a href="#">Minton</a></li>
                                        <li class="active">角色管理</li>
                                    </ol>
			                          <div class="form-group" >
				                             <label class="col-sm-1 control-label">角色列表:</label>
				                             <div class="col-sm-2">
					                              <select  id="keyword" class="form-control col-md-4" name="keyword"  onchange="selectRole()">
													    <option value="-1">--请选择--</option>
														<#if roleList??>
															<#list roleList as role>
															 <option value='${role.ddlcode}'>${role.ddlname}</option>
															</#list>
														</#if>
													</select>
											</div>
									  </div>
                                </div>
                            </div>
                        </div>
                        
                        <!--Page-Content-->
                          <div id ="dataList">
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
                           <#include "roleData.ftl">
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

        <!-- Custom main Js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>
        
          <!-- Datatables-->
        <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../assets/plugins/datatables/dataTables.bootstrap.js"></script>
        

        <script type="text/javascript">
           $(document).ready(function() {
                $('#datatable').dataTable();
            } );
            
	        function selectRole()
	        {
	          var ddlcode = $("#keyword").val();
	          $.ajax({
	              type: "post",
	              url: "roleEdit.do",
	              data:{
	                roleid:ddlcode
	              },
	              success: function(data){
	                 $("#dataList").html(data);
	                 $('#datatable').dataTable();
	              },
	          });
	        
	        }
	      
	        //保存
	         function  saveRolePopedom()
	        {
	          var ddlcode = $("#keyword").val();
	          var rolepadom =""; 
				$('input[name="rolepadom"]:checked').each(function(){ 
				rolepadom += $(this).val(); 
				}); 
	           var roleuser = new Array(); 
				$('input[name="roleuser"]:checked').each(function(){ 
				roleuser.push($(this).val()); 
				}); 

	          $.ajax({
	              type: "post",
	              url: "roleSave.do",
	              dataType:"json",
	              data:{
	                "roleid":ddlcode,
	                "rolepadom":rolepadom,
	                "roleuser":roleuser
	              },
	              success: function(data){
	                alert(data.message);
	              },
	          });
	        
	        }
	        
	        //全部选择
			function selectAll(){  
			  $("input[name='roleuser']").each(function(){
			   $(this).attr("checked",true);
			  });  
			 }
			 
			 //取消选择
			function unSelect(){  
			  $("input[name='roleuser']").each(function(){
			   $(this).attr("checked",false);
			  });  
			 }
        </script>
        
    </body>
</html>