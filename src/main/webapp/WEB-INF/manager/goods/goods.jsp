<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet" href="../../static/bootstrap/css/bootstrap.css" />
		<script type="text/javascript" src="../../static/bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript" src="../../static/jquery/jquery-3.4.1.min.js"></script>
		
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
							</li>
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
										System.out.println(adminname);
										if(adminname != null){
						%>
						<li><a href="/milkSale">当前登录的账号名称为：<%=adminname%></a></li>
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
			<li role="presentation" class="active"><a href="/milkSale">主页</a></li>
			<li role="presentation"><a href="javascript:if(confirm('确认要退出吗？')) location.href='logout.main'">退出</a></li>
		</ul>
	</div>
	<div class="nav col-lg-11">
		<table class="table table-striped">
			<tr>
				<td>id</td>
				<td>商品名</td>
				<td>单价</td>
				<td>售价</td>
				<td>库存量</td>
				<td>类型</td>
				<td>图片地址</td>
				<td>创建时间</td>
				<td>修改时间</td>
				<td colspan="3" style="text-align: center;">操作</td>
			</tr>
			<%
				List<Goods> lists = (List<Goods>)request.getAttribute("lists");
						if(lists.isEmpty()){
			%>
						<script>
							if(confirm("商品为空，先增加一个商品吧")){
								location.href='addGoods.do';
							}else{
								window.history.back();
							}
						</script>
						<!-- <td colspan="11" style="text-align: center;">
							<a href="addGoods.do">增加一个商品</a>
						</td>
						<td></td> -->
						<%
							}else{
									for(Goods good : lists){
						%>
			<tr>
				<td><%=good.getId() %></td>
				<td><%=good.getGoodsname() %></td>
				<td><%=good.getSingleprice() %></td>
				<td><%=good.getSaleprice() %></td>
				<td><%=good.getGoodsnum() %></td>
				<td><%=good.getType() %></td>
				<td><%=good.getPicture() %></td>
				<td><%=good.getCreatetime() %></td>
				<td><%=good.getUpdatetime() %></td>
				<td><a href="addGoods.do">增加</a></td>
				<td><a href="updateGoods.do?goodsid=<%=good.getId() %>">修改</a></td>
				<td>
					<a href="javascript:if(confirm('确认要删除商品<%=good.getGoodsnum() %>？')) location.href='deleteGoods.goods?goodsid=<%=good.getId() %>'">删除</a>
				</td>
			</tr>
			<%
						}
					}
				%>

		</table>
	</div>
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