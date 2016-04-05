		  <table id="datatable" class="table  table-striped">
		    <thead>
		        <th>编号</th>
		        <th>姓名</th>
		        <th>性别</th>
		        <th>住址</th>
		        <th>电话</th>
		        <th>邮箱</th>
		        <th>是否毕业</th>
		        <th>毕业去向</th>
		        <th>删除</th>
		        <th>编辑</th>
		    </thead>
		    <tbody>
			   <#if userList?exists>
				    <#list userList as user>
				    <tr>
				        <td>${(user_index)+1}</td>
				        <td>${user.username}</td>
				        <#if user.sexid??>
					        <#if  user.sexid == '0' >
					        <td>男</td>
					        <#else>
					        <td>女</td>
					        </#if>
					    <#else>
					        <td></td>
					    </#if>
				        
				        <#if user.address??>
				        <td>${user.address}</td>
				        <#else>
				        <td></td>
				        </#if>
				        
				         <#if user.mobile??>
				        <td>${user.mobile}</td>
				        <#else>
				        <td></td>
				        </#if>
				        
				          <#if user.email??>
				        <td>${user.email}</td>
				        <#else>
				        <td></td>
				        </#if>
				        
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
				        <td><a class="btn btn-success" href='editUser.do'>编辑</a></td>
				        <td><a class="btn btn-success" href='deleteUser.do'>删除</a></td>
				    </tr>
				    </#list>
			   </#if>
		    </tbody>
		</table>
