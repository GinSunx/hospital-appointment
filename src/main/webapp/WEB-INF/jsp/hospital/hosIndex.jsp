<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>惠州市网上预约挂号</title>
<jsp:include page="../include/headtag.jsp" />
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">
	<style>
		.thumbnail {
			position: relative;
            box-shadow: 2px 2px 2px rgba(0,0,0,0.1);
		}
		.caption p:nth-child(2) {

			position: absolute;
			top: 300px;
			left: 0;
			margin: 0 22px;

		}
		.caption p:last-child {
			position: absolute;
			top: 400px;
			left: 0;
			margin: 0 60px;
		}
		.box input {
			height: 35px;
			margin: 20px 0;
			margin-right: 5px;
		}
	</style>
</head>
<body>
	<jsp:include page="../include/head.jsp" />

	<div id="page-wrapper" style="margin-top: 50px;">
		<div id="page-inner">

			<div class="box">
				<input type="text" placeholder="输入医院名称"><a href="#">点击查询</a>
			</div>
			<c:forEach var="hos" items="${hospital}" varStatus="status">
				<div class="col-md-3">
					<div class="thumbnail" style="width: 200px; height: 500px;">
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
								<a class="btn btn-primary" href="<c:url value='/hosInfoShow/${hos.hospId}' />">现在预约</a>


							</p>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
</body>

<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/bootstrap/js/jquery.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>

</html>