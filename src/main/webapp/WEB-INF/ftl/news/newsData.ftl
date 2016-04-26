<table id="datatable" class="table  table-striped">
    <thead>
        <th>序号</th>
        <th>新闻标题</th>
        <th>上传者</th>
         <#if Popedom?index_of('n')!=-1>
        <th>操作</th>
         </#if>
    </thead>
    <tbody>
	   <#if newsList?exists>
		    <#list newsList as news>
		    <tr>
		        <td>${news.newsid+1}</td>
		        <td>${news.newstitle!}</td>
		        <td></td>
		       <#if Popedom?index_of('n')!=-1>
		        <th><a href="deleteNews.do?id=${news.newsid}" onclick="return confirm('确实要删除吗？');">删除</a></th>
		        <#--<th><input type = "button" class="btn btn-link"id="deleteNews" name="deleteNews" onclick="deleteNews(${news.newsid})" value="删除"/></th>-->
		        </#if>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
