<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>电影详情</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-1.11.3.min.js" type="text/javascropt"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>

<!-- 自定义的css文件 -->
<Link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="./css/movieList.css">
</head>
<style>
body {
	margin-top: 20px;
	margin: 0 auto;
	width: 1030px;
}
</style>
<body>
	<script type="text/javascript" color="255,0,0" opacity='0.7'
		zIndex="-2" count="200" src="./js/canvas-nest.js"></script>

	<!--  菜单栏 -->
	<div class="container-fluid">
		<div class="col-md-4">
			<img src="images/logo_meitu_2.jpg" />
		</div>
		<div class="col-md-5">
			<img src="" />
		</div>
		<div class="col-md-3" style="padding-top: 20px">
			<ol class="list-inline">
				<c:choose>
					<c:when test="${!empty(user) }">
						<li><a href="user.jsp">个人中心</a></li>
						<li><a href="quit.hms">注销</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login.jsp">登录</a></li>
						<li><a href="register.jsp">注册</a></li>
					</c:otherwise>
				</c:choose>
			</ol>
		</div>
	</div>
	<!-- 导航条 -->
	<div class="container-fluid">
		<nav class="navbar navnar-inuverse">
			<div class="container-fluid">
				<!-- brand and toggle get grouped for better -->
				<div class="navbar-header">
					<button type="button" class=“navbar-toggle data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1" aria-expended="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"></a>
				</div>
				<!-- collect the nav links,forms,and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="findfilms.hms">爱情电影<span
								class="sr-only">(current)</span></a></li>
						<li><a href="#">科幻电影</a></li>
						<li><a href="#">动作电影</a></li>
						<li><a href="#">动漫电影</a></li>
					</ul>
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</div>

			</div>
		</nav>
	</div>

	<div class="continer">
		<div class="row">
			<div
				style="border: 1px solid #e4e4e4; width: 930px; margin-bottom: 10px; margin: 0 atuo; padding: 10px; margin-bottom: 10px;">
				<a href="index.jsp">首页 &nbsp;&nbsp;&gt;</a>
			</div>
			<div style="margin: 0 auto; width: 950px;">
				<div class="col-md-6">
					<img
						style="opacity: 1; width: 160px; height: 220px; margin-left: 150px;"
						title="${film.mname }${film.mtime }" class="medium"
						src="${film.mimage }" alt="${film.mname }">
				</div>

				<div class="col-md-6">
					<div>
						<strong>${ film.mname}</strong>
					</div>
					<div
						style="border-bottom: 1px dotted #dddddd; width: 350px; margin: 10px 0 10px 0;">
						<div>编号：${film.mid }</div>
					</div>

					<div style="margin: 10px 0;">
						导演:<strong style="color: #ef0101">${film.director }</strong><br />
						演员：<strong style="color: green;">${film.actor }</strong>
					</div>

					<div style="margin: 10px 0;">
						上映时间:<a target="_blank" style="background-color: #f07373;">
							${film.mtime }</a>
					</div>



				</div>
				<div class="clear"></div>
				<div style="width: 950px; margin: 0 auto;"></div>
				<div
					style="background-color: #d3d3d3; width: 930px; padding: 10px 10px; margin: 10px 0;">
					<strong>电影详情</strong>
				</div>

				<div>${film.mdesc }</div>
			</div>
		</div>
	</div>
	<div class="cl"></div>
	<footer>
		<div class="foot">
			<p>
				免责声明：本网站所有内容都是靠程序在互联网上自动搜集而来，仅供测试和学习交流。 <br>

			</p>
			<p>若侵犯了您的权益，请发邮件通知站长，邮箱：houyichaochao@gmail.com</p>
			<p class="friend-link">
				友情链接： <a target="_blank" href="http://www.mtime.com/">Mtime时光网</a>
			</p>
			<em> ♥ <a href="/movieWeb/index.jsp">iMovie</a> · VERSION:
				0.19.7.21
			</em>
		</div>
	</footer>
</body>
</html>