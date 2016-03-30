 <form action="userManage.do" id="busiForm"  method="post" >
<div align="center">
     姓名：<input type="text" id="j_name"name="j_name" placeholder="Name"/></br><hr>
     邮箱：<input type="email"  id="j_email"name="j_email"  placeholder="Email"></br><hr>
     选择头像：<div class="fileupload btn btn-purple waves-effect waves-light">
                <span><i class="ion-upload m-r-5"></i>Upload</span>
                <input type="file" id="j_file" name="j_file" class="upload">
            </div></br><hr>
<button type="submit" class="btn btn-purple waves-effect waves-light" onclick="submitInfo()">Submit</button>
</div>
