<%@page import="connect.entity.Connect"%>
<%@page import="area.entity.Area"%>
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
<script language="javascript" src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
<script language="javascript" src="<%=basePath%>static/js/jquery.cookie.js"></script>
<script language="javascript" src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript" charset="gb2312"></script>
<script language="javascript" src="<%=basePath%>static/js/compare.js"></script>
<script language="javascript" src="<%=basePath%>static/js/share.js"></script>
<script language="javascript" src="<%=basePath%>static/js/XY_function.js"></script>
<script language="javascript" src="<%=basePath%>static/js/Comment.js"></script>

<link href="../../static/css/style.css" rel="stylesheet" type="text/css">
</head>

<body>

	<div align="center" style="top: 250px;" id="float">
		<span id="ShowComp"></span>
	</div>
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
	<%
		List<Score> scores = (List<Score>)request.getAttribute("scores");
	%>
	
	<div class="content" style="background-color: #E7E7E7">

		<div class="yxnrt">
			<div class="yxnrtl"><%=scores.get(0).getUniversityname() %></div>
			<div class="yxnrtr"></div>
		</div>

		<div class="ncon">
			<div class="nconl">
				<div class="ystab">
					<div class="Menubox">
						<a name="score"></a>
						<ul>
							<li class="hover" id="onz1">招生与报考</li>
						</ul>
					</div>
					<div class="Contentbox">
						<div id="con_onz_1" style="display: block;">
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="zstable">
								<tbody>
									<tr class="zstr">
										<td colspan="9"><b class="fl f14px">录取分数线</b>
											<form action="<%=basePath%>score/select" method="post">
											<input type="text" hidden="hidden" name="universityname" value="<%=scores.get(0).getUniversityname() %>" />
											<div class="fr">
												<select name="department" id="CP_PointType">
													<option value="文科">文科</option>
													<option value="理科">理科</option>
													<option value="综合">综合</option>
												</select>
												<select name="area" id="CP_Province">
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
												<input type="submit" value="确定">
											</div>
											</form>
											</td>
									</tr>
									<tr>
										<th>年份</th>
										<th>最高分</th>
										<th>平均分</th>
										<th>最低分</th>
										<th>投档线</th>
										<th>录取人数</th>
										<th>录取批次</th>
										<th>地区</th>
										<th>文理科</th>
									</tr>
								</tbody>
								<tbody id="CollegePoint">
									
									<%
										for(Score ScoreByUniversityname: scores){
									%>
									<tr>
										<td><%=ScoreByUniversityname.getYear() %></td>
										<td><%=ScoreByUniversityname.getMax() %></td>
										<td><%=ScoreByUniversityname.getAverage() %></td>
										<td><%=ScoreByUniversityname.getMin() %></td>
										<td><%=ScoreByUniversityname.getMinimum() %></td>
										<td><%=ScoreByUniversityname.getNumber() %></td>
										<td><%=ScoreByUniversityname.getBatch() %></td>
										<td><%=ScoreByUniversityname.getArea() %></td>
										<td><%=ScoreByUniversityname.getDepartment() %></td>
									</tr>
									
									<%
										}
									%>
									
								</tbody>
							</table>
							<table width="100%" border="0" cellspacing="0" cellpadding="0"
								class="zstable" style="margin-top: 1px;">

							</table>

						</div>

					</div>
				</div>
				<div class="ncheig"></div>

				<div class="sanlt" style="border-top: solid 2px #0000FF;">
					<div class="sanbt fl" style="background-color: royalblue;">
						<b class="f16px">评论</b>
						<div class="sanbtt"></div>
					</div>
				</div>
				<ul class="pinglun" id="comment_ul">
				</ul>
				<div class="olfome">
					<a name="Comment"></a><b class="fl f16px">网校评论</b><span
						class="c1968 fr"></span>
				</div>
				<form action="<%=basePath%>remark/remark" method="post">
				<input type="text" hidden="hidden" id="universityname" name="universityname" value="<%=scores.get(0).getUniversityname() %>" />
				<div class="olfc">
					<textarea class="olfcbd" id="remarkcontent" name="remarkcontent"></textarea>
					<div class="olfcanx">
						<input class="olfcan"
							style="color: white; background-color: #1968AA;" type="submit"
							value="提 交" id="btn_comment">
					</div>
				</div>
				</form>
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