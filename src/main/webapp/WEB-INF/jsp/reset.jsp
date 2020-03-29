<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="area.entity.Area"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">

		<title>中国高校信息查询系统_高考院校库_考试吧</title>
		<link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css">
		<link href="<%=basePath%>static/css/login.css" rel="stylesheet" type="text/css">
		<script src="<%=basePath%>static/js/hm.js"></script>
		<script src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
		<script src="<%=basePath%>static/js/jquery.cookie.js"></script>
		<script src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript"></script>

		<link href="../../static/css/style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="../../static/css/login.css" />
		<script src="../../static/js/jquery-1.8.2.js"></script>
		<script type="text/javascript">
		<%String msg = (String) request.getAttribute("msg");
		if (msg == "用户不存在，请重试") {%>
			window.onload = function(){
				alert("用户不存在，请重试");}
			<%} else if (msg == "重置密码失败，请重试") {%>
			window.onload = function(){
				alert("重置密码失败，请重试");}
			<%} else if (msg == "修改用户信息失败") {%>
			window.onload = function(){
				alert("修改用户信息失败");}
		<%}%>
		</script>

	</head>

	<body>

		<div class="tknavw">
			<div class="tknav">
				<a href="">系统首页</a>
				<a href="">院校大全</a>
				<a href="">地区排行</a>
				<a href="">热门排行</a>
				<a href="">高校联系方式</a>
				<a href="">批次控制线</a>
				<%
					String username = (String)session.getAttribute("username");
					if(username != null){
						%>
						<a href="<%=basePath%>user/logout" style="float: right;border-radius: 15px;">注销登录</a>	
						<a href="<%=basePath%>user/logout" style="float: right;border-radius: 15px;font-size: 1.8em;"><%=username %></a>	
				<%
					}else{
						%>
						<a href="<%=basePath%>user/index" style="float: right;border-radius: 15px;">注册</a>
						<a href="<%=basePath%>user/index" style="float: right;border-radius: 15px;">登录</a>
						
						<% }%>
			</div>
		</div>
		<div class="content" style="background-color: #E7E7E7">

			<div class="main">
				<h1>登录注册表单切换</h1>
				<div class="w3_login">
					<div class="w3_login_module">
						<div class="module form-module">
							<div class="toggle">
								<i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">修改/重置信息</div>
							</div>
							<div class="form">
								<h2>修改账号信息</h2>
								<form action="<%=basePath%>user/update" method="post">
									<input type="text" name="Username" placeholder="用户名" required="required" />
									<input type="password" name="oldPassword" placeholder="旧密码" required="required" />
									<input type="password" name="newPassword" placeholder="新密码" required="required" />
									<input type="text" name="score" placeholder="分数" required="required"/>
									<input type="text" name="province" placeholder="地区" required="required" />
									<input type="text" name="department" list="department" placeholder="选科" required="required"/>
									<datalist id="department" editable="false" >
										<option value="文科"></option>
										<option value="理科"></option>
										<option value="综合"></option>
									</datalist>
									<input type="text" name="Phone" placeholder="电话" required="required" />
									<input type="submit" value="修改" />
								</form>
							</div>
							<div class="form">
								<h2>重置密码</h2>
								<form action="<%=basePath%>user/reset" method="post">
									<input type="text" name="Username" placeholder="用户名" required="required" />
									<input type="text" name="score" placeholder="分数" required="required"/>
									<input type="text" name="province" placeholder="地区" required="required" />
									<input type="text" name="department" list="department" placeholder="选科" required="required"/>
									<datalist id="department">
										<option value="文科"></option>
										<option value="理科" selected="selected"></option>
										<option value="综合"></option>
									</datalist>
									<input type="text" name="Phone" placeholder="电话" required="required" />
									<input type="submit" value="重置" title="重置后默认密码为1234"  />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<script type="text/javascript">
				$('.toggle').click(function() {
					$(this).children('i').toggleClass('fa-pencil');
					$('.form').animate({
						height: "toggle",
						'padding-top': 'toggle',
						'padding-bottom': 'toggle',
						opacity: "toggle"
					}, "slow");
				});
			</script>

			<div class="copyright">
				<div class="cpy01 cpyml">
					<a href="http://www.exam8.com/about/AboutExam8.html" target="_self">关于本站</a>
					<a href="http://www.exam8.com/about/copyright.html" target="_self">网站声明</a>
					<a href="http://www.exam8.com/about/exam8adv.html" target="_self">广告服务</a>
					<a href="http://www.exam8.com/about/Contact.html" target="_self">联系方式</a>
					<a href="http://www.exam8.com/pay/" target="_self">付款方式</a>
					<a href="http://www.exam8.com/map.html" target="_self">站内导航</a>
					<a href="http://www.exam8.com/service/" target="_self">客服中心</a>
					<a href="http://www.exam8.com/link/" target="_self">友情链接</a>
					<a href="http://bbs.exam8.com/archiver/">考试论坛</a>
					<a href="http://www.exam8.com/SiteMap/Article1.htm">最新更新</a>
					<a href="http://www.exam8.com/SiteNavigation.html">网站地图</a>
				</div>
				<div class="cpy01">
					Copyright © 2004-
					<script language="JavaScript">
						var myDate = new Date();
						var theYear = myDate.getFullYear();
						document.write(theYear);
					</script>
					2020
					<a href="http://www.exam8.com/" target="_blank">考试吧 </a>(
					<a href="http://www.exam8.com/" target="_blank">Exam8.com</a>) All Rights Reserved
					<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP证060677</a><span style="margin-left: 8px; margin-right: 8px;">京公网安备:1101084974</span>
					<a href="http://adm.baidu.com/help/success.html" target="_blank" style="position: relative; padding-left: 20px;">
						<div class="zhichi"></div>精准广告支持</a>
				</div>
				<div class="cpy01">中国科学院研究生院权威支持(北京)　电 话：010-62168566　传 真：010-62192699</div>
				</div>

			</div>
		</div>
	</body>

</html>