<%@page import="cn.com.entity.Admin"%>
<%@page import="cn.com.entity.User"%>
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
<% 
			Admin admin = new Admin();
			admin = (Admin)request.getAttribute("admin");
		%>
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

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
							<li>
								<a href="">管理员管理</a>
							</li>
							<li>
								<a href="">用户管理</a>
							</li>
							<li>
								<a href="">学校管理</a>
							</li>
							<li>
								<a href="">学校收费管理</a>
							</li class="active">
							<li>
								<a href="">学校详细信息管理</a>
							</li>
							<li>
								<a href="">学校专业管理</a>
							</li>
							<li>
								<a href="">联系方式管理</a>
							</li>
							<li>
								<a href="">学校分数管理</a>
							</li>
							<li>
								<a href="">各地分数线管理</a>
							</li>
							<li>
								<a href="">用户留言管理</a>
							</li>
						</ul>

					<ul class="nav navbar-nav navbar-right">
						<%
						String adminname = (String)session.getAttribute("adminname");
						if(adminname != null){
						%>
						<li><a href="/milkSale">当前登录的账号名称为：<%=adminname %></a></li>
						<li><a href="logout.main">退出登录</a></li>
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
	<div class="nav col-lg-1">
		<ul class="nav nav-pills nav-stacked">
			<li role="presentation" class="active"><a href="<%=basePath%>admin/index">主页</a></li>
			<li role="presentation"><a href="javascript:if(confirm('确认要退出吗？')) location.href='<%=basePath%>admin/logout'">退出</a></li>
		</ul>
	</div>
	<div class="col-lg-3"></div>
	<div class="nav col-lg-5">
		<form class="form-horizontal" method="post" action="updateAdmin.admin">
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">大学名称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="universityname" 
						placeholder="大学名称">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">类型</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="type" 
						placeholder="类型">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">所在地区</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="province" 
						placeholder="所在地区">
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">211（是的话为1）</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="is211" 
						placeholder="211（是的话为1）">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">985（是的话为1）</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="is985" 
						placeholder="985（是的话为1）">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">隶属关系</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="subjection" 
						placeholder="隶属关系">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">是否有研究生学院</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="graduate" 
						placeholder="是否有研究生学院">
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">重点学科数量</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="focus" 
						placeholder="重点学科数量">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">硕士点个数</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="maserpoint" 
						placeholder="硕士点个数">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">博士点个数</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="doctoral" 
						placeholder="博士点个数">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">两院院士个数</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="academician" 
						placeholder="两院院士个数">
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">藏书信息</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="book" 
						placeholder="藏书信息">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">占地面积</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="area" 
						placeholder="占地面积">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">建校时间</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="createtime" 
						placeholder="建校时间">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">联系电话</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="telphone" 
						placeholder="联系电话">
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">学校简介</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="instructions" 
						placeholder="学校简介">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">专业设置</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="major" 
						placeholder="专业设置">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">学校官网</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="url" 
						placeholder="学校官网">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">师资力量</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="teacher" 
						placeholder="师资力量">
				</div>
			</div>
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">收费标准</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="cost" 
						placeholder="收费标准">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">奖学金</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="schoolship" 
						placeholder="奖学金">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">录取信息</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="entrance" 
						placeholder="录取信息">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">在校生信息</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="students" 
						placeholder="在校生信息">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">住宿标准</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="accommodation" 
						placeholder="住宿标准">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">就业信息</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="employment" 
						placeholder="就业信息">
				</div>
			</div>
			<div class="col-lg-5"></div>

			<div class="col-lg-2">
				<button type="submit" class="btn btn-primary btn-lg">修改</button>
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