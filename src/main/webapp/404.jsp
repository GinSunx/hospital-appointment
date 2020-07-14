<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>惠州市医院预约挂号</title>
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
					<div id="tip" class="jumbotron text-left" style="padding-left: 45px;background-color: #ffffff">
						<div class="modal-header" style="padding-left: 45px;background-color: #ffffff">
							<button id="close" name = "close" type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
						</div>
						<h2>	
							惠州市医院挂号系统上线了
							</h1>
							<p>为提高患者预约效率,改善患者预约体验,建立惠州市预约挂号统一平台.</p>
					</div>
				</div>
			</div>
			<hr />
			<div class="carousel slide" id="carousel-630453">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-630453"></li>
					<li data-slide-to="1" data-target="#carousel-630453" class="active"></li>
					<li data-slide-to="2" data-target="#carousel-630453"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item">
						<img alt="" src="${mybasePath}assets/img/1.jpg" />
						<div class="carousel-caption">
							<p>惠州市挂号系统已上线</p>
							<p>热烈庆祝挂号系统上线,已经支持网上预付功能。</p>
						</div>
					</div>
					<div class="item active">
						<img alt="" src="${mybasePath}assets/img/2.jpg" />
						<div class="carousel-caption">
							<p>全国医院查询功能</p>
							<p>支持4万余医院信息查询，助您准确查询医院信息。</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="${mybasePath}assets/img/3.jpg" />
						<div class="carousel-caption">
							<p>常见疾病</p>
							<p>查询常见疾病，提前预防，准确医治。</p>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-630453"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" href="#carousel-630453"
					data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>

</body>

<script src="${mybasePath}assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${mybasePath}assets/bootstrap/js/jquery.min.js"></script>
<script src="${mybasePath}assets/js/jquery.backstretch.min.js"></script>
    <script type="text/javascript">
    $("#close").click(function(){
    	 /*  $("#tip").remove();  */
    	  $("#tip").fadeTo("slow", 0.01, function(){//fade
    		    $(this).slideUp("slow", function() {//slide up
    		      $(this).remove();//then remove from the DOM
    		    });
    		  }); 
    });
    </script>
</html>