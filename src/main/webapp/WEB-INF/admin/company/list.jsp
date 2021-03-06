<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="/WEB-INF/common/500.jsp"%>
<%@include file="/WEB-INF/common/tld.jsp"%>
<%@include file="/WEB-INF/public/header.jsp"%>
<%@include file="/WEB-INF/public/aside.jsp"%>
<c:set var="url" value="${base}/admin/company" />
<!DOCTYPE html>
<html lang="en-US">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>公司管理</title>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper"  style="min-height: 848px;">
				<!-- Main content -->
				<section class="content">
				
					<ul class="title">
						<li>公司管理</li>
						<!-- <li class="arrow"></li>
						<li></li> -->
					</ul>
				
					<div class="box">
						<div class="box-header">
						
							<div class="row form-right">
								<div class="col-md-2 left-5px right-0px">
									<select class="input-class input-sm">
										<option>状态</option>
									</select>
								</div>
								<div class="col-md-2 left-5px right-0px">
									<input id="" name="" type="text" class="input-sm input-class" placeholder="搜索条件" />
								</div>
								<div class="col-md-3 left-5px right-0px">
									<input id="" name="" type="text" class="input-sm input-class picker" onClick="WdatePicker()"/>
									<span class="picker-span">至</span>
									<input id="" name="" type="text" class="input-sm input-class picker" onClick="WdatePicker()"/>
								</div>
								<div class="col-md-5 left-5px">
									<a id="" class="btn btn-primary btn-sm pull-left" onclick="" >搜索</a>
									<a id="addBtn" class="btn btn-primary btn-sm pull-right" onclick="add();">添加</a>
								</div>
							</div>
							
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="datatableId" class="table table-hover" style="width:100%;">
								<thead>
									<tr>
										<th><span>序号</span></th>
																					<th><span>管理员账号id</span></th>
																					<th><span>公司名称</span></th>
																					<th><span>公司类型</span></th>
																					<th><span>备注</span></th>
																					<th><span>联系人</span></th>
																					<th><span>联系人手机号</span></th>
																					<th><span>邮箱</span></th>
																					<th><span>座机</span></th>
																					<th><span>地址</span></th>
																					<th><span>营业执照</span></th>
																					<th><span>操作人</span></th>
																					<th><span>创建时间</span></th>
																					<th><span>最后修改时间</span></th>
																					<th><span>删除标识</span></th>
																				<th><span>操作</span></th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</section><!-- /.content -->
			</div><!-- /.content-wrapper -->
	
			<!-- Main Footer -->
			<%-- <%@include file="/WEB-INF/public/footer.jsp"%> --%>
	
		</div>
		<!-- ./wrapper -->
	
		<!-- jQuery 2.2.3 -->
		<script src="${base}/references/public/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- Bootstrap 3.3.6 -->
		<script src="${base}/references/public/bootstrap/js/bootstrap.min.js"></script>
		<!-- DataTables -->
		<script src="${base}/references/public/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="${base}/references/public/plugins/datatables/dataTables.bootstrap.min.js"></script>
		<script src="${base}/references/common/js/My97DatePicker/WdatePicker.js"></script>
		<script src="${base}/references/common/js/layer/layer.js"></script>
		<!-- 公用js文件 -->
		<script src="${base}/references/common/js/base/base.js"></script>
		<!-- 引入DataTables JS -->
		<script src="${base}/admin/company/listTable.js"></script>
		<script type="text/javascript">
			var BASE_PATH = '${base}';
			$(function () {
			    initDatatable();
			    if ('WebSocket' in window){
			    	  console.log('Websocket supported');  
	                  var socket = new WebSocket('ws://192.168.1.6:8080/companywebsocket');  
	                  console.log('Connection attempted');  
	  
	                  socket.onopen = function(){  
	                       console.log('Connection open!');  
	                  };  
	  
	                  socket.onclose = function(){  
	                      console.log('Disconnecting connection');  
	                  }; 
	  
	                  socket.onmessage = function (evt){   
	                        var received_msg = evt.data;  
	                        console.log(received_msg);  
	                        console.log('message received!');  
	                        showMessage(received_msg);  
	                 };  
                } else {  
                  console.log('Websocket not supported');  
                }
			});
			
	        
			function showMessage(message) {
				//alert(message);
				if (typeof message === 'string') {
			    	var obj = JSON.parse(message);
			    	//获取列表所有的数据
			    	var data = datatable.rows().data();
			    	//循环列表
			    	for(var i = 0 ; i < data.length ; i++){
			    		//获取当前行的数据
			    		var rows = datatable.rows(i).data();
			    		if(rows[0].id == obj.id){
			    			rows[0].address = obj.address;·
			    			
			    			//当前行数据更新
			    			datatable.rows(i).data(rows[0]).draw();
			    		}
			    		//console.log(JSON.stringify(rows[0]));
			    	}
			    	/* $.each(data,function(i,n){
			    		var rows = datatable.rows(i).data();
			    		console.log(JSON.stringify(rows));
			    	}); */
					//console.log(obj.address);
			    }
	        }  
		</script>
	</body>
</html>