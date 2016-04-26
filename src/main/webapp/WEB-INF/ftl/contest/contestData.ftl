<table id="datatable" class="table  table-striped">
    <thead>
        <th>序号</th>
        <th>比赛名称</th>
        <th>比赛地点</th>
        <th>比赛时间</th>
        <th>参数队伍</th>
        <th>获奖</th>
        <th>排名</th>
        <th>类型</th>
        <#if Popedom?index_of('n')!=-1>
        <th>操作</th>
         </#if>
    </thead>
    <tbody>
	   <#if contestList?exists>
		    <#list contestList as contest>
		    <tr>
		        <td>${(contest_index)+1}</td>
		        <td>${contest.contestname!}</td>
		        <td>${contest.contestdestination!}</td>
		        <td>${contest.contesttime?string('yyyy-MM-dd')}</td>
		        <td>${contest.contestTeamName!}</td>
		        <td>${contest.contestAward!}</td>
		        <td>${contest.contestRank!}</td>
		        <td>${contest.contestTypeName!}</td>
		        <th><#if Popedom?index_of('n')!=-1>
		        <a>删除</a>
		         </#if>
		        </th>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
