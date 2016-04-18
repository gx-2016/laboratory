		  <table id="datatable" class="table  table-striped">
		    <thead>
		        <th>编号</th>
		        <th>姓名</th>
		        <th>性别</th>
		        <th>学历</th>
		        <th>是否毕业</th>
		        <th>毕业去向</th>
		        <th>编辑</th>
	
		    </thead>
		    <tbody>
			   <#if userList?exists>
				    <#list userList as user>
				    <tr>
				        <td>${(user_index)+1}</td>
				        <td align="center">${user.username}</td>
				        <#if user.sexid??>
					        <#if  user.sexid == '0' >
					        <td>男</td>
					        <#else>
					        <td>女</td>
					        </#if>
					    <#else>
					        <td></td>
					    </#if>
				        
				        <#if user.education??>
				        <td>${user.education}</td>
				        <#else>
				        <td></td>
				        </#if>
				        <!--
				         <#if user.email??>
				        <td>${user.email}</td>
				        <#else>
				        <td></td>
				        </#if>
				        --> 
				        <!--
				        <#if user.personpage??>
				        <td>${user.personpage}</td>
				        <#else>
				        <td></td>
				        </#if>
				        --> 
				         <#if user.isduty??>
					        <#if  user.isduty == '0' >
					        <td>毕业</td>
					        <#else>
					        <td>在读</td>
					        </#if>
					    <#else>
					        <td></td>
					    </#if>
				        
				        <#if user.companyname??>
					        <td>${user.companyname}</td>
					        <#else>
					        <td></td>
				        </#if>

				        <td>
				        <#if Popedom?index_of('l')!=-1>
				        <a onclick="update(this)">修改</a> | 
				         </#if>
				        <#if Popedom?index_of('m')!=-1>
				        <a href="deleteUser.do?userid=${user.userid}" onclick="javascript:return confirm('确实要删除吗？')">删除</a>
				        </#if>
				        </td>
			      
				        <#if user.personpage??>
				         <input type="hidden" name='personpage' value='${user.personpage}'>
				        <#else>
				        <input type="hidden" name='personpage' value=''>
				        </#if>
				        
				        <#if user.email??>
				         <input type="hidden" name='email' value='${user.email}'>
				        <#else>
				        <input type="hidden" name='email' value=''>
				        </#if>
				        
				         <input type="hidden" name='userid' value='${user.userid}'>
				    </tr>
				    </#list>
			   </#if>
		    </tbody>
		</table>
