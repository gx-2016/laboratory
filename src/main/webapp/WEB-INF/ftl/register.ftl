<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="assets/images/favicon_1.ico">

        <title>ICV - 实验室管理平台</title>

        <link href="/iacn/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="/iacn/assets/css/core.css" rel="stylesheet" type="text/css">
        <link href="/iacn/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="/iacn/assets/css/components.css" rel="stylesheet" type="text/css">
        <link href="/iacn/assets/css/pages.css" rel="stylesheet" type="text/css">
        <link href="/iacn/assets/css/menu.css" rel="stylesheet" type="text/css">
        <link href="/iacn/assets/css/responsive.css" rel="stylesheet" type="text/css">

        <script src="assets/js/modernizr.min.js"></script>
        
        <!--引入日期控件-->
        <script src="assets/My97DatePicker/WdatePicker.js"></script>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        
    </head>
    <body>
     <div class="text-center">
                <lable class="logo logo-lg"><i class="md md-equalizer"></i> <span>注册新用户</span> </lable>
      </div>
    <div class="container">
		<div class="card-box">
		  <div class="row">
		
				<form class="form-horizontal group-border-dashed" action="register.do" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label class="col-sm-3 control-label">姓名<font color="red">*</font></label>
						<div class="col-sm-2">
							<input type="text" class="form-control" required name="username" placeholder="username" />
						</div>
						<label class="col-sm-2 control-label">登录名<font color="red">*</font></label>
						<div class="col-sm-2">
							<input type="text" class="form-control" required placeholder="logonname" id="logonname" name="logonname" onblur="checklogonname()" />
						</div>
					</div>
		
					<div class="form-group">
						<label class="col-sm-3 control-label">密码<font color="red">*</font></label>
						<div class="col-sm-2">
							<input type="password" id="pass2" class="form-control" required  name="logonpwd" placeholder="logonpwd" />
						</div>
						<label class="col-sm-2 control-label">确认密码<font color="red">*</font></label>
						<div class="col-sm-2">
							<input type="password" class="form-control" required data-parsley-equalto="#pass2" placeholder="Re-Type Password" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">性别</label>
						<div class="col-sm-2">
                           <select  id="sexid" class="form-control" name="sexid" >
									 <option value="0">男</option>
									 <option value="1">女</option>
							</select>
                        </div>
						<label class="col-sm-2 control-label">是否在读</label>
						<div class="col-sm-2">
                           <select  id="isduty" class="form-control" name="isduty" >
									 <option value="0">毕业</option>
									 <option value="1" selected>在读</option>
							</select>
                        </div>
					</div>
	               
	               	<div class="form-group">
		              <label class="col-sm-3 control-label">生日</label>
			          <div class="col-sm-2">
			             <input type="text" class="form-control" id="birthday" name= "birthday" required onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly">
			          </div>
		              <label class="col-sm-2 control-label">入学日期</label>
			          <div class="col-sm-2">
			            <input type="text" class="form-control" id="ondutydate" required name= "ondutydate"  onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" readonly="readonly" >
			          </div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">邮箱<font color="red">*</font></label>
						<div class="col-sm-6">
							<input type="email" class="form-control" required parsley-type="email" placeholder="Enter a valid e-mail" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">学历</label>
						<div class="col-sm-6">
						    <select  id="education"  class="form-control" name= "education" >
									 <option value="本科" selected>本科</option>
									 <option value="硕士">硕士</option>
									 <option value="硕士">博士</option>
							</select>
							<!--<input type="text" class="form-control" required  id="education" name= "education" placeholder="education" />-->
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">电话<font color="red">*</font></label>
						<div class="col-sm-6">
							<input data-parsley-type="number" name="mobile" type="text" class="form-control" required placeholder="Enter only numbers" />
						</div>
					</div>
					
			
					<div class="form-group">
						<label class="col-sm-3 control-label">地址</label>
						<div class="col-sm-6">
							<input  type="text" class="form-control" name="address" id="address" placeholder="Address" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">个人主页</label>
						<div class="col-sm-6">
							<input id="personpage" name= "personpage"  parsley-type="url" type="url" class="form-control"  placeholder="Enter PersonaPage URL" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">毕业去向</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="companyname" name= "companyname" parsley-type="email" placeholder="company name" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">公司职务</label>
						<div class="col-sm-6">
							<input type="text" class="form-control"id="workdetail" name="workdetail"  placeholder="workdetail" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label">备注</label>
						<div class="col-sm-6">
							<textarea  class="form-control" name="remark"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-9 m-t-15">
						     <div class="fileupload btn btn-primary waves-effect waves-light">
	                               <label class="col-sm-3 control-label"> <span><i class="ion-upload m-r-5"></i>上传头像</span></label>
	                                <div class="col-sm-6">
	                                  <input type="file" class="upload form-control" id="file" name="file" placeholder="上传头像">
	                                </div>
                            </div>
						    <div align="center">
									<button type="submit" class="btn btn-primary waves-effect waves-light">
										Submit
									</button>
									<button type="reset" class="btn btn-default waves-effect m-l-5">
										Cancel
									</button>
							 </div>
						</div>
					</div>
				</form>
			</div>
	   </div>
 </div>
    	<script>
            var resizefunc = [];
        </script>

        <!-- Main  -->
        <script src="/iacn/assets/js/jquery.min.js"></script>
        <script src="/iacn/assets/js/bootstrap.min.js"></script>
        <script src="/iacn/assets/js/detect.js"></script>
        <script src="/iacn/assets/js/fastclick.js"></script>
        <script src="/iacn/assets/js/jquery.slimscroll.js"></script>
        <script src="/iacn/assets/js/jquery.blockUI.js"></script>
        <script src="/iacn/assets/js/waves.js"></script>
        <script src="/iacn/assets/js/wow.min.js"></script>
        <script src="/iacn/assets/js/jquery.nicescroll.js"></script>
        <script src="/iacn/assets/js/jquery.scrollTo.min.js"></script>

        <!-- Custom main Js -->
        <script src="/iacn/assets/js/jquery.core.js"></script>
        <script src="/iacn/assets/js/jquery.app.js"></script>
	
	    <!-- Parsleyjs -->
        <script type="text/javascript" src="/iacn/assets/plugins/parsleyjs/dist/parsley.min.js"></script>
	    
	
	    <script type="text/javascript">
			$(document).ready(function() {
				$('form').parsley();
			});
			
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
		</script>
	
	</body>
</html>

