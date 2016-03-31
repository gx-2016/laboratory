		  <table id="datatable" class="table  table-striped">
		    <thead>
		        <th>编号</th>
		        <th>名称</th>
		        <th>操作</th>
		    </thead>
		    <tbody>
			   <#if ddlList?exists>
				    <#list ddlList as ddl>
				    <tr>
				        <td>${ddl.ddlcode}</td>
				        <td>${ddl.ddlname!}</td>
				        <td><a class="btn btn-success" href='#'>编辑</a></td>
				    </tr>
				    </#list>
			   </#if>
		    </tbody>
		</table>
