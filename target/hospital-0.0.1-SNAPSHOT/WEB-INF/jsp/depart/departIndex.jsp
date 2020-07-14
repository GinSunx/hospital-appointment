<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>科室列表</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	session.setAttribute("mybasePath", basePath);
	
%>
<jsp:include page="../include/headtag.jsp" />
<link rel="stylesheet"
	href="${mybasePath}assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${mybasePath}assets//css/form-elements.css">
<link rel="stylesheet" href="${mybasePath}assets/css/style.css">
</head>
<body>
	<jsp:include page="../include/head.jsp" />
	<%--	<jsp:include page="../include/menu.jsp" />--%>
	<form class="form-search form-horizontal" id="setchInfo"
		action="<c:url value='/officeIndex/1' />" method="post"></form>
	<div id="page-wrapper" style="margin-top: 50px;">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<p class="text-left">推荐科室列表</p>
					<div class="col-md-12">
						<div class="nav navbar-nav navbar-right">
							<a href="/ssm_pro/orderOffice/1">查看全部科室</a>
						</div>
					</div>
				</div>
			</div>
			<hr />
			<br /> <br />
			<c:forEach var="depart" items="${officeRe }" varStatus="status" >
				<div class="col-md-3">
					<div class="thumbnail" style="width: 300px; height: 200px;">
						<div class="caption">
							<h3>${depart.officesName}</h3>
							<p>
								<span class="glyphicon glyphicon-home"></span>&nbsp;${depart.hospName}
							</p>
							<p>
								<a class="btn btn-primary"
									href="<c:url value='/officeInfoShow/${depart.id}' />">现在预约</a>
							</p>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>

</body>

<script src="${mybasePath}assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${mybasePath}assets/bootstrap/js/jquery.min.js"></script>
<script src="${mybasePath}assets/js/jquery.backstretch.min.js"></script>

</html>