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
	<form class="form-search form-horizontal" id="setchInfo"
		action="<c:url value='/doctorIndex/1' />" method="post"></form>
	<div id="page-wrapper" style="margin-top: 50px;">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-12">
						<div class="nav navbar-nav navbar-right">
							<a href="/hospital/allDoctor/1">查看更多医生</a>
						</div>
					</div>
				</div>
			</div>
			<hr />
			<br /> <br />

		</div>
		<c:if test="${pages.totalPage > 0}">
			<ul class="pagination pagination-lg">
				<li <c:if test="${pages.currentPage < 1}">class="disabled"</c:if>><a
					href="#">&laquo;</a></li>
				<c:forEach begin="${pages.pageNumStart }" end="${pages.pageNumEnd }"
					varStatus="status">
					<li
						<c:if test="${status.index == pages.currentPage }">class="active"</c:if>>
						<a href="javascript:void(0);" onclick="tijiao('${status.index }')">
							${status.index } </a>
					</li>
				</c:forEach>
				<li
					<c:if test="${pages.currentPage> pages.totalPage}">class="disabled"</c:if>><a
					href="javascript:void(0);" onclick="tijiao('${pages.nextPage }')">&raquo;</a></li>
				<li><input id="tijiaoInput" name="tijiaoInput" type="text"
					class="form-control col-md-1" style="width: 60px; height: 54.89px"></li>
				<li><a onclick="tijiaoInput()">Go</a></li>
				<li class="disabled"><a>共${pages.totalPage}页${pages.totalRecord}条记录</a>
			</ul>
		</c:if>
	</div>

</body>
<script src="${mybasePath}assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${mybasePath}assets/bootstrap/js/jquery.min.js"></script>
<script src="${mybasePath}assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript">
	function tijiaoInput() {
		var url = $("#tijiaoInput").val();
		if (url == "") {
			alert("请输入翻页数目");
			$("#tijiaoInput").attr("value", "");
			return false;
		} else {
			var match = /^[1-9][0-9]*[0-9]*$/;
			if (!match.test(url)) {
				$("#tijiaoInput").val("");
				alert("请正确填写翻页数目");

				return false;
			}
		}
		$("#setchInfo")
				.attr("action", "<c:url value='/doctorIndex/"+url+"' />");
		$("#setchInfo").submit();
		return false;
	}
</script>
<script type="text/javascript">
	function tijiao(url) {
		$("#setchInfo")
				.attr("action", "<c:url value='/doctorIndex/"+url+"' />");
		$("#setchInfo").submit();
		return false;
	}
</script>
</html>