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
<title>中国人民大学</title>
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

</head>

<body>

	<div align="center" style="top: 250px;" id="float">
		<span id="ShowComp"></span>
	</div>
	<div class="tknavw">
		<div class="tknav">
			<a href="http://daxue.exam8.com/">系统首页</a> <a
				href="http://daxue.exam8.com/collegelist/">院校大全</a> <a
				href="http://daxue.exam8.com/Major/">专业大全</a> <a
				href="http://daxue.exam8.com/Rank/">热门排行</a> <a
				href="http://daxue.exam8.com/Contact/">高校联系方式</a> <a
				href="http://daxue.exam8.com/Rules/">录取规则</a> <a
				href="http://daxue.exam8.com/Charge/">收费标准</a> <a
				href="http://daxue.exam8.com/Line/">专业分数线</a> <a
				href="http://gaokao.exam8.com/" class="qc" target="_blank">高考首页</a>
		</div>
	</div>
	<%
		List<Score> ScoreByUniversitynames = (List<Score>)request.getAttribute("ScoreByUniversitynames");
	%>
	
	<div class="content" style="background-color: #E7E7E7">

		<div class="yxnrt">
			<div class="yxnrtl"><%=ScoreByUniversitynames.get(0).getUniversityname() %></div>
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
										<td colspan="8"><b class="fl f14px">录取分数线</b>
											<div class="fr">
												<select name="CP_PointType" id="CP_PointType">
													<option value="1">文科</option>
													<option value="2">理科</option>
													<option value="3">综合</option>
												</select>
												<select name="CP_Province" id="CP_Province">
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
												<input type="button" value="确定">
											</div></td>
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
										for(Score ScoreByUniversityname: ScoreByUniversitynames){
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
				<div class="olfc">
					<textarea class="olfcbd" id="remark"></textarea>
					<div class="olfcanx">
						<input class="olfcan"
							style="color: white; background-color: #1968AA;" type="submit"
							value="提 交" id="btn_comment">
					</div>
				</div>
			</div>

			<div class="nconr">
				<div class="nconrt" style="border-bottom: solid 2px red;">
					<b class="f14px">推荐专业</b>
				</div>
				<div class="nconrc">
					<ul>
						<li>
							<div class="ncrho" style="background-color: red;">1</div> <a
							href="http://daxue.exam8.com/c/1" target="_blank">北京大学</a>
						</li>
						<li>
							<div class="ncrho" style="background-color: red;">2</div> <a
							href="http://daxue.exam8.com/c/2" target="_blank">中国人民大学</a>
						</li>
						<li>
							<div class="ncrho" style="background-color: red;">3</div> <a
							href="http://daxue.exam8.com/c/3" target="_blank">清华大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">4</div> <a
							href="http://daxue.exam8.com/c/129" target="_blank">首都医科大学</a>
						</li>

					</ul>
				</div>
				<div class="ncheig"></div>
				<div class="nconrt" style="border-bottom: solid 2px red;">
					<b class="f14px">院校地址</b>
				</div>
				<div class="nconrc">
					<b class="cc00">中国人民大学所在的位置</b><br> 北京市海淀区中关村大街59号 <br>
					所在省份：北京 <br> 所在城市： <br>
					联系电话：010-62511340；62511156,010-62511083 <br>
				</div>
				<div class="ncheig"></div>
				<div class="nconrt" style="border-bottom: solid 2px red;">
					<b class="f14px">同地区院校关注排行</b>
				</div>
				<div class="nconrc">
					<ul>
						<li>
							<div class="ncrho" style="background-color: red;">1</div> <a
							href="http://daxue.exam8.com/c/1" target="_blank">北京大学</a>
						</li>
						<li>
							<div class="ncrho" style="background-color: red;">2</div> <a
							href="http://daxue.exam8.com/c/2" target="_blank">中国人民大学</a>
						</li>
						<li>
							<div class="ncrho" style="background-color: red;">3</div> <a
							href="http://daxue.exam8.com/c/3" target="_blank">清华大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">4</div> <a
							href="http://daxue.exam8.com/c/129" target="_blank">首都医科大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">5</div> <a
							href="http://daxue.exam8.com/c/4" target="_blank">北京航空航天大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">6</div> <a
							href="http://daxue.exam8.com/c/5" target="_blank">北京理工大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">7</div> <a
							href="http://daxue.exam8.com/c/7" target="_blank">北京师范大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">8</div> <a
							href="http://daxue.exam8.com/c/8" target="_blank">中央民族大学</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">9</div> <a
							href="http://daxue.exam8.com/c/120" target="_blank">中国石油大学(北京)</a>
						</li>
						<li>
							<div class="ncrhu" style="color: black;">10</div> <a
							href="http://daxue.exam8.com/c/1863" target="_blank">蚌埠学院</a>
						</li>
					</ul>
				</div>
				<div class="ncheig"></div>
				<div class="nconrt" style="border-bottom: solid 2px red;">
					<b class="f14px">同类型院校关注排行</b>
				</div>
				<div class="nconrc">
					<ul>
						<li>
							<div class="ncrho">1</div> <a href="http://daxue.exam8.com/c/93"
							target="_blank">西南大学</a>
						</li>
						<li>
							<div class="ncrho">2</div> <a href="http://daxue.exam8.com/c/1"
							target="_blank">北京大学</a>
						</li>
						<li>
							<div class="ncrho">3</div> <a href="http://daxue.exam8.com/c/2"
							target="_blank">中国人民大学</a>
						</li>
						<li>
							<div class="ncrhu">4</div> <a href="http://daxue.exam8.com/c/3"
							target="_blank">清华大学</a>
						</li>
						<li>
							<div class="ncrhu">5</div> <a href="http://daxue.exam8.com/c/9"
							target="_blank">南开大学</a>
						</li>
						<li>
							<div class="ncrhu">6</div> <a href="http://daxue.exam8.com/c/15"
							target="_blank">复旦大学</a>
						</li>
						<li>
							<div class="ncrhu">7</div> <a href="http://daxue.exam8.com/c/20"
							target="_blank">东南大学</a>
						</li>
						<li>
							<div class="ncrhu">8</div> <a href="http://daxue.exam8.com/c/102"
							target="_blank">宁夏大学</a>
						</li>
						<li>
							<div class="ncrhu">9</div> <a href="http://daxue.exam8.com/c/108"
							target="_blank">上海大学</a>
						</li>
						<li>
							<div class="ncrhu">10</div> <a href="http://daxue.exam8.com/c/13"
							target="_blank">吉林大学</a>
						</li>
					</ul>
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
			<div class="cpy01">中国科学院研究生院权威支持(北京) 电 话：010-62168566 传
				真：010-62192699</div>

		</div>
	</div>