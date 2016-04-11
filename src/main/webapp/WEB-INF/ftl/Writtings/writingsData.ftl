<table id="datatable" class="table  table-striped">
    <thead>
        <th>序号</th>
        <th>新闻标题</th>
        <th>操作</th>
    </thead>
    <tbody>
	   <#if newsList?exists>
		    <#list newsList as news>
		    <tr>
		        <td>${news.newsid+1}</td>
		        <td>${news.newstitle!}</td>
		        <th><a>删除</a></th>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
