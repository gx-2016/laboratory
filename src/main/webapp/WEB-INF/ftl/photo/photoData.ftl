<table id="datatable"  class="table table-striped" style="TABLE-LAYOUT: fixed"  cellspacing="0" cellpadding="10" width="900">
    <thead>
        <th width="10%">序号</th>
        <th width="30%">影集介绍</th>
        <th width="50%">图片地址</th>
        <th width="10%">操作</th>
    </thead>
    <tbody>
	   <#if photos?exists>
		    <#list photos as photo>
		    <tr>
		        <td style="WORD-WRAP: break-word" width="10%">${(photo_index)+1}</td>
		        <td style="WORD-WRAP: break-word" width="35%">${photo.picname!}</td>
		        <td style="WORD-WRAP: break-word" width="45%">${photo.picurl!}</td>
		        <th style="WORD-WRAP: break-word" width="10%"><a href="photoDelete.do?seqid=${photo.seqid}" onclick="javascript:return confirm('确实要删除吗？')">删除</a></th>
		    </tr>
		    </#list>
	   </#if>
    </tbody>
</table>
