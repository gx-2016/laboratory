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
                    <form id="saveUserForm" action="addUser.do" method="post" enctype="multipart/form-data">
	                    <div class="modal-body">
	                        <div class="row">
	                               <div class="col-md-6">
		                                <div class="form-group">
		                                    <label for="field-2" class="control-label">姓名</label>
		                                    <input type="text" class="form-control" id="username" name= "username"  placeholder="输入姓名" >
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
	                                    <label for="field-3" class="control-label">登录名</label>
	                                    <input type="text" class="form-control" id="logonname" name="logonname"  placeholder="输入登录名" onblur="checklogonname()">
	                                </div>
	                            </div>
	                           <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">密码</label>
	                                    <input type="text" class="form-control" id="logonpwd" name= "logonpwd" placeholder="输入登陆密码" >
	                                </div>
	                            </div>
	                           </div>
	                           <!--
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
	                         -->
	                         <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                     <label class="col-sm-4 control-label">性别</label>
                                        <div class="col-sm-8">
                                           <select  id="sexid" class="form-control" name="sexid" >
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
	                                    <input type="text" class="form-control" id="education" name= "education"  placeholder="本科、硕士、博士">
	                                </div>
	                            </div>
	                         </div>
	                         <div class="row">
	                            
	                             <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">个人主页</label>
	                                    <input type="text" class="form-control" id="personpage" name= "personpage" placeholder="输入个人主页网址"  >
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">毕业去向</label>
	                                    <input type="text" class="form-control" id="companyname" name= "companyname"  placeholder="输入公司">
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
       
       
           <!-- 修改用户模态框 modal -->
        <div id="update" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">修改用户</h4>
                    </div>
                    <!--新增的form表单-->
                    <form id="updateUserForm"  action="updateUser.do" method="post" enctype="multipart/form-data">
	                    <div class="modal-body">
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">姓名</label>
	                                    <input type="text" class="form-control" id="update_username" name= "username"  placeholder="输入姓名">
	                                </div>
	                            </div>
	                                <div class="form-group">
	                                     <label class="col-sm-6 control-label">性别</label>
                                        <div class="col-sm-6">
                                           <select  id="update_sexid" class="form-control" name="sexid" >
													 <option value="0">男</option>
													 <option value="1">女</option>
											</select>
                                        </div>
	                                </div>
	                      </div>
	                         <!--
	                          <div class="row">
	                           <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">密码</label>
	                                    <input type="text" class="form-control" id="update_logonpwd" name= "logonpwd" placeholder="输入登陆密码" >
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">入学日期</label>
	                                    <input type="text" class="form-control" id="update_ondutydate" name= "ondutydate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" >
	                                </div>
	                            </div>
	                         </div>
	                         
	                              <div class="row">
			                           <div class="col-md-6">
			                                <div class="form-group">
			                                    <label for="field-2" class="control-label">生日</label>
			                                    <input type="text" class="form-control" id="update_birthday" name= "birthday" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly">
			                                </div>
			                            </div>
			                            <div class="col-md-6">
			                                <div class="form-group">
			                                    <label for="field-2" class="control-label">毕业日期</label>
			                                    <input type="text" class="form-control" id="update_offdutydate" name= "offdutydate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" >
			                                </div>
			                            </div>
	                             </div>
	                             -->
	                         
	                         <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                     <label class="col-sm-4 control-label">是否毕业</label>
                                        <div class="col-sm-8">
                                           <select  id="update_isduty" class="form-control" name="isduty" >
													 <option value="0">毕业</option>
													 <option value="1">在读</option>
											</select>
                                        </div>
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">入学日期</label>
	                                    <input type="text" class="form-control" id="update_ondutydate" name= "ondutydate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" >
	                                </div>
	                            </div>
	                         </div>
	                         
	                         <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">邮箱</label>
	                                    <input type="text" class="form-control" id="update_email" name= "email"  placeholder="输入邮箱">
	                                </div>
	                            </div>
	                          <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">学历</label>
	                                    <input type="text" class="form-control" id="update_education" name= "education"  placeholder="本科、硕士、博士">
	                                </div>
	                            </div>
	                         </div>
	                         <div class="row">
	                            <!--
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">电话</label>
	                                    <input type="text" class="form-control" id="update_mobile" name="mobile"  placeholder="输入电话">
	                                </div>
	                            </div>
	                            -->
		                            <div class="col-md-6">
		                                <div class="form-group">
		                                    <label for="field-2" class="control-label">毕业去向</label>
		                                    <input type="text" class="form-control" id="update_companyname" name= "companyname"  placeholder="输入公司">
		                                </div>
		                            </div>
	                             <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">个人主页</label>
	                                    <input type="text" class="form-control" id="update_personpage" name= "personpage" placeholder="输入个人主页网址"  >
	                                </div>
	                            </div>
	                         </div>
	                         
	                             <div class="row">
	                            <!--
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-3" class="control-label">公司职务</label>
	                                    <input type="text" class="form-control" id="update_workdetail" name="workdetail"  placeholder="输入公司职务">
	                                </div>
	                            </div>
	                            -->
	                            
	                         </div>

	                         <div class="row">
	                           <div class="col-md-6">
	                                <div class="form-group">
	                                 <div class="fileupload btn btn-primary waves-effect waves-light">
	                                        <span><i class="ion-upload m-r-5"></i>上传头像</span>
	                                        <input type="file" class="upload form-control" id="update_file" name="file" placeholder="上传头像">
                                        </div>
	                                </div>
	                            </div>
	                         </div>
	                         <!--隐藏域主键id-->
	                         <input type="hidden" class="form-control" id="update_userid" name= "userid" >
	                         <input type="hidden" class="form-control" id="update_photourl" name= "photourl" >
	                     </div>
	                    <div class="modal-footer">
	                        
	                        <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">关闭</button>
	                        <button type="button"  class="btn btn-default btn-info" onclick="updateUser()" data-dismiss="modal">保存</button>
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
                        
                        <!-- 提示信息 -->
					       <#if message??>
						       <div class="alert alert-warning alert-dismissable">
								   <button type="button" class="close" data-dismiss="alert" 
								      aria-hidden="true">
								      &times;
								   </button>
								      ${message}
							  </div>
						  </#if>
					      <!-- /.提示信息 -->
		                          <div class="card-box table-responsive">
		                           <h4 class="m-t-0 header-title">
                                       <#if Popedom?index_of('l')!=-1>
                                        <b>
                                            <!-- Full width modal -->
                                            <button class="btn btn-primary waves-effect waves-light m-t-10" data-toggle="modal" data-target="#con-close-modal">增加用户</button>
                                       </b>
                                        </#if>
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
	          
	           
	            //判断该用户是否已经存在
	           function checklogonname(){
	           
	           var logonname = $("#logonname").val();
	               	$.ajax({
							type: "post",
							url: "findUserExist.do",
							data: {
								logonname:logonname
							},
							 success: function(data) {
					            if(data.result=='ok')
					            {   
					                document.getElementById("logonname").value="";
						            alert("该登录名已存在！");
						            
					            }
					         },
						});
	           }
	           
	          
	          function updateUser(){
	          //修改选中的关键字对应的数据项
	              $("#updateUserForm").submit();
			        
				}
					
					//提交新增用户信息	
	          function saveUser(){
	             var username = $("#username").val();
	             var ondutydate = $("#ondutydate").val();
	             var logonname = $("#logonname").val();
	             var logonpwd = $("#logonpwd").val();
	             var isduty = $("#isduty").val();
	             var education = $("#education").val();
	             var companyname = $("#companyname").val();
	             
	             if(username==""){
	             alert("姓名不能为空");
	             return false;
	             }
	             
	             if( ondutydate==""){
	             alert("入学日期不能为空");
	             return false;
	             }
	             
	             if(logonname==""){
	             alert("登录名不能为空");
	              return false;
	             }
	             
	             if(logonpwd==""){
	             alert("密码不能为空");
	              return false;
	             }
	             
	             if(isduty==""){
	             alert("是否毕业不能为空");
	              return false;
	             }
	             
	             if(education==""){
	             alert("学历不能为空");
	              return false;
	             }
	             
	             $("#saveUserForm").submit();
			        
			        
			  }
		      
		      //后台修改成员信息
			  function update(obj){
				var tds=$(obj).parent().parent().find('td');
				var inputs=$(obj).parent().parent().find('input');
				
				$('#update_username').val(tds.eq(1).text());
				
				var all_options = document.getElementById("update_sexid").options;
				for (i=0; i< all_options.length; i++){
					if (all_options[i].text== tds.eq(2).text()) // 根据option标签的文本来进行判断 测试的代码这里是两个等号
					{
					  all_options[i].selected = true;
					}
				}
				
				
				$('#update_education').val(tds.eq(3).text());
				
				
				
				var all_options = document.getElementById("update_isduty").options;
				for (i=0; i< all_options.length; i++){
					if (all_options[i].text== tds.eq(4).text()) // 根据option标签的文本来进行判断 测试的代码这里是两个等号
					{
					  all_options[i].selected = true;
					}
				}
				
				$('#update_ondutydate').val(tds.eq(5).text());
				
				$('#update_personpage').val(inputs.eq(0).val());
			    $('#update_email').val(inputs.eq(1).val());
			    $('#update_userid').val(inputs.eq(2).val());
			    
				$('#update').modal('show');
			}
        </script>
        
    </body>
</html>