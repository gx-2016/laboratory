<!-- 新增模态框 modal -->
        <div id="con-addNews-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">新增新闻</h4>
                    </div>
                    <!--新增的form表单-->
                    <form id="saveLinksForm" action="saveNews.do" method="post" enctype="multipart/form-data">
	                    <div class="modal-body">
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-1" class="control-label">新闻标题</label>
	                                    <input type="text" class="form-control" id="newsName" name= "newsName" placeholder="新闻标题">
	                                </div>
	                            </div>
	                         </div>
	                         <div class="row">
	                            <div class="col-md-12">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">新闻内容</label>
	                                    <textarea id="newsContext">
	                                    	<p>新闻内容</p>
	                                    </textarea>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="row">
	                            <div class="col-md-6">
	                                <div class="form-group">
	                                    <label for="field-2" class="control-label">链接地址</label>
	                                    <input type="text" class="form-control" id="linkurl" name="linkurl" onblur="checkURL()" placeholder="链接地址">
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">关闭</button>
	                        <input type="sunbmit" class="btn btn-default btn-info" onclick="saveLinks()" value="保存"/>
	                    </div>
                    </form>
                </div>
            </div>
        </div>
       <!-- /.modal -->