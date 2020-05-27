<%@page import="org.apache.ibatis.annotations.Case"%>
<%@page import="worldranks.entity.Worldranks"%>
<%@page import="ranks.entity.Ranks"%>
<%@page import="area.entity.Area"%>
<%@page import="scoreline.entity.Scoreline"%>
<%@page import="java.util.List"%>
<%@page import="score.entity.Score"%>
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
		<link rel="stylesheet" href="<%=basePath%>static/css/share_style0_24.css">
		<script src="<%=basePath%>static/js/hm.js"></script>
		<script src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
		<script src="<%=basePath%>static/js/jquery.cookie.js"></script>
		<script src="<%=basePath%>static/js/bdhmprotocol.js" ></script>
		<script src="<%=basePath%>static/js/compare.js"></script>
		<script src="<%=basePath%>static/js/share.js"></script>
		<script src="<%=basePath%>static/js/XY_function.js"></script>
		<script src="<%=basePath%>static/js/Comment.js"></script>
		<script src="<%=basePath%>static/js/echarts.js" ></script>
</head>

<body>

	<div class="tknavw">
		<div class="tknav">
			<a href="<%=basePath%>index">系统首页</a> <a href="<%=basePath%>rank">院校排行</a> <a
				href="<%=basePath%>area/head">地区院校大全</a> <a
				href="<%=basePath%>compare/head">对比选学校</a> <a
				href="<%=basePath%>scoreline/index">各地批次控制线</a> <a
				href="<%=basePath%>admin/index">管理员入口</a>
			<%
					String username = (String)session.getAttribute("username");
					if(username != null){
						%>
			<a href="<%=basePath%>user/logout"
				style="float: right; border-radius: 15px;">注销登录</a> <a
				href="<%=basePath%>user/logout"
				style="float: right; border-radius: 15px; font-size: 1.8em;"><%=username %></a>
			<%
					}else{
						%>
			<a href="<%=basePath%>user/index"
				style="float: right; border-radius: 15px;">注册</a> <a
				href="<%=basePath%>user/index"
				style="float: right; border-radius: 15px;">登录</a>

			<% }%>
		</div>
	</div>

	<%
			List<Ranks> OnlyBrand = (List<Ranks>)request.getAttribute("OnlyBrand");
			List<Worldranks> findYear = (List<Worldranks>)request.getAttribute("findYear");
			List<Worldranks> findByBrand = (List<Worldranks>)request.getAttribute("findByBrand");
			List<Worldranks> OnlyworldBrand = (List<Worldranks>)request.getAttribute("OnlyworldBrand");
		
		%>

	<div class="content" style="background-color: #E7E7E7">
		<input hidden="hidden" value="<%=findByBrand.get(0).getBrand() %>" id="yincangzhi">
		<input hidden="hidden" value="<%=findByBrand.get(0).getYear() %>" id="nianfen">
		<div class="zydaquan">
			<div class="zydql">
				<div class="sanlt">
					<div class="sanbt fl" style="background-color: #3366CC;">
						<b class="f16px">排行分类</b>
						<div class="sanbtt"></div>
					</div>
				</div>
				<div class="zyzcon">
					<div class="zyzbd">
						<div class="zyzbdl cc00">国内大学排行榜</div>
						<div class="zyzbdr"></div>
					</div>
					<div class="zyzbli">
						<ul>
							<%
								for(Ranks ranks :OnlyBrand ){
										%>
							<li>· <a
								href="<%=basePath%>ranks/brand?brand=<%=ranks.getBrand() %>">
									<%
								switch(ranks.getBrand()){
									case "wsl": 
										%>武书连<%
										break;
									case "xyh": 
										%>校友会<%
										break;
									case "NetBig": 
										%>网大<%
										break;
									default: 
										%><%=ranks.getBrand() %>
									<%
									   	break; 
								}
								%>
							</a>
							</li>
							<%
									}
								%>
						</ul>
					</div>
					<div class="zyzbd topx mt10px ">
						<div class="zyzbdl cc00 ">国外大学排行榜</div>
						<div class="zyzbdr "></div>
					</div>
					<div class="zyzbli ">
						<ul>
							<%
									for(Worldranks worldranks : OnlyworldBrand){
										%>
							<li>· <a
								href="<%=basePath%>worldranks/brand?brand=<%=worldranks.getBrand() %>">
									<%
								switch(worldranks.getBrand()){
									case "the": 
										%>英国泰晤士高等教育<%
										break;
									case "times": 
										%>泰晤士<%
										break;
									case "arwu": 
										%>软科大学排名<%
										break;
									case "usnews": 
										%>美国新闻与世界报道<%
										break;
									case "guardian": 
										%>卫报大学排名<%
										break;
									case "qs": 
										%>Quacquarelli Symonds<%
										break;
									default: 
										%><%=worldranks.getBrand() %>
									<%
									   	break; 
								}
								%>
							</a>
							</li>
							<%
									}
								%>
						</ul>
					</div>
					<div class="zyzbd">
						<div class="zyzbdl cc00">国内大学占比</div>
						<div class="zyzbdr"></div>
					</div>
					<div class="zyzbli">
						<ul>
							<%
								for(Ranks ranks :OnlyBrand ){
										%>
							<li>· <a
								href="<%=basePath%>bili?brand=<%=ranks.getBrand() %>">
									<%
								switch(ranks.getBrand()){
									case "wsl": 
										%>武书连<%
										break;
									case "xyh": 
										%>校友会<%
										break;
									case "NetBig": 
										%>网大<%
										break;
									default: 
										%><%=ranks.getBrand() %>
									<%
									   	break; 
								}
								%>
							</a>
							</li>
							<%
									}
								%>
						</ul>
					</div>
				</div>
			</div>

			<div id="main" style="width: 82%; height: 700px;margin:50px 0 0 18%;">
			</div>
			<script type="text/javascript">
									// 基于准备好的dom，初始化echarts实例
									var myChart = echarts.init(document.getElementById('main'));
									// 指定图表的配置项和数据
									var option = {
										    title: {
										        text: '<%=findByBrand.get(0).getBrand() %>排行榜排名'
										    },
										    tooltip: {
										        trigger: 'axis'
										    },
										    legend: {
										        data: ['\n','\n','\n','学术声誉','学校评价','师资力量','\n','\n','外籍教师情况','留学生','论文引用数','总分',]
										    },
										    grid: {
										        left: '3%',
										        right: '4%',
										        bottom: '3%',
										        containLabel: true
										    },
										    toolbox: {
										        feature: {
										            saveAsImage: {}
										        }
										    },
										    xAxis: {
										        type: 'category',
										        boundaryGap: false,
										        data: [
										        	<%	int a = 0;
													for(Worldranks worldranks : findByBrand){
														if(a < findByBrand.size()){
															a++;
															%>
															'<%=worldranks.getRanking() %>',
															<%
														}else{
															%>
															'<%=worldranks.getRanking() %>'
															<%
														}
													}
												%>
										        	]
										    },
										    yAxis: {
										        type: 'value'
										    },
										    series: [
										        {
										            name: '学术声誉',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int c = 0;
														for(Worldranks worldranks : findByBrand){
															if(c < findByBrand.size()){
																c++;
																%>
																<%=worldranks.getQs_academic_reputation() %>,
																<%
															}else{
																%>
																<%=worldranks.getQs_academic_reputation() %>
																<%
															}
														}
													%>
										            	]
										        },
										        {
										            name: '学校评价',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int d = 0;
														for(Worldranks worldranks : findByBrand){
															if(d < findByBrand.size()){
																d++;
																%>
																<%=worldranks.getQs_employer_reputation() %>,
																<%
															}else{
																%>
																<%=worldranks.getQs_employer_reputation() %>
																<%
															}
														}
													%>
										            	]
										        },
										        {
										            name: '师资力量',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int e = 0;
														for(Worldranks worldranks : findByBrand){
															if(e < findByBrand.size()){
																e++;
																%>
																<%=worldranks.getQs_faculty_student() %>,
																<%
															}else{
																%>
																<%=worldranks.getQs_faculty_student() %>
																<%
															}
														}
													%>
										            	]
										        },
										        {
										            name: '外籍教师情况',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int f = 0;
													for(Worldranks worldranks : findByBrand){
														if(f < findByBrand.size()){
															f++;
															%>
															<%=worldranks.getQs_international_faculty() %>,
															<%
														}else{
															%>
															<%=worldranks.getQs_international_faculty() %>
															<%
														}
													}
												%>
										            	]
										        },
										        {
										            name: '留学生',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int j = 0;
													for(Worldranks worldranks : findByBrand){
														if(j < findByBrand.size()){
															j++;
															%>
															<%=worldranks.getQs_international_students() %>,
															<%
														}else{
															%>
															<%=worldranks.getQs_international_students() %>
															<%
														}
													}
												%>
										            	]
										        },
										        {
										            name: '论文引用数',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int h = 0;
													for(Worldranks worldranks : findByBrand){
														if(h < findByBrand.size()){
															h++;
															%>
															<%=worldranks.getQs_citations_per_faculty() %>,
															<%
														}else{
															%>
															<%=worldranks.getQs_citations_per_faculty() %>
															<%
														}
													}
												%>
										            	]
										        },
										        {
										            name: '总分',
										            type: 'line',
										            stack: '总量',
										            data: [
										            	<%	int i = 0;
													for(Worldranks worldranks : findByBrand){
														if(i < findByBrand.size()){
															i++;
															%>
															<%=worldranks.getQs_overall_score() %>,
															<%
														}else{
															%>
															<%=worldranks.getQs_overall_score() %>
															<%
														}
													}
												%>
										            	]
										        }]};
									// 使用刚指定的配置项和数据显示图表。
									myChart.setOption(option);
									myChart.on('click', function (params) {
										var brand = $("#yincangzhi").val();
										var nianfen = $("#nianfen").val();
										var name = params.name;
										window.location.href="<%=basePath %>worldranks/detail?brand="+brand+"&ranking="+name+"&nianfen="+nianfen;
									});
									 
								</script>
	</div>
	 <div class="zyyxss" style="width: 82%; height: 30px;margin:50px 0 0 18%;">
                <table width="100% " border="0 " cellspacing="0 " cellpadding="0 ">
                    <tbody>
                    <tr>
                        <td style="color: red;" align="center"><b class="f14px">选择年份</b></td>
                        <form action="<%=basePath%>worldranks/brand" method="post">
                        	<td>
                        		<select name="year">
                        		<%
                        			for(Worldranks worldranks : findYear){
                        				%><option value="<%=worldranks.getYear() %>"><%=worldranks.getYear() %></option><%
                        			}
                        		%>
                        		</select>
                        	</td>
                        	<input hidden="hidden" name="brand" value="<%=findByBrand.get(0).getBrand() %>"> 
                       		<td><input class="zys_03" type="submit" style="color: red;background-color: #A6CEF1;text-align: center; " value="搜 索 "></td>
                    	</form>
                    </tr>
                </tbody></table>
        </div>
	
	<div class="copyright">
		<div class="cpy01 cpyml">
			<a href="<%=basePath%>index" target="_self">关于本站</a> <a
				href="<%=basePath%>index" target="_self">网站声明</a> <a
				href="<%=basePath%>index" target="_self">广告服务</a> <a
				href="<%=basePath%>index" target="_self">联系方式</a> <a
				href="<%=basePath%>index" target="_self">站内导航</a> <a
				href="<%=basePath%>index" target="_self">客服中心</a> <a
				href="<%=basePath%>index" target="_self">友情链接</a> <a
				href="<%=basePath%>index">最新更新</a> <a href="<%=basePath%>index">网站地图</a>
		</div>
		<div class="cpy01">
			Copyright ©
			<script language="JavaScript">
						var myDate = new Date();
						var theYear = myDate.getFullYear();
						document.write(theYear);
					</script>
			<a href="<%=basePath%>index" target="_blank">大学排行榜</a>( <a
				href="<%=basePath%>index" target="_blank"></a>) All Rights Reserved
			<a href="<%=basePath%>index" target="_blank">京ICP证06101011</a><span
				style="margin-left: 8px; margin-right: 8px;">京公网安备:1101011</span> <a
				href="<%=basePath%>index" target="_blank"
				style="position: relative; padding-left: 20px;">
				<div class="zhichi"></div>精准广告支持
			</a>
		</div>
		<div class="cpy01">中国科学院权威支持(北京) 电 话：010-1010110 传 真：010-1010110</div>
	</div>

	</div>
</body>

</html>