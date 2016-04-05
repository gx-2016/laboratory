<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="../assets/images/favicon_1.ico">

        <title>后台管理-用户管理</title>
        
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
        <!--引入日期控件-->
        <script src="../assets/My97DatePicker/WdatePicker.js"></script>

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
                        <h4 class="modal-title">新增用户</h4>
                    </div>
                    <!--新增的form表单-->
                    <form id="saveUserForm" action="saveUser.do" method="post" enctype="multipart/form-data">
	                    <div class="modal-body">
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">姓名</label>
	                                    <input type="text" class="form-control" id="username" name= "username"  placeholder="输入姓名">
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">登录名</label>
	                                    <input type="text" class="form-control" id="logonname" name="logonname"  placeholder="输入登录名">
	                                </div>
	                            </div>
	                         </div>
	                         
	                          <div class="row">
	                           <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">密码</label>
	                                    <input type="text" class="form-control" id="logonpwd" name= "logonpwd" placeholder="输入登陆密码" >
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">入学日期</label>
	                                    <input type="text" class="form-control" id="ondutydate" name= "ondutydate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" >
	                                </div>
	                            </div>
	                         </div>
	                         
	                              <div class="row">
			                           <div class="col-md-6">
			                                <div class="form-group">
			                                    <label for="field-2" class="control-label">生日</label>
			                                    <input type="text" class="form-control" id="birthday" name= "birthday" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly">
			                                </div>
			                            </div>
			                            <div class="col-md-6">
			                                <div class="form-group">
			                                    <label for="field-2" class="control-label">毕业日期</label>
			                                    <input type="text" class="form-control" id="offdutydate" name= "ondutydate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" >
			                                </div>
			                            </div>
	                             </div>
	                         
	                         <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                     <label class="col-sm-4 control-label">性别:</label>
                                        <div class="col-sm-8">
                                           <select  id="sex" class="form-control" name="sex" >
													 <option value="0">男</option>
													 <option value="1">女</option>
											</select>
                                        </div>
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                     <label class="col-sm-4 control-label">是否毕业</label>
                                        <div class="col-sm-8">
                                           <select  id="isduty" class="form-control" name="isduty" >
													 <option value="0">毕业</option>
													 <option value="1">在读</option>
											</select>
                                        </div>
	                                </div>
	                            </div>
	                         </div>
	                         
	                         <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">邮箱</label>
	                                    <input type="text" class="form-control" id="email" name= "email"  placeholder="输入邮箱">
	                                </div>
	                            </div>
	                          <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">学历</label>
	                                    <input type="text" class="form-control" id="education" name= "education"  placeholder="输入学历">
	                                </div>
	                            </div>
	                         </div>
	                         <div class="row">
	                            
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">输入电话</label>
	                                    <input type="text" class="form-control" id="mobile" name="mobile"  placeholder="电话">
	                                </div>
	                            </div>
	                             <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">个人主页</label>
	                                    <input type="text" class="form-control" id="personpage" name= "personpage" placeholder="输入个人主页网址"  >
	                                </div>
	                            </div>
	                         </div>
	                         
	                             <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">公司名称</label>
	                                    <input type="text" class="form-control" id="companyname" name= "companyname"  placeholder="输入公司">
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">公司职务</label>
	                                    <input type="text" class="form-control" id="workdetail" name="workdetail"  placeholder="输入公司职务">
	                                </div>
	                            </div>
	                         </div>
	                         
	                          <div class="row">
	                            <div class="col-md-12">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">家庭地址</label>
	                                    <input type="textarea" class="form-control" id="address" name="address"  placeholder="输入地址">
	                                </div>
	                            </div>
	                         </div>

	                         <div class="row">
	                           <div class="col-md-6">
	                                <div class="form-group">
	                                 <div class="fileupload btn btn-primary waves-effect waves-light">
	                                        <span><i class="ion-upload m-r-5"></i>上传头像</span>
	                                        <input type="file" class="upload form-control" id="file" name="file" placeholder="上传头像">
                                        </div>
	                                </div>
	                            </div>
	                         </div>
	                         
	                     </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">关闭</button>
	                        <button type="button"  class="btn btn-default btn-info" onclick="saveUser()" data-dismiss="modal">保存</button>
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
                                        <li class="active">用户管理</li>
                                    </ol>
                                    <h4 class="page-title">Welcome !</h4>
                                </div>
                            </div>
                        </div>
                        
                        <!--Page-Content-->
		                          <div class="card-box table-responsive">
		                           <h4 class="m-t-0 header-title">
                                        <b>
                                            <!-- Full width modal -->
                                            <button class="btn btn-primary waves-effect waves-light m-t-10" data-toggle="modal" data-target="#con-close-modal">增加用户</button>
                                       </b>
                                    </h4>
		                                <div id ="dataList">
		                                 <#include "userData.ftl">
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
	          function checklogonname(){
	                //判断该用户是否已经存在
	               	$.ajax({
							type: "post",
							url: "findUserExist.do",
							data: {
								logonname:logonname
							},
							 success: function(data) {
					            if(data.result=='1')
					            {
						            alert("该用户已存在！");
						            return false;
					            }
					         },
						});
				  }
	           
	           function checkusername(){
	                //判断该用户是否已经存在
	               	$.ajax({
							type: "post",
							url: "findUserExist.do",
							data: {
								username:username
							},
							 success: function(data) {
					            if(data.result=='1')
					            {
						            alert("该用户已存在！");
						            return false;
					            }
					         },
						});
	           }
	           
	          
	          
	          function saveUser(){
	               
			        //保存选中的关键字对应的数据项
		           	$.ajax({
							type: "post",
							url: "saveUser.do",
							data: {
							     companyname:companyname,
							     workdetail:workdetail,
							     username:username,
							     logonname:logonname,
							     logonpwd:logonpwd,
							     sexid:sexid,
                                 birthday:birthday,
                                 address:address,
							     email:email,
							     mobile:mobile,
							     isduty:isduty,
							     ondutydate:ondutydate,
							     offdutydate:offdutydate,
				                 personpage:personpage,
		                         photourl:photourl,
			                     education:education,
				                 remark:remark
							},
							 success: function(data) {
					             $("#dataList").html(data);
					         },
						});
	          }
        </script>
        
    </body>
</html>