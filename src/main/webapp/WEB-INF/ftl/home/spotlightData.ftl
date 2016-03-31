<table id="datatable" class="table  table-striped">
    <thead>
        <th>序号</th>
        <th>标题</th>
        <th>图片地址</th>
        <th>操作</th>
    </thead>
    <tbody>
	   <#if spotlights?exists>
		    <#list spotlights as spotlight>
		    <tr>
		        <th>${spotlight_index + 1}</th>
		        <td>${spotlight.spotlightname!}</td>
		        <td>${spotlight.spotlightpicurl!}</td>
		        <th><a>删除</a></th>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
