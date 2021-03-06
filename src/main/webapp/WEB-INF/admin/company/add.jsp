
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="/WEB-INF/common/500.jsp"%>
<%@include file="/WEB-INF/common/tld.jsp"%>

<c:set var="url" value="${base}/admin/company" />

<!DOCTYPE HTML>
<html lang="en-US" id="addHtml">
<head>
	<meta charset="UTF-8">
	<title>添加</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
	<link rel="stylesheet" href="${base}/references/public/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="${base}/references/public/dist/newvisacss/css/AdminLTE.css">
	<link rel="stylesheet" href="${base}/references/public/dist/newvisacss/css/bootstrapValidator.css">
</head>
<body>
	<div class="modal-content">
		<form id="companyAddForm">
			<div class="modal-header">
				<span class="heading">添加</span>
				<input id="backBtn" type="button" onclick="closeWindow()" class="btn btn-primary pull-right btn-sm" data-dismiss="modal" value="取消"/>
				<input id="addBtn" type="button" onclick="save();" class="btn btn-primary pull-right btn-sm btn-right" value="保存"/>
			</div>
			<div class="modal-body">
				<div class="tab-content">
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>管理员账号id：</label>
										<input id="adminId" name="adminId" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																												<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>公司名称：</label>
												<input id="comName" name="comName" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																																																																																																																																																																																																																																				</div>
												
										
												
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>公司类型：</label>
										<input id="comType" name="comType" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																																																														<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>备注：</label>
												<input id="remark" name="remark" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																																																																																																																																																																																																		</div>
												
										
												
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>联系人：</label>
										<input id="connect" name="connect" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																																																																																																<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>联系人手机号：</label>
												<input id="mobile" name="mobile" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																																																																																																																																																																</div>
												
										
												
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>邮箱：</label>
										<input id="email" name="email" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																																																																																																																																		<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>座机：</label>
												<input id="phonenumber" name="phonenumber" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																																																																																																																														</div>
												
										
												
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>地址：</label>
										<input id="address" name="address" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																																																																																																																																																																				<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>营业执照：</label>
												<input id="license" name="license" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																																																																																												</div>
												
										
												
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>操作人：</label>
										<input id="opid" name="opid" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																																																																																																																																																																																																						<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>创建时间：</label>
												<input id="createtime" name="createtime" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																																																										</div>
												
										
												
										
													<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label><span>*</span>最后修改时间：</label>
										<input id="lastupdatetime" name="lastupdatetime" type="text" class="form-control input-sm" placeholder=" " />
									</div>
								</div>
																
																																																																																																																																																																																																																																																								<div class="col-sm-6">
											<div class="form-group">
												<label><span>*</span>删除标识：</label>
												<input id="deletestatus" name="deletestatus" type="text" class="form-control input-sm" placeholder=" " />
											</div>
										</div>
																								</div>
												
										
												
										
				</div>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		var BASE_PATH = '${base}';
	</script>
	<!-- jQuery 2.2.3 -->
	<script src="${base}/references/public/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="${base}/references/public/bootstrap/js/bootstrap.js"></script>
	<script src="${base}/references/public/plugins/fastclick/fastclick.js"></script>
	<script src="${base}/references/public/dist/newvisacss/js/bootstrapValidator.js"></script>
	<script src="${base}/references/common/js/layer/layer.js"></script>

	<script type="text/javascript">
		var base = "${base}";
		$(function() {
			//校验
			$('#companyAddForm').bootstrapValidator({
				message : '验证不通过',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
				
									adminId : {
						validators : {
							notEmpty : {
								message : '管理员账号id不能为空'
							}
						}
					},
									comName : {
						validators : {
							notEmpty : {
								message : '公司名称不能为空'
							}
						}
					},
									comType : {
						validators : {
							notEmpty : {
								message : '公司类型不能为空'
							}
						}
					},
									remark : {
						validators : {
							notEmpty : {
								message : '备注不能为空'
							}
						}
					},
									connect : {
						validators : {
							notEmpty : {
								message : '联系人不能为空'
							}
						}
					},
									mobile : {
						validators : {
							notEmpty : {
								message : '联系人手机号不能为空'
							}
						}
					},
									email : {
						validators : {
							notEmpty : {
								message : '邮箱不能为空'
							}
						}
					},
									phonenumber : {
						validators : {
							notEmpty : {
								message : '座机不能为空'
							}
						}
					},
									address : {
						validators : {
							notEmpty : {
								message : '地址不能为空'
							}
						}
					},
									license : {
						validators : {
							notEmpty : {
								message : '营业执照不能为空'
							}
						}
					},
									opid : {
						validators : {
							notEmpty : {
								message : '操作人不能为空'
							}
						}
					},
									createtime : {
						validators : {
							notEmpty : {
								message : '创建时间不能为空'
							}
						}
					},
									lastupdatetime : {
						validators : {
							notEmpty : {
								message : '最后修改时间不能为空'
							}
						}
					},
									deletestatus : {
						validators : {
							notEmpty : {
								message : '删除标识不能为空'
							}
						}
					},
									
				}
			});
		});
		/* 页面初始化加载完毕 */
		
		/*保存页面*/ 
		function save() {
			//初始化验证插件
			$('#companyAddForm').bootstrapValidator('validate');
			//得到获取validator对象或实例 
			var bootstrapValidator = $("#companyAddForm").data('bootstrapValidator');
			// 执行表单验证 
			bootstrapValidator.validate();
			if (bootstrapValidator.isValid()) {
				//获取必填项信息
									var adminId = $("#adminId").val();
					if(adminId==""){
						layer.msg('adminId不能为空');
						return;
					}
									var comName = $("#comName").val();
					if(comName==""){
						layer.msg('comName不能为空');
						return;
					}
									var comType = $("#comType").val();
					if(comType==""){
						layer.msg('comType不能为空');
						return;
					}
									var remark = $("#remark").val();
					if(remark==""){
						layer.msg('remark不能为空');
						return;
					}
									var connect = $("#connect").val();
					if(connect==""){
						layer.msg('connect不能为空');
						return;
					}
									var mobile = $("#mobile").val();
					if(mobile==""){
						layer.msg('mobile不能为空');
						return;
					}
									var email = $("#email").val();
					if(email==""){
						layer.msg('email不能为空');
						return;
					}
									var phonenumber = $("#phonenumber").val();
					if(phonenumber==""){
						layer.msg('phonenumber不能为空');
						return;
					}
									var address = $("#address").val();
					if(address==""){
						layer.msg('address不能为空');
						return;
					}
									var license = $("#license").val();
					if(license==""){
						layer.msg('license不能为空');
						return;
					}
									var opid = $("#opid").val();
					if(opid==""){
						layer.msg('opid不能为空');
						return;
					}
									var createtime = $("#createtime").val();
					if(createtime==""){
						layer.msg('createtime不能为空');
						return;
					}
									var lastupdatetime = $("#lastupdatetime").val();
					if(lastupdatetime==""){
						layer.msg('lastupdatetime不能为空');
						return;
					}
									var deletestatus = $("#deletestatus").val();
					if(deletestatus==""){
						layer.msg('deletestatus不能为空');
						return;
					}
								
				$.ajax({
					type : 'POST',
					data : $("#companyAddForm").serialize(),
					url : '${base}/admin/company/add.html',
					success : function(data) {
						var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
						layer.close(index);
						window.parent.layer.msg("添加成功", "", 3000);
						parent.layer.close(index);
						parent.datatable.ajax.reload();
					},
					error : function(xhr) {
						layer.msg("添加失败", "", 3000);
					}
				});
			}
		}
		
		//返回 
		function closeWindow() {
			var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
			parent.layer.close(index);
		}
	</script>
	
	
</body>
</html>
