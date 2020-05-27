<%@page import="java.util.List"%>
<%@page import="area.entity.Area"%>
<%@page import="compare.entity.Compare"%>
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
<title>高校信息查询系统</title>

<link href="<%=basePath%>static/css/style.css" rel="stylesheet"
	type="text/css">
<script src="<%=basePath%>static/js/hm.js"></script>
<script src="<%=basePath%>static/jquery/jquery-3.4.1.min.js"></script>
<script src="<%=basePath%>static/js/jquery.cookie.js"></script>
<script src="<%=basePath%>static/js/bdhmprotocol.js"
	type="text/javascript"></script>
<script type="text/javascript">
		function ajax01(){
			var select1 = $("#select1").val();
		if(select1 == "") {
			alert("您输入的值为空，请重试");
		} else {
			var params = {
					"select1":select1
					};
	    	$.ajax({
	    		type: 'POST',
	    	    ansyv:true,
	    	    data:params,
	    	    datatype:'json',
	    	    url: '${pageContext.request.contextPath}/compare/selecthandle1',
	    	    success:function(data){
	    	    	window.location.reload();	
	    	    },
	    	    error:function(data){
	    	    	window.location.reload();	
	    	    }
	    	})
	    	
		}
		}
		function ajax02(){
			var select2 = $("#select2").val();
		if(select2 == "") {
			alert("您输入的值为空，请重试");
		} else {
			var params = {
					"select2":select2
					};
	    	$.ajax({
	    		type: 'POST',
	    	    ansyv:true,
	    	    data:params,
	    	    datatype:'json',
	    	    url: '${pageContext.request.contextPath}/compare/selecthandle2',
	    	    success:function(data){
	    	    	window.location.reload();	
	    	    },
	    	    error:function(data){
	    	    	window.location.reload();	
	    	    }
	    	})
		}
		}
		
		function ajax03(){
			var select3 = $("#select3").val();
		if(select3 == "") {
			alert("您输入的值为空，请重试");
		} else {
			var params = {
					"select3":select3
					};
	    	$.ajax({
	    		type: 'POST',
	    	    ansyv:true,
	    	    data:params,
	    	    datatype:'json',
	    	    url: '${pageContext.request.contextPath}/compare/selecthandle3',
	    	    success:function(data){
	    	    	window.location.reload();	
	    	    },
	    	    error:function(data){
	    	    	window.location.reload();	
	    	    }
	    	})
		}
		}
		
		function ajax04(){
			var select4 = $("#select4").val();
		if(select4 == "") {
			alert("您输入的值为空，请重试");
		} else {
			var params = {
					"select4":select4
					};
	    	$.ajax({
	    		type: 'POST',
	    	    ansyv:true,
	    	    data:params,
	    	    datatype:'json',
	    	    url: '${pageContext.request.contextPath}/compare/selecthandle4',
	    	    success:function(data){
	    	    	window.location.reload();	
	    	    },
	    	    error:function(data){
	    	    	window.location.reload();	
	    	    }
	    	})
		}
		}
		
	</script>


