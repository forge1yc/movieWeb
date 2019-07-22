<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 网站图标 -->
<link rel="shortcut icon" href="/images/iMovie_favicon.ico">
<title>iMovie</title>
<meta name="keywords" content="">
<meta name="description" content="">
<script src="./js/jquery-1.11.3.min.js"></script>
<script src="./js/index.js"></script>

<link rel="stylesheet" href="./css/index.css">
</head>
<body onload="displaytime()">
	<%-- 一个非常赞的网页渲染工具 --%>
	<script type="text/javascript" color="255,0,0" opacity='0.7'
		zIndex="-2" count="200" src="./js/canvas-nest.js"></script>
	<div id="top">
		<div class="top_main">
			<div class="top_main_left">
				<p>欢迎来到iMovie，一起分享电影给我们带来的快乐。</p>
			</div>
			<div class="top_main_center">
				<p id="top_main_time"></p>
			</div>
			<div class="top_main_right">
				<a class="top_main_right_1" href="">保存到桌面</a>
				<c:if test="${ !empty(user)}">
					<a class="top_main_right_2" href="">hello:${user.userName }</a>
				</c:if>
				<c:if test="${empty(user) }">
					<a class="top_main_right_2" href="login.jsp">请登录</a>
				</c:if>
			</div>
		</div>
	</div>
	<header>
		<div class="logo">
			<h1>
				<a href="index.jsp"><img src="images/logo2.png" alt="iMovie"></a>
			</h1>
		</div>
		<div class="search">
			<form action="" method="post">
				<input type="search" name="search" placeholder="请输入电影名字"> <input
					type="submit" name="anniu" value="搜索">
			</form>
			<div class="tj">
				<a href="#">星际迷航3</a> <a href="#">谍影重重5</a> <a href="#">使徒行者</a> <a
					href="#">盗墓笔记</a> <a href="#">喊·山</a>
			</div>
		</div>
	</header>
	<nav>
		<div class="nav">
			<div class="nav_item">
				<a href="index.jsp">
					<p>首页</p>
					<p>Home</p>
				</a>
			</div>
			<div class="nav_item">
				<a href="#">
					<p>电影</p>
					<p>Movie</p>
				</a>
			</div>
			<div class="nav_item">
				<a href="#">
					<p>电视剧</p>
					<p>Teleplay</p>
				</a>
			</div>
			<div class="nav_item">
				<a href="#">
					<p>动漫</p>
					<p>Cartoon</p>
				</a>
			</div>
			<div class="nav_item">
				<a href="#">
					<p>交流圈</p>
					<p>BBS</p>
				</a>
			</div>
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
		</div>
	</nav>
	
	
<p>待添加</p>	
	
	
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