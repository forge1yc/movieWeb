$(function () {
	//轮播开始
	//代码初始化
	var len = $(".img li").length;
	//console.log(len)
	for (var i = 1; i <= len; i++) {
		var li = "<li>" + i + "</li>";
		$(".num").append(li);
	};
	//手动控制轮播效果
	$(".img li").eq(0).show();
	$(".num li").eq(0).addClass("active_lun");
	$(".num li").mouseover(function () {
		//给自己添加class  给其他所有兄弟移出class
		$(this).addClass("active_lun").siblings().removeClass("active_lun");
		//获取当前的索引值
		var index = $(this).index();
		//让i变为全局变量
		i = index;
		$(".img li").eq(index).slideDown().siblings().fadeOut(1000);
	})
	//自动
	var i = 0;
	var t = setInterval(move, 3000);
	//核心向左的函数
	function moveLeft() {
		i--;
		if (i == -1) {
			i = len - 1;
		}
		$(".num li").eq(i).addClass("active_lun").siblings().removeClass("active_lun");
		$(".img li").eq(i).fadeIn(1000).siblings().fadeOut(1000);
	}
	//核心向右的函数
	function move() {
		i++;
		if (i == len) {
			i = 0;
		}
		$(".num li").eq(i).addClass("active_lun").siblings().removeClass("active_lun");
		$(".img li").eq(i).fadeIn(1000).siblings().fadeOut(1000);
	}
	//定时器的开始与结束
	$(".out").hover(function () {
		clearInterval(t);
	}, function () {
		t = setInterval(move, 3000)
	})
	//左边按钮的点击事件
	$(".out .left").click(function () {
		moveLeft();
	})
	//右边按钮的点击事件
	$(".out .right").click(function () {
		move();
	})
	//轮播结束
});

function setTime() {
	var d = new Date();
	document.getElementById("top_main_time").innerHTML = d.toUTCString();
}
setInterval("setTime()", 1000);

function displaytime() {
	var today = new Date(); // 获取当前时间 年份，月份，日等		
	var yyyy = today.getFullYear(); //年份
	var month = today.getMonth() + 1; //月份
	var dd = today.getDate(); //日
	var hh = today.getHours(); //小时
	var mm = today.getMinutes(); //分钟
	var ss = today.getSeconds(); //秒
	var xq = today.getDay(); //星期
	document.getElementById("top_main_time").innerHTML = "你好，欢迎访问贵美商城！               " + yyyy + "年" + month + "月" + dd + "日" + hh + ":" + mm + ":" + ss + " " + " 星期" + xq;
}
var myTime = setInterval("displaytime()", 1000);

