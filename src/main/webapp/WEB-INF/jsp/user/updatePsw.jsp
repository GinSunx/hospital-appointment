<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户找回密码</title>
<jsp:include page="../include/headtag.jsp" />
<link rel="stylesheet"
	href="assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/form-elements.css">
<link rel="stylesheet" href="assets/css/style.css">

<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<style>
input:-webkit-autofill {
	-webkit-box-shadow: 0 0 0px 1000px white inset;
	border: 1px solid #CCC !important;
}
</style>
</head>

<body>
	<jsp:include page="../include/head.jsp" />
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3 style="color: #969696;">修改密码</h3>
								<p>请输入新的密码</p>
							</div>
							<div class="pull-right-bottom">
								<p class="text-danger"
									style="position: absolute; right: 60px; bottom: 300px"
									id="errorTip">${error}</p>
							</div>

						</div>

						<div class="form-bottom">
							<form role="form" action="updatePsw" method="post" class="login-form" id="findPwdForm">
								<div class="form-group col-xs-12">
								<label class="sr-only" for="userPsw">password</label>密码(*):<input
									style="font-weight: bold" type="password" name="newPsw"
									class="form-password form-control" id="userPsw" required />
							</div>
							<div class="form-group col-xs-12">
								<label class="sr-only" for="userPswCof">pswCof</label>确认密码(*):<input
									style="font-weight: bold" type="password"
									name="userPswCof" class="form-password form-control "
									id="userPswCof" required onkeyup="isCheckPwd()" /> <span id="pwdTip"></span>
							</div>
								<div class="form-group col-xs-12">
									<button type="submit" class="btn">更改密码</button>
								</div>
							</form>
							 <span><a href="login">用户登录</a></span> <span><a href="sign"
								class="pull-right">用户注册</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Javascript -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
	
	<script>
		function isCheckPwd() {
			var pwd1 = document.getElementById("pwd1").value;
			var pwd2 = document.getElementById("pwd2").value;
			document.getElementById("errorTip").innerHTML = "";
			if (pwd1 == pwd2) {
				document.getElementById("pwdTip").innerHTML = "两次密码相同";
				document.getElementById("btn").disabled = false;
			} else {
				document.getElementById("pwdTip").innerHTML = "两次密码不相同";
				document.getElementById("btn").disabled = true;
			}
		}
	</script>
	<script type="text/javascript">
		function isClearTip() {
			document.getElementById("errorTip").innerHTML = "";
		}
	</script>

</body>

</html>