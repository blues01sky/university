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
<title>学校详情</title>
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
													<option value="北京">北京</option>
													<option value="天津">天津</option>
													<option value="上海">上海</option>
													<option value="重庆">重庆</option>
													<option value="河北">河北</option>
													<option value="山西">山西</option>
													<option value="内蒙古">内蒙古</option>
													<option value="辽宁">辽宁</option>
													<option value="吉林">吉林</option>
													<option value="黑龙江">黑龙江</option>
													<option value="江苏">江苏</option>
													<option value="浙江">浙江</option>
													<option value="安徽">安徽</option>
													<option value="福建">福建</option>
													<option value="江西">江西</option>
													<option value="山东">山东</option>
													<option value="河南">河南</option>
													<option value="湖北">湖北</option>
													<option value="湖南">湖南</option>
													<option value="广东">广东</option>
													<option value="广西">广西</option>
													<option value="海南">海南</option>
													<option value="四川">四川</option>
													<option value="贵州">贵州</option>
													<option value="云南">云南</option>
													<option value="西藏">西藏</option>
													<option value="陕西">陕西</option>
													<option value="甘肃">甘肃</option>
													<option value="青海">青海</option>
													<option value="宁夏">宁夏</option>
													<option value="新疆">新疆</option>
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
				<a href="http://www.exam8.com/about/AboutExam8.html" target="_self">关于本站</a>
				<a href="http://www.exam8.com/about/copyright.html" target="_self">网站声明</a>
				<a href="http://www.exam8.com/about/exam8adv.html" target="_self">广告服务</a>
				<a href="http://www.exam8.com/about/Contact.html" target="_self">联系方式</a>
				<a href="http://www.exam8.com/pay/" target="_self">付款方式</a> <a
					href="http://www.exam8.com/map.html" target="_self">站内导航</a> <a
					href="http://www.exam8.com/service/" target="_self">客服中心</a> <a
					href="http://www.exam8.com/link/" target="_self">友情链接</a> <a
					href="http://bbs.exam8.com/archiver/">考试论坛</a> <a
					href="http://www.exam8.com/SiteMap/Article1.htm">最新更新</a> <a
					href="http://www.exam8.com/SiteNavigation.html">网站地图</a>
			</div>
			<div class="cpy01">
				Copyright © 2004-
				<script language="JavaScript">
					var myDate = new Date();
					var theYear = myDate.getFullYear();
					document.write(theYear);
				</script>
				2020 <a href="http://www.exam8.com/" target="_blank">考试吧 </a>( <a
					href="http://www.exam8.com/" target="_blank">Exam8.com</a>) All
				Rights Reserved <a href="http://www.miibeian.gov.cn/"
					target="_blank">京ICP证060677</a><span
					style="margin-left: 8px; margin-right: 8px;">京公网安备:1101084974</span>
				<a href="http://adm.baidu.com/help/success.html" target="_blank"
					style="position: relative; padding-left: 20px;">
					<div class="zhichi"></div>精准广告支持
				</a>
			</div>
			<div class="cpy01">中国科学院研究生院权威支持(北京)　电 话：010-62168566　传 真：010-62192699</div>

		</div>
	</div>