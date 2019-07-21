<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录-iMovie,高清电影下载,迅雷电影下载,最新电影下载</title>
<meta name="keywords" content="高清电影下载,迅雷电影下载,最新电影下载,iMovie,高清迅雷下载" />
<meta name="description"
	content="iMovie通过程序自动收集了很多最新电影的资源,喜欢看电影的可以到这下载,新老大片一网收录,更多内容期待您的发现。" />
<link rel="stylesheet" href="./css/bootstrap.css">
<script src="./js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" media="all"
	href="./css/login.css">
<script src="./js/jquery.validate.min.js"></script>
<link rel="stylesheet" href="css/verify.css" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
    <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
</head>
<body>
	<form class="main-box" role="form" action="login.hms" method="post">
		<h3 class="form-header">用户登录</h3>
		<div class="form-group">
			<label for="email">邮箱：</label> <input type="email"
				class="form-control" id="email" name="user_email"
				placeholder="Enter email">
		</div>
		<div class="form-group">
			<label for="pwd">密码：</label> <input type="password"
				class="form-control" id="pwd" name="user_password"
				placeholder="Password">
		</div>
		<!-- <div class="">

            <label >请输入验证码：</label><input type="text" id="in1" value="" placeholder="请输入验证码">
            <button id="b1">点击验证</button>
                <div></div><label id="l1"></label>
    </div>     -->

		<label style="margin-top: 4px">请将图块移动到正确位置:</label>
		<div class="form-group" >
			<div id="mpanel4"></div>

			<div id=verify_right>${msg}</div>
		</div>
		<div class="checkbox">
			<label> <input name="remember" value="yes" type="checkbox">
				记住登录(30天)
			</label>
		</div>
		<button type="submit" class="btn btn-primary btn-block">确认信息</button>
		<a class="extra" href="register.jsp">注册</a><a class="extra" href="">找回密码？</a><a
			class="extra" href="index.jsp">回到首页</a>
	</form>
	<script type="text/javascript">
		//alert("${msg}");
		//window.document.location.href="userlogin.html";
	</script>

	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/verify.js"></script>
	<script type="text/javascript" src="js/login.js"></script>

</body>
</html>