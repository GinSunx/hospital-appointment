<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户中心</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	session.setAttribute("mybasePath", basePath);
%>
<jsp:include page="../include/headtag.jsp" />

<link rel="stylesheet"
	href="${mybasePath}assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${mybasePath}assets/css/form-elements.css">
<link rel="stylesheet" href="${mybasePath}assets/css/style.css">
</head>
<body>
	<jsp:include page="../include/head.jsp" />
	<div id="page-wrapper" style="margin-top: 50px;">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<p class="text-left">个人中心</p>
				</div>
			</div>
			<hr />
			<ul class="nav nav-tabs">
				<li class="active"><a href="#order" data-toggle="tab">预约信息</a></li>
				<li><a href="#userInfo" data-toggle="tab">个人信息</a></li>
				<li><a href="updatePsw" >修改密码</a></li>

			</ul>
			<br>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade active in text-left" id="order">
					<div class="col-md-12">
						<p class="text-left">
							<font color="#eb6864">我的预约</font>
						</p>
					</div>

					<table class="table table-striped table-hover ">
						<thead>
							<tr>
								<th>订单</th>
								<th>就诊日期</th>
								<th>就诊时间段</th>
								<th>医院</th>
								<th>科室</th>
								<th>医生</th>
								<th>订单状态</th>
								<th>订单创建时间</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="orderRecords" items="${orderRecords }"
								varStatus="status">
								<tr>
									<td>${ status.index + 1}</td>
									<td>${orderRecords.appointmentDate }</td>
									<td>${orderRecords.appointmentTime }</td>
									<td>${orderRecords.hospName }</td>
									<td>${orderRecords.departName }</td>
									<td>${orderRecords.doctorName }</td>
									<td>
											<c:if test="${orderRecords.isCancel ==0 }">
												<c:if test="${orderRecords.isSuccess ==0 }">
													<c:if test="${orderRecords.state ==1 }">订单已提交</c:if>
												</c:if>
											</c:if>

											<c:if test="${orderRecords.isSuccess ==1 }">
													<c:if test="${ orderRecords.isCancel ==0}">
														<font color="#eb6468">预约成功(待通知)</font>
													</c:if>
												</c:if>
									<c:if test="${orderRecords.isCancel ==2 }">
											<font color="#000">已取消</font>

										</c:if> <c:if test="${orderRecords.state ==0 }">

											<font color="#eb6468">订单未提交</font>
										</c:if></td>
									<c:if test="${orderRecords.isSuccess==1}">
										<c:if test="${orderRecords.isCancel == 0}">
											<font color="#eb6468">订单已完成</font>
										</c:if>
									</c:if>
									<td>${orderRecords.createTime }</td>
									<td>
										<c:if test="${orderRecords.state==1 }">
											<c:if test="${orderRecords.isCancel==0 }">
												<a href="#myModal${orderRecords.id}" data-toggle="modal">取消订单</a><br>
											</c:if>
										</c:if>

										<c:if test="${orderRecords.isCancel == 2}">
											<a href="deleteOrder/${orderRecords.id}">删除</a >
										</c:if>
										<c:if test="${orderRecords.state == 0}">
											<a href="deleteOrder/${orderRecords.id}">删除</a >
										</c:if>

										<div class="modal fade" id="myModal${orderRecords.id}"
											tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">×</button>
														<p id="myModalLabel">确认取消</p>
													</div>
													<div class="modal-body">
														<p class="error-text">
															<i class="icon-warning-sign modal-icon"></i>
															未通过审核取消不受影响，审核通过取消将受到处罚，你确定要取消订单吗?
														</p>
													</div>
													<div class="modal-footer">
														<form id="cancel" method="post"
															action="<c:url value="/cancelOrder/${orderRecords.id}"/>">
															<button class="btn btn-primary" data-dismiss="modal"
																aria-hidden="true">我再想想</button>
															<button class="btn btn-primary" id="submit" name="submit"
																onclick="cancel();">确认取消</button>
														</form>
													</div>
												</div>
											</div>
										</div></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="tab-pane fade text-left" id="userInfo">
					<div class="panel panel-primary text-left">
						<div class="panel-heading">
							<p class="panel-title">个人信息</p>
						</div>
						<div class="panel-body">
							<div class="col-md-12">
								<div class="col-md-12">
									<p>姓名：${commonUser.userName }&nbsp;</p>
								</div>
							</div>
							<div class="col-md-12 text-left">
								<div class="col-md-12 text-left">
									<div
										style="width: 70px; height: 36px; margin: 0px 0px 0px 0px; float: left;">
										<p>性别：</p>
									</div>
									<div
										style="width: 70px; height: 36px; margin-top: 15px; float: left;">

										<select style="margin-bottom: 6px;"
											class="col-md-2 form-control" id="userSex" name="userSex">
											<option value="${commonUser.userSex }" selected="selected">${commonUser.userSex }</option>
											<c:if test="${commonUser.userSex=='男' }">
												<option value="女">女</option>
											</c:if>
											<c:if test="${commonUser.userSex=='女' }">
												<option value="男">男</option>
											</c:if>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-3">
									<p>手机号：${commonUser.userTel }</p>
								</div>
								<div class="col-md-3">
									<p>
										<a href="/hospital/modifyPhone">修改手机号码</a>
									</p>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-12">
									<p>邮箱：${commonUser.userEmail }</p>
									<div class="alert alert-dismissible alert-warning">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<strong>请注意!</strong> 用户邮箱将作为通知依据 ，更改邮箱请进行申诉.）
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-12">
									<p>身份证：${commonUser.userIdent }</p>
									<div class="alert alert-dismissible alert-warning">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<strong>请注意!</strong> 用户身份证将作为认证 ，更改身份证请进行申诉.）
									</div>
								</div>
							</div>
							<div class="col-md-12 text-left">
								<div class="col-md-12">
									<button class="btn btn-primary btn-lg" id="updateSexButton"
										name="updateSexButton">保存信息</button>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="tab-pane fade" id="myFavourite">
					<div class="panel panel-primary ">

						<div class="panel-body">

							<c:forEach var="hos" items="${hospitals }" varStatus="status">
								<%-- <c:forEach var="i" begin="1" end="9" varStatus="status"> --%>
								<div class="col-md-3">
									<div class="thumbnail" style="width: 300px; height: 400px;">
										<div>
											<img alt="请检查网络，图片加载出现了一点小问题" src="${hos.hospImg}"
												height="200" width="200" />
										</div>
										<div class="caption">
											<p>${hos.hospName}</p>

											<p>
												<span class="glyphicon glyphicon-home"></span>&nbsp;${hos.hospAddress}
											</p>
											<p>
													<a class="btn btn-primary"
														href="<c:url value='/hosInfoShow/${hos.id}' />">现在预约</a>
													<a class="btn "
														href="<c:url value='/hosInfoShow/${hos.id}' />">详细信息</a>
											</p>
										</div>
									</div>
								</div>

							</c:forEach>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
</body>

<script src="${mybasePath}assets/bootstrap/js/jquery.min.js"></script>
<script src="${mybasePath}assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#updateSexButton")
				.click(
						function() {
							$
									.post(
											"/hospital/updateSex",
											{
												'userSex' : $("#userSex").val()
											},
											function(result) {
												if (result.userSexInfo != "") {

													if (result.userSexInfo == "男") {
														alert("修改成功");
														var userSexInfo = '<option value="男">男</option>';
														userSexInfo += '<option value="女">女</option>'
														$(
																"select[name='userSex']")
																.empty()
																.append(
																		userSexInfo);
													} else {
														alert("修改成功");
														var userSexInfo = '<option value="女">女</option>';
														userSexInfo += '<option value="男">男</option>';
														$(
																"select[name='userSex']")
																.empty()
																.append(
																		userSexInfo);
													}

												}
											});
						});
	});
</script>
<script type="text/javascript">
	function cancel() {
		$("#cancel").submit();
		return false;
	}
</script>
</html>