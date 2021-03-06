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
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="<%=basePath%>static/bootstrap/css/bootstrap.css" />
		<script type="text/javascript" src="<%=basePath%>static/bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>static/jquery/jquery-3.4.1.min.js"></script>
		<script>
		
		window.onload = function() {
			<%
			String msg = "0";
			msg = (String) request.getAttribute("msg");
			if(msg == "登录成功"){
			%>
				alert("恭喜您登录成功！");
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

				var weeks = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
				var week = weeks[day];

				if(month < 10) {
					month = "0" + month;
				}
				if(day < 10) {
					day = "0" + day;
				}
				if(seconds < 10) {
					seconds = "0" + seconds;
				}
				if(hour < 10) {
					hour = "0" + hour;
				}
				if(minutes < 10) {
					minutes = "0" + minutes;
				}
				var time = year + "年" + month + "月" + day + "日" + " " + hour + "时" + minutes + "分" + seconds + "秒" + " " + week;
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
						<a class="navbar-brand" href="<%=basePath%>index">Brand</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								<a href="<%=basePath%>admin/admin">管理员管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/user">用户管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/university">学校管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/charge">学校收费管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/compare">学校详细信息管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/major">学校专业管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/connect">联系方式管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/score">学校分数管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/scoreline">各地分数线管理</a>
							</li>
							<li>
								<a href="<%=basePath%>admin/remark">用户留言管理</a>
							</li>
						</ul>
					<ul class="nav navbar-nav navbar-right">
						<%
						String adminname = (String)session.getAttribute("adminname");
						if(adminname != null){
						%>
						<li><a href="<%=basePath%>admin/managerindex">当前登录的账号名称为：<%=adminname %></a></li>
						<li><a
							href="javascript:if(confirm('确认要退出吗？')) location.href='<%=basePath%>admin/logout'">退出登录</a></li>
						<%
					}
						%>
					</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		
		<div style="text-align: center;margin-top: 200px;">
					<h1><small>现在时间是：<span id="showtime"></span></small></h1>
			</div>

	</body>

</html>