<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="<%=basePath%>static/bootstrap/css/bootstrap.css" />
		<script type="text/javascript" src="<%=basePath%>static/bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-3.4.1.min.js"></script>
		<script>
	window.onload = function() {
						<%
						String msg = "0";
						msg = (String) request.getAttribute("msg");
						String adminname = (String)session.getAttribute("adminname");
						if(adminname == null){
						%>
							alert("请您先登录后才能进行相关的后台操作！");
						<%
					}else if(msg=="登录错误"){
						%>
						alert("请您重新登录！");
					<%
					}else if(msg=="退出成功"){
						%>
						alert("退出登录成功，想进行相关操作请您重新登录！");
					<%
					}
						%>
	}
	function gettime() {
		var now = new Date();
		var year = now.getFullYear();
		var month = now.getMonth() + 1;
		var day = now.getDate();
		var hour = now.getHours();
		var minutes = now.getMinutes();
		var seconds = now.getSeconds();

		var day = now.getDay();
		var weeks = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
		var week = weeks[day];

		if (month < 10) {
			month = "0" + month;
		}
		if (day < 10) {
			day = "0" + day;
		}
		if (seconds < 10) {
			seconds = "0" + seconds;
		}
		if (hour < 10) {
			hour = "0" + hour;
		}
		if (minutes < 10) {
			minutes = "0" + minutes;
		}
		var time = year + "年" + month + "月" + day + "日" + " " + hour + "时"
				+ minutes + "分" + seconds + "秒" + " " + week;
		var showTime = document.getElementById("showtime");
		showTime.innerHTML = time;
	}
	setInterval("gettime()", 1000);
</script>
<title>data属性实现下拉菜单</title>
</head>

<body>

	<div class="nav">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<%
						if(adminname != null){
						%>
							<li><a href="">欢迎您：<%=adminname %></a></li>
							<li><a href="">退出登录</a></li>
						<%
					}
						%>
						
					</ul>
				</div>
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>
	<div class="nav col-lg-1">
		<ul class="nav nav-pills nav-stacked">
			<li role="presentation" class="active"><a href="<%=basePath%>admin/index">主页</a></li>
			<li role="presentation"><a href="javascript:if(confirm('确认要退出吗？')) location.href='<%=basePath%>admin/logout'">退出</a></li>
		</ul>
	</div>
	<div class="col-lg-3"></div>
	<div class="nav col-lg-5">
		<form class="form-horizontal" action="<%=basePath%>admin/login" method="post">
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">用户名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="adminname"
						placeholder="用户名">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password"
						placeholder="密码">
				</div>
			</div>
			<div class="col-lg-5"></div>

			<div class="col-lg-2">
				<button type="submit" class="btn btn-primary btn-lg">提交</button>
			</div>
			<div class="col-lg-5"></div>
		</form>
	</div>
	<div class="col-lg-3"></div>

	<div class="foot">
		<nav class="navbar navbar-default navbar-fixed-bottom">
			<div class="container">
				<ul class="nav navbar-nav">
					<li><a href="javascript:return false;">现在时间是：<span
							id="showtime"></span></span>
					</a></li>
				</ul>
			</div>
		</nav>
	</div>
</body>

</html>