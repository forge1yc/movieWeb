<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>电影列表</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-1.11.3.min.js" type="text/javascropt"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script> 
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>

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

.carousel-inner .item img {
	width: 100%;
	heitht: 300px
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
				<li><a href="login.hms">登录</a></li>
				<li><a href="login.hms">注册</a></li>
				<!--  <li><a href="login.hms">购物车</a></li>-->

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
						<li><a href="#">动作电影</a></li>
						<li><a href="#">科幻电影</a></li>
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

	<div class="row" style="width: 1210px; margin: 0 atuo">
		<div class=" col - md -12 ">
			<ol class="breadcrumb">
				<li><a href="index.jsp">首页</a></li>
			</ol>
		</div>
	</div>
	<!-- pb.getListbeans()  -->
	<c:forEach items="${pb.listbeans }" var="film">
		<div class="col-md-2">
			<a href="findmid.hms?mid=${film.mid }"> <img
				src="${film.mimage }" alt="${film.mname }" width="160" height="220"
				style="display: inline-blocki;" />
			</a>
			<!-- 我这里用了双引号，应该没有什么不同 -->
			<p>
				<a href="findmid.hms?mid=${film.mid }" style="color: green">${film.mname }</a><br>
				<font color="#FF0000">导演:${film.director }</font>
			</p>
			<p>
				<font color="#FF0000">演员：${film.actor }</font>
			</p>
		</div>
	</c:forEach>

	<!-- 分页实现 -->
	<div class="clear"></div>
	<div style="width: 380px; margin =0 auto; margin-top: 50px;">
		<ul class="pagination" style="text-align: center; margin-top: 10px;">
			<c:choose>
				<c:when test="${pb.pc eq 1 }">
					<li class="disabled"><a href="#" aria-label="Previous"><span
							aria-hidden="true"> &laquo;</span></a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${pb.url }&pc=${pb.pc-1 }" aria-label="Previous"><span
							aria-hidden="true">&laquo; </span></a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach begin="1" end="${pb.tp }" var="i">
				<c:choose>
					<c:when test="${i eq pb.pc }">
						<li class="active"><a href="${pb.url }&pc=${i}">${i }</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pb.url }&pc=${i}">${i }</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${pb.pc eq pb.tp }">
					<li class="disabled"><a href="#" aria-label="Next"><span
							aria-hidden="true"> &raquo;</span></a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${pb.url }&pc=${pb.pc+1}" aria-label="Previous"><span
							aria-hidden="true">&raquo; </span></a></li>
				</c:otherwise>
			</c:choose>
		</ul>
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