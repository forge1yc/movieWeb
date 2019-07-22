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
			<form action="findname.hms" method="post">
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
				<a href="#">
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
	<div class="gg">公告：如果你喜欢iMovie，希望你能把iMovie推广给更多的朋友，多谢！</div>
	<div class="out l">
		<div class="hot">
			<img src="./images/ribbon.png" alt="HoT">
		</div>
		<ul class="img ">
			<li><a href="# "> <img src="./images/1.jpg" alt=" ">
			</a></li>
			<li><a href="# "> <img src="./images/2.jpg " alt=" ">
			</a></li>
			<li><a href="# "> <img src="./images/3.jpg " alt=" ">
			</a></li>
			<li><a href="# "> <img src="./images/4.jpg " alt=" ">
			</a></li>
			<li><a href="# "> <img src="./images/1.jpg " alt=" ">
			</a></li>
		</ul>
		<ul class="num ">
		</ul>
		<div class="left btn "></div>
		<div class="right btn right-btn"></div>
	</div>
	<div class="box-line">
		<span>推荐资源</span>
	</div>
	<div class="menu">
		<div class="menu_item">
			<div class="menu_item_img">
				<a href="#"> <img
					src="./images/0069qWFHgw1f899r65iarj30d707nwes.jpg" alt="狮子王">
					<img src="./images/lion2_meitu_3.jpg" alt="狮子王">
				</a> <span class="menu_item_img_title">【1080P】<无间道-无间风云再起>第一季12集全</span>
			</div>
			<div class="menu_item_img">
				<a href="#"> <img
					src="./images/0069qWFHgw1f899r65iarj30d707nwes.jpg" alt="图片">
					<img src="./images/lion2_meitu_3.jpg" alt="狮子王">
				</a>
			</div>
			<div class="menu_item_img">
				<a href="#"> <img
					src="./images/0069qWFHgw1f899r65iarj30d707nwes.jpg" alt="图片">
					<img src="./images/lion2_meitu_3.jpg" alt="狮子王">
				</a>
			</div>
			<div class="menu_item_img">
				<a href="#"> <img
					src="./images/0069qWFHgw1f899r65iarj30d707nwes.jpg" alt="图片">
					<img src="./images/lion2_meitu_3.jpg" alt="狮子王">
				</a>
			</div>
		</div>
	</div>
	<main>
	<div class="main">
		<div class="main_title">
			<h3>最新电影</h3>
			<a href="">更多>></a>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<div class="main_item">
			<a class="main_item_img" href=""> <img class="main_item_img_tu"
				src="./images/0069qWFHjw1f5ukwnznnnj30b90go77h.jpg" alt=""> <img
				class="main_item_ico" src="./images/play-icon.png" alt=""> <span
				class="cq">超清</span>
			</a>
			<div class="main_item_title">
				<h1>
					<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
				</h1>
				<div class="main_item_title_lei">
					类型： <a class="movietype" target="_blank" href="#">动作</a> <a
						class="movietype" target="_blank" href="#">科幻</a> <a
						class="movietype" target="_blank" href="#">恐怖</a>
				</div>
			</div>
		</div>
		<%-- 单纯的分隔 --%>
		<div class="cl"></div>
		<%-- 我改成 --%>
		<div class="main_add">
			<img src="./images/advertising2.jpg" alt="">
		</div>
	</div>
	<div class="right">
		<div class="right_title">
			<h3>热门电影</h3>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-red">1</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-red">2</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-red">3</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">4</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">5</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">6</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">7</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">8</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">9</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">10</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="right_title2">
			<h3>本周精选</h3>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-red">1</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-red">2</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-red">3</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">4</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">5</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">6</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">7</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">8</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">9</span> 蜘蛛侠：英雄远征
			</a>
		</div>
		<div class="list-group">
			<a class="list-group-item" title="蜘蛛侠：英雄远征-迅雷下载" target="_blank"
				href="#"> <span class="square-item-blue">10</span> 蜘蛛侠：英雄远征
			</a>
		</div>
	</div>
	</main>
	<div class="main2">
		<div class="main2_title">
			<h3>电视剧推荐</h3>
			<a href="">更多>></a>
		</div>
		<div class="main2_item">
			<div class="main2_item_img">
				<a href="#"><img
					src="./images/0069qWFHgw1f8hc7xrwgmj30br0goq7e.jpg" alt=""></a> <span
					class="gq">超清</span>
				<div class="main2_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a>
						<%--  --%>
						<em> - 6.0分</em>
					</h1>
					<div class="main2_item_title_lei">
						类型： <a class="movietype2" target="_blank" href="#">动作</a> <a
							class="movietype2" target="_blank" href="#">科幻</a> <a
							class="movietype2" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main2_item">
			<div class="main2_item_img">
				<a href="#"><img
					src="./images/0069qWFHgw1f8hc7xrwgmj30br0goq7e.jpg" alt=""></a> <span
					class="gq">超清</span>
				<div class="main2_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main2_item_title_lei">
						类型： <a class="movietype2" target="_blank" href="#">动作</a> <a
							class="movietype2" target="_blank" href="#">科幻</a> <a
							class="movietype2" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main2_item">
			<div class="main2_item_img">
				<a href="#"><img
					src="./images/0069qWFHgw1f8hc7xrwgmj30br0goq7e.jpg" alt=""></a> <span
					class="gq">超清</span>
				<div class="main2_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main2_item_title_lei">
						类型： <a class="movietype2" target="_blank" href="#">动作</a> <a
							class="movietype2" target="_blank" href="#">科幻</a> <a
							class="movietype2" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main2_item">
			<div class="main2_item_img">
				<a href="#"><img
					src="./images/0069qWFHgw1f8hc7xrwgmj30br0goq7e.jpg" alt=""></a> <span
					class="gq">超清</span>
				<div class="main2_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main2_item_title_lei">
						类型： <a class="movietype2" target="_blank" href="#">动作</a> <a
							class="movietype2" target="_blank" href="#">科幻</a> <a
							class="movietype2" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main2_item">
			<div class="main2_item_img">
				<a href="#"><img
					src="./images/0069qWFHgw1f8hc7xrwgmj30br0goq7e.jpg" alt=""></a> <span
					class="gq">超清</span>
				<div class="main2_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main2_item_title_lei">
						类型： <a class="movietype2" target="_blank" href="#">动作</a> <a
							class="movietype2" target="_blank" href="#">科幻</a> <a
							class="movietype2" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%--这里自己加的 分页 --%>
	<div class="main2_add"></div>
	<div class="main3">
		<div class="main3_title">
			<h3>电影推荐</h3>
			<ul class="main3_navbar">
				<li class="active"><a href="findfilms.hms?cid=0&pc=1">全部</a></li>
				<li><a href="findfilms.hms?cid=1&pc=1">爱情电影</a></li>
				<li><a href="findfilms.hms?cid=2&pc=1">动作电影</a></li>
				<li><a href="findfilms.hms?cid=3&pc=1">惊悚电影</a></li>
				<li><a href="findfilms.hms?cid=4&pc=1">喜剧电影</a></li>
			</ul>
			<a id="main3_a" href="">更多>></a>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie1.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie2.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie3.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie4.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie5.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie6.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie7.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie8.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img src="./images/movie1.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
		<div class="main3_item">
			<div class="main3_item_img">
				<a href="#"><img
					src="./images/0069qWFHgw1f8ade8vo0oj30bm0gojv4.jpg" alt=""></a> <span
					class="lg">蓝光</span>
				<div class="main3_item_title">
					<h1>
						<a href="#" target="_blank" title="狮子王">狮子王</a> <em> - 6.0分</em>
					</h1>
					<div class="main3_item_title_lei">
						类型： <a class="movietype3" target="_blank" href="#">动作</a> <a
							class="movietype3" target="_blank" href="#">科幻</a> <a
							class="movietype3" target="_blank" href="#">恐怖</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="cl"></div>
	<a class="genduo" href="#">更多精彩电影>></a>
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