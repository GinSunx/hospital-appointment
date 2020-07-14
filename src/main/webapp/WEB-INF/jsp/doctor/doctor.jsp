<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>预约科室列表</title>
<jsp:include page="../include/headtag.jsp" />
<link rel="stylesheet" href="${mybasePath}assets/css/style.css">
</head>
<body>
	<jsp:include page="../include/head.jsp" />
	<div id="page-wrapper" style="margin-top: 50px;">
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<p class="text-left">预约科室列表</p>
					<hr />

							<div class="col-md-12">
								<div class="col-md-2">

									<input class="col-md-3 form-control" id="hospName"
										name="hospName" type="text" placeholder="医院名称"
										value="${commonCondition.hospName }"
										style="margin-bottom: 6px;"> <input
										class="col-md-3 form-control" id="departName"
										name="departName" type="text" placeholder="科室名称"
										value="${commonCondition.departName }"
										style="margin-bottom: 6px;"> <input
										class="col-md-3 form-control" id="doctorName"
										name="doctorName" type="text" placeholder="医生名称"
										value="${commonCondition.doctorName }">

								</div>
								<div class="col-md-2">
									<select style="margin-bottom: 6px;"
										class="col-md-2 form-control" id="doctoritle"
										name="doctorTitle">
										<option value="默认" selected="selected">请选择医生的职称</option>
										<c:forEach var="doctorTitle" items="${doctorTitle }"
											varStatus="status">
											<c:choose>
												<c:when
													test="${commonCondition.doctorTitle == doctorTitle }">
													<option value="${doctorTitle }" selected="selected">${doctorTitle }</option>
												</c:when>
												<c:otherwise>
													<option value="${doctorTitle }">${doctorTitle }</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select> <select style="margin-bottom: 6px;"
										class="col-md-2 form-control" id="doctorAdministrative"
										name="doctorAdministrative">
										<option value="默认">请选择行政职位</option>
										<c:forEach var="doctorAdministrative"
											items="${doctorAdministrative }" varStatus="status">
											<c:choose>
												<c:when
													test="${commonCondition.doctorAdministrative == doctorAdministrative }">
													<option value="${doctorAdministrative }"
														selected="selected">${doctorAdministrative }</option>
												</c:when>
												<c:otherwise>
													<option value="${doctorAdministrative }">${doctorAdministrative }</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select> <select style="margin-bottom: 6px;"
										class="col-md-2 form-control" id="doctorDegree"
										name="doctorDegree">
										<option value="默认">请选择医生的学位</option>
										<c:forEach var="doctorDegree" items="${doctorDegree }"
											varStatus="status">
											<c:choose>
												<c:when
													test="${commonCondition.doctorDegree == doctorDegree }">
													<option value="${doctorDegree }" selected="selected">${doctorDegree }</option>
												</c:when>
												<c:otherwise>
													<option value="${doctorDegree }">${doctorDegree }</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select>

								</div>
							</div>
							<div class="col-md-6 text-right">
								<div class="col-md-4 text-left"></div>
								<div class="col-md-4 text-right">
									<button type="submit" class="btn btn-primary " id="serchOffice">search</button>
								</div>
							</div>

						</fieldset>
				</div>
			</div>
			<hr />
			<br /> <br />
			<c:forEach var="doctor" items="${doctorRe }" varStatus="status">

				<div class="col-md-3">
					<div class="thumbnail">
						<div>
							<img alt="请检查网络，图片加载出现了一点小问题" src="${doctor.doctorImg}"
								height="200" width="200" />
						</div>
						<div class="caption">
							<h3>${doctor.doctorName}</h3>
							<p>
								<span class="glyphicon glyphicon-home"></span>&nbsp;${doctor.hospName}
							</p>
							<p>

								<a class="btn"
									href="<c:url value='/doctorInfoShow/${doctor.id}' />">详细信息</a>

							</p>
						</div>
					</div>
				</div>

			</c:forEach>
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
		$("#setchInfo").attr("action", "<c:url value='/allDoctor/"+url+"' />");
		$("#setchInfo").submit();
		return false;
	}
</script>
<script type="text/javascript">
	function tijiao(url) {
		$("#setchInfo").attr("action", "<c:url value='/allDoctor/"+url+"' />");
		$("#setchInfo").submit();
		return false;
	}
</script>

</html>