</head>
<body>

	<div class="tknavw">
		<div class="tknav">
				<a href="<%=basePath%>index">系统首页</a>
				<a href="<%=basePath%>rank">院校排行</a>
				<a href="<%=basePath%>area/head">地区院校大全</a>
				<a href="<%=basePath%>compare/head">对比选学校</a>
				<a href="<%=basePath%>scoreline/index">各地批次控制线</a>
				<a href="<%=basePath%>admin/index">管理员入口</a>
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

		<%
			List<Area> value1 = (List<Area>) session.getAttribute("value1");
			List<Area> value2 = (List<Area>) session.getAttribute("value2");
			List<Area> value3 = (List<Area>) session.getAttribute("value3");
			List<Area> value4 = (List<Area>) session.getAttribute("value4");
			
			Compare university1 = (Compare) session.getAttribute("university1");
			Compare university2 = (Compare) session.getAttribute("university2");
			Compare university3 = (Compare) session.getAttribute("university3");
			Compare university4 = (Compare) session.getAttribute("university4");
		%>

		<div class="zhuanyedb">

			<table width="100%" border="0" cellspacing="0" cellpadding="5"
				class="zytable">
				<tbody>
					<tr>
						<td class="f14px"><strong>名称</strong></td>
						<td width="22%">
							<div class="c00f">
							<%
								if(value1 != null){
									%>
									<strong>详细信息</strong>
									<%
								}else{
									%>
									<strong>请添加院校</strong>
									<% 
								}
							%>
								
							</div> 
							<select class="duib1" id="select1" onchange="ajax01()">
								<option value="省市">省市</option>
								<option value="北京市">北京</option>
													<option value="天津市">天津</option>
													<option value="上海市">上海</option>
													<option value="重庆市">重庆</option>
													<option value="河北省">河北</option>
													<option value="山西省">山西</option>
													<option value="内蒙古">内蒙古</option>
													<option value="辽宁省">辽宁</option>
													<option value="吉林省">吉林</option>
													<option value="黑龙江省">黑龙江</option>
													<option value="江苏省">江苏</option>
													<option value="浙江省">浙江</option>
													<option value="内蒙古自治区">内蒙古自治区</option>
													<option value="安徽省">安徽</option>
													<option value="福建省">福建</option>
													<option value="江西省">江西</option>
													<option value="山东省">山东</option>
													<option value="河南省">河南</option>
													<option value="湖北省">湖北</option>
													<option value="湖南省">湖南</option>
													<option value="广东省">广东</option>
													<option value="广西壮族自治区">广西</option>
													<option value="海南省">海南</option>
													<option value="四川省">四川</option>
													<option value="贵州省">贵州</option>
													<option value="云南省">云南</option>
													<option value="西藏自治区">西藏</option>
													<option value="陕西省">陕西</option>
													<option value="甘肃省">甘肃</option>
													<option value="青海省">青海</option>
													<option value="宁夏回族自治区">宁夏</option>
													<option value="新疆维吾尔自治区">新疆</option>
													<option value="香港">香港</option>
													<option value="澳门">澳门</option>
													<option value="台湾">台湾</option>
						</select>
						<form action="<%=basePath%>compare/addcompare1" method="post">
						<select class="duib1" id="zhi1" name="select1">
							<%
								if(value1!=null){
									for(Area area : value1){
										%><option value="<%=area.getUniversityname() %>"><%=area.getUniversityname() %></option><%
									}
								}
							%>
						</select>
							<div class="duiban">
								<input class="duib2" type="submit" value="添 加">
								<a href="<%=basePath%>compare/removehandle1"><input class="duib2" type="button" value="删除"></a>
							</div>
						</form>
						</td>
						<td width="22%">
							<div>
								<%
								if(value2 != null){
									%>
									<strong>详细信息</strong>
									<% 
								}else{
									%>
									<strong>请添加院校</strong>
									<% 
								}
							%>
							</div> 
							<select class="duib1" id="select2" onchange="ajax02()">
								<option value="省市">省市</option>
								<option value="北京市">北京</option>
													<option value="天津市">天津</option>
													<option value="上海市">上海</option>
													<option value="重庆市">重庆</option>
													<option value="河北省">河北</option>
													<option value="山西省">山西</option>
													<option value="内蒙古">内蒙古</option>
													<option value="辽宁省">辽宁</option>
													<option value="吉林省">吉林</option>
													<option value="黑龙江省">黑龙江</option>
													<option value="江苏省">江苏</option>
													<option value="浙江省">浙江</option>
													<option value="内蒙古自治区">内蒙古自治区</option>
													<option value="安徽省">安徽</option>
													<option value="福建省">福建</option>
													<option value="江西省">江西</option>
													<option value="山东省">山东</option>
													<option value="河南省">河南</option>
													<option value="湖北省">湖北</option>
													<option value="湖南省">湖南</option>
													<option value="广东省">广东</option>
													<option value="广西壮族自治区">广西</option>
													<option value="海南省">海南</option>
													<option value="四川省">四川</option>
													<option value="贵州省">贵州</option>
													<option value="云南省">云南</option>
													<option value="西藏自治区">西藏</option>
													<option value="陕西省">陕西</option>
													<option value="甘肃省">甘肃</option>
													<option value="青海省">青海</option>
													<option value="宁夏回族自治区">宁夏</option>
													<option value="新疆维吾尔自治区">新疆</option>
													<option value="香港">香港</option>
													<option value="澳门">澳门</option>
													<option value="台湾">台湾</option>
						</select>
						<form action="<%=basePath%>compare/addcompare2" method="post">
						<select class="duib1" id="zhi1" name="select2">
							<%
								if(value2!=null){
									for(Area area : value2){
										%><option value="<%=area.getUniversityname() %>"><%=area.getUniversityname() %></option><%
									}
								}
							%>
						</select>
							<div class="duiban">
								<input class="duib2" type="submit" value="添 加">
								<a href="<%=basePath%>compare/removehandle2"><input class="duib2" type="button" value="删除"></a>
							</div>
						</form>
						</td>
						<td width="22%">
							<div>
								<%
								if(value3 != null){
									%>
									<strong>详细信息</strong>
									<% 
								}else{
									%>
									<strong>请添加院校</strong>
									<% 
								}
							%>
							</div> 
							<select class="duib1" id="select3" onchange="ajax03()">
								<option value="省市">省市</option>
								<option value="北京市">北京</option>
													<option value="天津市">天津</option>
													<option value="上海市">上海</option>
													<option value="重庆市">重庆</option>
													<option value="河北省">河北</option>
													<option value="山西省">山西</option>
													<option value="内蒙古">内蒙古</option>
													<option value="辽宁省">辽宁</option>
													<option value="吉林省">吉林</option>
													<option value="黑龙江省">黑龙江</option>
													<option value="江苏省">江苏</option>
													<option value="浙江省">浙江</option>
													<option value="内蒙古自治区">内蒙古自治区</option>
													<option value="安徽省">安徽</option>
													<option value="福建省">福建</option>
													<option value="江西省">江西</option>
													<option value="山东省">山东</option>
													<option value="河南省">河南</option>
													<option value="湖北省">湖北</option>
													<option value="湖南省">湖南</option>
													<option value="广东省">广东</option>
													<option value="广西壮族自治区">广西</option>
													<option value="海南省">海南</option>
													<option value="四川省">四川</option>
													<option value="贵州省">贵州</option>
													<option value="云南省">云南</option>
													<option value="西藏自治区">西藏</option>
													<option value="陕西省">陕西</option>
													<option value="甘肃省">甘肃</option>
													<option value="青海省">青海</option>
													<option value="宁夏回族自治区">宁夏</option>
													<option value="新疆维吾尔自治区">新疆</option>
													<option value="香港">香港</option>
													<option value="澳门">澳门</option>
													<option value="台湾">台湾</option>
						</select>
						<form action="<%=basePath%>compare/addcompare3" method="post">
						<select class="duib1" id="zhi1" name="select3">
							<%
								if(value3!=null){
									for(Area area : value3){
										%><option value="<%=area.getUniversityname() %>"><%=area.getUniversityname() %></option><%
									}
								}
							%>
						</select>
							<div class="duiban">
								<input class="duib2" type="submit" value="添 加">
								<a href="<%=basePath%>compare/removehandle3"><input class="duib2" type="button" value="删除"></a>
							</div>
						</form>
						</td>
						<td width="22%">
							<div>
								<%
								if(value4 != null){
									%>
									<strong>详细信息</strong>
									<% 
								}else{
									%>
									<strong>请添加院校</strong>
									<% 
								}
							%>
							</div> 
							<select class="duib1" id="select4" onchange="ajax04()">
								<option value="省市">省市</option>
								<option value="北京市">北京</option>
													<option value="天津市">天津</option>
													<option value="上海市">上海</option>
													<option value="重庆市">重庆</option>
													<option value="河北省">河北</option>
													<option value="山西省">山西</option>
													<option value="内蒙古">内蒙古</option>
													<option value="辽宁省">辽宁</option>
													<option value="吉林省">吉林</option>
													<option value="黑龙江省">黑龙江</option>
													<option value="江苏省">江苏</option>
													<option value="浙江省">浙江</option>
													<option value="内蒙古自治区">内蒙古自治区</option>
													<option value="安徽省">安徽</option>
													<option value="福建省">福建</option>
													<option value="江西省">江西</option>
													<option value="山东省">山东</option>
													<option value="河南省">河南</option>
													<option value="湖北省">湖北</option>
													<option value="湖南省">湖南</option>
													<option value="广东省">广东</option>
													<option value="广西壮族自治区">广西</option>
													<option value="海南省">海南</option>
													<option value="四川省">四川</option>
													<option value="贵州省">贵州</option>
													<option value="云南省">云南</option>
													<option value="西藏自治区">西藏</option>
													<option value="陕西省">陕西</option>
													<option value="甘肃省">甘肃</option>
													<option value="青海省">青海</option>
													<option value="宁夏回族自治区">宁夏</option>
													<option value="新疆维吾尔自治区">新疆</option>
													<option value="香港">香港</option>
													<option value="澳门">澳门</option>
													<option value="台湾">台湾</option>
						</select>
						<form action="<%=basePath%>compare/addcompare4" method="post">
						<select class="duib1" id="zhi1" name="select4">
							<%
								if(value4!=null){
									for(Area area : value4){
										%><option value="<%=area.getUniversityname() %>"><%=area.getUniversityname() %></option><%
									}
								}
							%>
						</select>
							<div class="duiban">
								<input class="duib2" type="submit" value="添 加">
								<a href="<%=basePath%>compare/removehandle4"><input class="duib2" type="button" value="删除"></a>
							</div>
						</form>
						</td>
					</tr>
					<tr>
						<td><strong>大学名称</strong></td>
						<td>
						<%
							if(university1!=null){
							%>
								<%=university1.getUniversityname() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university2!=null){
							%>
								<%=university2.getUniversityname() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university3!=null){
							%>
								<%=university3.getUniversityname() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university4!=null){
							%>
								<%=university4.getUniversityname() %>
							<% 
							}
						%>
						</td>
					</tr>
					<tr>
						<td><strong>类型</strong></td>
						<td>
						<%
							if(university1!=null){
							%>
								<%=university1.getType() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university2!=null){
							%>
								<%=university2.getType() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university3!=null){
							%>
								<%=university3.getType() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university4!=null){
							%>
								<%=university4.getType() %>
							<% 
							}
						%>
						</td>
					</tr>
					<tr>
						<td><strong>所在地</strong></td>
						<td>
						<%
							if(university1!=null){
							%>
								<%=university1.getProvince() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university2!=null){
							%>
								<%=university2.getProvince() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university3!=null){
							%>
								<%=university3.getProvince() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university4!=null){
							%>
								<%=university4.getProvince() %>
							<% 
							}
						%>
						</td>
					</tr>
					<tr>
						<td class="c00f"><strong>是否211</strong></td>
						<%
							if(university1!=null){
		                    	if(university1.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
							}else{
								%>
								<td></td>
								<%
							}
						%>
						<%
							if(university2!=null){
							%>
								<%
		                    	if(university2.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
							}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
						<%
							if(university3!=null){
							%>
								<%
		                    	if(university3.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
						<%
							if(university4!=null){
							%>
								<%
		                    	if(university4.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
					</tr>
					<tr>
						<td class="c00f"><strong>是否985</strong></td>
						<%
							if(university1!=null){
							%>
								<%
		                    	if(university1.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
						<%
							if(university2!=null){
							%>
								<%
		                    	if(university2.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
						<%
							if(university3!=null){
							%>
								<%
		                    	if(university3.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
						<%
							if(university4!=null){
							%>
								<%
		                    	if(university4.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
							<% 
							}else{
								 %><td></td>
									<% 
							}
						%>
					</tr>
					<tr>
						<td class="c00f"><strong>院校隶属</strong></td>
						<td>
						<%
							if(university1!=null){
							%>
								<%=university1.getSubjection() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university2!=null){
							%>
								<%=university2.getSubjection() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university3!=null){
							%>
								<%=university3.getSubjection() %>
							<% 
							}
						%>
						</td>
						<td>
						<%
							if(university4!=null){
							%>
								<%=university4.getSubjection() %>
							<% 
							}
						%>
						</td>
					</tr>
					<tr>
						<td><strong>设立研究生院</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getGraduate() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getGraduate() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getGraduate() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getGraduate() %>
							<% 
							}
						%></td>
					</tr>
					
					<tr>
						<td><strong>国家重点学科</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getFocus() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getFocus() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getFocus() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getFocus() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>硕士点</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getMaserpoint() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getMaserpoint() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getMaserpoint() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getMaserpoint() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>博士点</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getDoctoral() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getDoctoral() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getDoctoral() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getDoctoral() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>两院院士</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getAcademician() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getAcademician() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getAcademician() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getAcademician() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>藏书</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getBook() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getBook() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getBook() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getBook() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>创建时间</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getCreatetime() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getCreatetime() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getCreatetime() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getCreatetime() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>占地面积</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getArea() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getArea() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getArea() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getArea() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>联系电话</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getTelphone() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getTelphone() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getTelphone() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getTelphone() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>学校简介</strong></td>
						<td><%
							if(university1!=null){
							%>
								<%=university1.getInstructions() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>
								<%=university2.getInstructions() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>
								<%=university3.getInstructions() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>
								<%=university4.getInstructions() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>专业设置</strong></td>
						<td class="c00f"><%
							if(university1!=null){
							%>&nbsp;<%=university1.getMajor() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university2!=null){
							%>&nbsp;<%=university2.getMajor() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university3!=null){
							%>&nbsp;<%=university3.getMajor() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university4!=null){
							%>&nbsp;<%=university4.getMajor() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>学校网址</strong></td>
						<td class="c00f"><%
							if(university1!=null){
							%>&nbsp;<%=university1.getUrl() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university2!=null){
							%>&nbsp;<%=university2.getUrl() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university3!=null){
							%>&nbsp;<%=university3.getUrl() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university4!=null){
							%>&nbsp;<%=university4.getUrl() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>师资力量</strong></td>
						<td class="c00f"><%
							if(university1!=null){
							%>&nbsp;
								<%=university1.getTeacher() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university2!=null){
							%>&nbsp;
								<%=university2.getTeacher() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university3!=null){
							%>&nbsp;
								<%=university3.getTeacher() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university4!=null){
							%>&nbsp;
								<%=university4.getTeacher() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>收费标准</strong></td>
						<td><%
							if(university1!=null){
							%>&nbsp;
								<%=university1.getCost() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>&nbsp;
								<%=university2.getCost() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>&nbsp;
								<%=university3.getCost() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>&nbsp;
								<%=university4.getCost() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>奖励资助</strong></td>
						<td><%
							if(university1!=null){
							%>&nbsp;
								<%=university1.getSchoolship() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>&nbsp;
								<%=university2.getSchoolship() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>&nbsp;
								<%=university3.getSchoolship() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>&nbsp;
								<%=university4.getSchoolship() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>录取规则</strong></td>
						<td class="c00f"><%
							if(university1!=null){
							%>&nbsp;
								<%=university1.getEntrance() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university2!=null){
							%>&nbsp;
								<%=university2.getEntrance() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university3!=null){
							%>&nbsp;
								<%=university3.getEntrance() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university4!=null){
							%>&nbsp;
								<%=university4.getEntrance() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>在校生信息</strong></td>
						<td class="c00f"><%
							if(university1!=null){
							%>&nbsp;
								<%=university1.getStudents() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university2!=null){
							%>&nbsp;
								<%=university2.getStudents() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university3!=null){
							%>&nbsp;
								<%=university3.getStudents() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university4!=null){
							%>&nbsp;
								<%=university4.getStudents() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>食宿条件</strong></td>
						<td class="c00f"><%
							if(university1!=null){
							%>&nbsp;
								<%=university1.getAccommodation() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university2!=null){
							%>&nbsp;
								<%=university2.getAccommodation() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university3!=null){
							%>&nbsp;
								<%=university3.getAccommodation() %>
							<% 
							}
						%></td>
						<td class="c00f"><%
							if(university4!=null){
							%>&nbsp;
								<%=university4.getAccommodation() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>就业信息</strong></td>
						<td><%
							if(university1!=null){
							%>&nbsp;
							<%=university1.getEmployment() %>
							<% 
							}
						%></td>
						<td><%
							if(university2!=null){
							%>&nbsp;
							<%=university2.getEmployment() %>
							<% 
							}
						%></td>
						<td><%
							if(university3!=null){
							%>&nbsp;
							<%=university3.getEmployment() %>
							<% 
							}
						%></td>
						<td><%
							if(university4!=null){
							%>&nbsp;
							<%=university4.getEmployment() %>
							<% 
							}
						%></td>
					</tr>
					<tr>
						<td><strong>评价</strong></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>


		<div class="copyright">
				<div class="cpy01 cpyml">
					<a href="<%=basePath%>index" target="_self">关于本站</a>
					<a href="<%=basePath%>index" target="_self">网站声明</a>
					<a href="<%=basePath%>index" target="_self">广告服务</a>
					<a href="<%=basePath%>index" target="_self">联系方式</a>
					<a href="<%=basePath%>index" target="_self">站内导航</a>
					<a href="<%=basePath%>index" target="_self">客服中心</a>
					<a href="<%=basePath%>index" target="_self">友情链接</a>
					<a href="<%=basePath%>index">最新更新</a>
					<a href="<%=basePath%>index">网站地图</a>
				</div>
				<div class="cpy01">
					Copyright © 
					<script language="JavaScript">
						var myDate = new Date();
						var theYear = myDate.getFullYear();
						document.write(theYear);
					</script>
					<a href="<%=basePath%>index" target="_blank">大学排行榜</a>(
					<a href="<%=basePath%>index" target="_blank"></a>) All Rights Reserved
					<a href="<%=basePath%>index" target="_blank">京ICP证06101011</a><span style="margin-left: 8px; margin-right: 8px;">京公网安备:1101011</span>
					<a href="<%=basePath%>index" target="_blank" style="position: relative; padding-left: 20px;">
						<div class="zhichi"></div>精准广告支持</a>
				</div>
				<div class="cpy01">中国科学院权威支持(北京)　电 话：010-1010110　传 真：010-1010110</div>
				</div>

			</div>
	</body>

</html>