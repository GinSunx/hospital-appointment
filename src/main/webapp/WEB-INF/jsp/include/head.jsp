<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Top menu -->

<nav class="navbar navbar-inverse navbar-no-bg navbar-fixed-top"
	role="navigation">
	<div class="container">
		<div style="position: absolute; left: 40px; top: 6px;"></div>
		<div style="position: absolute; left: 150px; top: -2px;">
			<a class="navbar-brand" href="<c:url value="/hosIndex" />"><font color="#fff">首页</font></a>
		</div>
		<div class="collapse navbar-collapse" id="top-navbar-1">
			<ul class="nav navbar-nav navbar-right">
				<li><span class="li-text"></span> <span class="li-text">
				</span> <span class="li-social"> </span>
					<div>
						<c:if test="${userInfo == null}">
							<a class="navbar-brand" style="font-size: 12px;"
								href="<c:url value="/login" />"><strong>登录</strong></a>
							<a class="navbar-brand" style="font-size: 12px;"
								href="<c:url value="/sign" />"><strong>注册</strong></a>
						</c:if>
						<c:if test="${userInfo.userEmail != null}">
							<c:if test="${userInfo.userIdent == null}">
								<a class="navbar-brand" style="font-size: 12px;"
									href="<c:url value="/addUserInfo" />"><strong>完善个人信息</strong></a>
							</c:if>
						</c:if>
						<c:if test="${userInfo.userIdent != null}">
							<a class="navbar-brand" style="font-size: 12px;" href="/hospital/userCenter"><strong><font color="#fff">欢迎您,${userInfo.userName }</font></strong></a>
							<a class="navbar-brand" style="font-size: 12px;"
								href="<c:url value="/logOff" />"><strong>注销</strong></a>
						</c:if>
					</div></li>
			</ul>
		</div>
	</div>
</nav>
