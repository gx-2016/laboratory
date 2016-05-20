 <!--分配用户-->
      <div class="row">  
           <label class="control-label">用户分配:</label>
           <input type="button" value="全选" class="btn" id="selectAll" onclick="selectAll()">   
           <input type="button" value="全不选" class="btn" id="unSelect" onclick="unSelect()">
			  <table id="datatable" class="table  table-striped">
			    <thead>
			        <th>选中 </th>
			        <th>姓名</th>
			        <th>职务</th>
			    </thead>
			    <tbody id="list">
				   <#if userTeamList?exists>
					    <#list userTeamList as userTeam>
					    <tr>
					        <td>
					             <#if userTeam.flag == '1'>
					                 <input type="checkbox"  name="teamuser" value="${userTeam.userid}"  checked >
					                 <#else>
					                 <input type="checkbox"  name="teamuser" value="${userTeam.userid}" >
					             </#if> 
					        </td>
					        <td>${userTeam.username}</td>
					        <td>
					        <#if userTeam.remark??>
						            <#if userTeam.remark == 'teamer'>
								           <select   class="form-control col-md-4" name="remark" >
													  <option value='teamer' selected>队员</option>
													  <option value='leader'>队长</option>
										    </select>
								     <#else>
								        <select   class="form-control col-md-4" name="remark" >
													  <option value='teamer' >队员</option>
													  <option value='leader' selected>队长</option>
										    </select>
								     </#if>
					         <#else>
					            <select   class="form-control col-md-4" name="remark" >
										  <option value='teamer' selected>队员</option>
										  <option value='leader'>队长</option>
							    </select>
					         </#if>
					        </td>
					    </tr>
					    </#list>
				   </#if>
			    </tbody>
			</table>
		<div align="center">	
        <input type="button" class="btn btn-primary" value="保存" onclick="saveUserTeam()">
        </div>  
    
  </div>
