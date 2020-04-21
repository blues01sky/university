<%@page import="connect.entity.Connect"%>
<%@page import="area.entity.Area"%>
<%@page import="java.util.List"%>
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
   
    <link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css">
    <script src="<%=basePath%>static/js/hm.js"></script>
	<script language="javascript" src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
    <script src="<%=basePath%>static/js/jquery.cookie.js"></script>
    <script language="javascript" src="<%=basePath%>static/js/compare.js"></script>
	<script src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript" charset="gb2312"></script>
	
	<link href="../../static/css/style.css" rel="stylesheet" type="text/css">
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
       		Compare compare = (Compare)request.getAttribute("result");
        %>
        
<div class="yxnrt">
    <div class="yxnrtl" style="font-size: 1.8em;"><%=compare.getUniversityname() %></div>
    
</div>


<div class="ncon">
    <div class="nconl" >
        <div class="sanlt" >
        	<div class="sanbt fl" style="background-color: #CCCCCC;"><b class="f16px" style="font-size:3.0em;color: #0000FF;"><%=compare.getUniversityname() %>--院校简介</b>
        	<div class="sanbtt"></div>
        </div></div>
        <div class="nconlc">　　
            <p>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getUniversityname() %>位于<%=compare.getProvince() %>,隶属于<%=compare.getSubjection() %>,是<%=compare.getType() %>的学校，现有重点学科个数<%=compare.getFocus() %>，博士点<%=compare.getMaserpoint() %>个，两院院士<%=compare.getDoctoral() %>。
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getInstructions() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getMajor() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getTeacher() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getCost() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getSchoolship() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getEntrance() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getStudents() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getAccommodation() %>
<br>&nbsp;&nbsp;&nbsp;&nbsp;<%=compare.getEmployment() %></p>
</div>
    </div>
    <div class="nconr">
					<div class="nconrt" style="border-bottom: solid 2px red;">
						<b class="f14px">本地区学校</b>
					</div>
					<div class="nconrc">
						<ul>
							<%
								List<Area> areas = (List<Area>)request.getAttribute("areas");
								for(int n=1;n<= areas.size();n++){
									if(n<=3){
										%>
							<li>
								<div class="ncrho" style="background-color: red;"><%=n %></div>
								<a href="<%=basePath%>score/index?universityname=<%=areas.get(n-1).getUniversityname() %>" target="_blank"><%=areas.get(n-1).getUniversityname() %></a>
							</li>
										<%
									}else{
										%>
							<li>
								<div class="ncrho" style="color: black;"><%=n %></div>
								<a href="<%=basePath%>score/index?universityname=<%=areas.get(n-1).getUniversityname() %>" target="_blank"><%=areas.get(n-1).getUniversityname() %></a>
							</li>
										<%
									}
								}
							%>
						</ul>
					</div>
					<div class="ncheig"></div>
				<div class="nconrt" style="border-bottom: solid 2px red;">
					<b class="f14px">院校地址</b>
				</div>
				<div class="nconrc">
					<%
						Connect connect = (Connect) request.getAttribute("connect");
					%>
					<b class="cc00"><%=connect.getUniversityname() %>所在的位置</b><br>&nbsp;<%=connect.getAddress() %><br>
					所在省份：<%=connect.getProvince() %> <br> 所在地区：<%=connect.getProvince() %> <br>
					联系电话：<%=connect.getTelphone() %><br>
				</div>
				<div class="ncheig"></div>
					<div class="nconrt" style="border-bottom: solid 2px red;">
						<b class="f14px">根据层次推荐的学校</b>
					</div>
					<div class="nconrc">
						<ul>
							<%
								List<Area> levels = (List<Area>)request.getAttribute("levels");
								for(int l=1;l<= levels.size();l++){
									if(l<=3){
										%>
							<li>
								<div class="ncrho" style="background-color: red;"><%=l %></div>
								<a href="<%=basePath%>score/index?universityname=<%=levels.get(l-1).getUniversityname() %>" target="_blank"><%=levels.get(l-1).getUniversityname() %></a>
							</li>
										<%
									}else{
										%>
							<li>
								<div class="ncrho" style="color: black;"><%=l %></div>
								<a href="<%=basePath%>score/index?universityname=<%=levels.get(l-1).getUniversityname() %>" target="_blank"><%=levels.get(l-1).getUniversityname() %></a>
							</li>
										<%
									}
								}
							%>
						</ul>
					</div>
					<div class="ncheig"></div>
					<div class="nconrt" style="border-bottom: solid 2px red;">
						<b class="f14px">根据类型推荐的学校</b>
					</div>
					<div class="nconrc">
						<ul>
							<%
								List<Area> types = (List<Area>)request.getAttribute("types");
								for(int o=1;o<= types.size();o++){
									if(o<=3){
										%>
							<li>
								<div class="ncrho" style="background-color: red;"><%=o %></div>
								<a href="<%=basePath%>score/index?universityname=<%=types.get(o-1).getUniversityname() %>" target="_blank"><%=types.get(o-1).getUniversityname() %></a>
							</li>
										<%
									}else{
										%>
							<li>
								<div class="ncrho" style="color: black;"><%=o %></div>
								<a href="<%=basePath%>score/index?universityname=<%=types.get(o-1).getUniversityname() %>" target="_blank"><%=types.get(o-1).getUniversityname() %></a>
							</li>
										<%
									}
								}
							%>
						</ul>
					</div>
				</div>
			</div>
			<div class="nconx"></div>
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