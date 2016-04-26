<table id="datatable" class="table  table-striped">
    <thead>
        <th>序号</th>
        <th>标题</th>
        <th>图片地址</th>
        <#if Popedom?index_of('n')!=-1>
        <th>操作</th>
         </#if>
    </thead>
    <tbody>
	   <#if spotlights?exists>
		    <#list spotlights as spotlight>
		    <tr>
		        <th>${(spotlight_index) + 1}</th>
		        <td>${spotlight.spotlightname!}</td>
		        <td>${spotlight.spotlightpicurl!}</td>
		        <th>
		        <#if Popedom?index_of('n')!=-1>
		        <a href="deleteSpotlight.do?seqid=${spotlight.seqid!}">删除</a>
		        </#if>
		        </th>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
