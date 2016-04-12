 <!--权限分配-->
<div class="row" >
     <div class="form-group" >
             <label class="control-label">权限分配:</label>
             <#assign parentCode = "">
             <#if rolePopedomList??>
                <#list rolePopedomList as xmlObject>
                 <#if xmlObject.parentCode!= parentCode >
                      <br/>
                      <#if xmlObject.flag == '1' >
	                    <strong>${xmlObject.parentName}</strong>:&nbsp;&nbsp;&nbsp;
	                      <input type = "checkbox" name="rolepadom"  value="${xmlObject.code}" checked>
	                  <#else>
	                     ${xmlObject.parentName}:
	                      <input type = "checkbox" name="rolepadom" value="${xmlObject.code}" >
	                  </#if> 
	                    ${xmlObject.name}
	                      <#assign parentCode = xmlObject.parentCode>   
                  <#else>
                       <#if xmlObject.flag == '1' >
	                      <input type = "checkbox" name="rolepadom" value="${xmlObject.code}"  checked> 
	                      ${xmlObject.name}
	                     <#else>
	                     <input type = "checkbox" name="rolepadom" value="${xmlObject.code}" >
	                      ${xmlObject.name}
                       </#if>
                  </#if>
                </#list>
             </#if>
     </div>   
     <hr>
     <!--分配用户-->
      <div class="row">  
           <label class="control-label">用户分配:</label>
			  <table id="datatable" class="table  table-striped">
			    <thead>
			        <th>选中</th>
			        <th>姓名</th>
			        <th>登陆名</th>
			    </thead>
			    <tbody>
				   <#if userRoleList?exists>
					    <#list userRoleList as userRole>
					    <tr>
					        <td>
					             <#if userRole.flag == '1'>
					                 <input type="checkbox"  name="roleuser" value="${userRole.userid}"  checked >
					                 <#else>
					                 <input type="checkbox"  name="roleuser" value="${userRole.userid}" >
					             </#if> 
					        </td>
					        <td>${userRole.username}</td>
					        <td>${userRole.logonname}</td>
					    </tr>
					    </#list>
				   </#if>
			    </tbody>
			</table>
		<div align="center">	
        <input type="button" class="btn btn-primary" value="保存" onclick="saveRolePopedom()">
        </div>
  </div>
