<table id="datatable" class="table  table-striped">
    <thead>
        <th>序号</th>
        <th>链接标题</th>
        <th>链接地址</th>
        <#if Popedom?index_of('n')!=-1>
        <th>操作</th>
         </#if>
    </thead>
    <tbody>
	   <#if links?exists>
		    <#list links as link>
		    <tr>
		        <td>${(link_index)+1}</td>
		        <td>${link.linkname!}</td>
		        <td>${link.linkurl!}</td>
		         <#if Popedom?index_of('n')!=-1>
		        <th><a>删除</a></th>
		         </#if>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
