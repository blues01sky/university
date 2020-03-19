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
		<script src="<%=basePath%>static/js/hm.js"></script>
		<script src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
		<script src="<%=basePath%>static/js/jquery.cookie.js"></script>
		<script src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript"></script>

		<link href="../../static/css/style.css" rel="stylesheet" type="text/css">

		<script type="text/javascript">
			function searchschool(schoolname) {
				if(schoolname.value == "") {
					alert("kong");
				} else {
					alert(schoolname.value);
				}
			}

			function searchprovince(provincename) {
				if(provincename.value == "") {
					alert("kong");
				} else {
					alert(provincename.value);
				}
			}

			function searchmajor(majorname) {
				if(majorname.value == "") {
					alert("kong");
				} else {
					alert(majorname.value);
				}
			}
		</script>
	</head>

	<body>
		<% 
			int allNum = (Integer)request.getAttribute("allNum");
			List<Area> onlyProvince = (List<Area>)request.getAttribute("onlyProvince");
			List<Area> onlyType = (List<Area>)request.getAttribute("onlyType");
			List<Area> onlyLevel = (List<Area>)request.getAttribute("onlyLevel");
			
			List<Area> provinceLimitArea1 = (List<Area>)request.getAttribute("provinceLimitArea1");
			int byProvinceNum1 = (Integer)request.getAttribute("byProvinceNum1");
			List<Area> provinceLimitArea2 = (List<Area>)request.getAttribute("provinceLimitArea2");
			int byProvinceNum2 = (Integer)request.getAttribute("byProvinceNum2");
			List<Area> provinceLimitArea3 = (List<Area>)request.getAttribute("provinceLimitArea3");
			int byProvinceNum3 = (Integer)request.getAttribute("byProvinceNum3");
			List<Area> provinceLimitArea4 = (List<Area>)request.getAttribute("provinceLimitArea4");
			int byProvinceNum4 = (Integer)request.getAttribute("byProvinceNum4");
		%>
		<div class="tknavw">
			<div class="tknav">
				<a href="">系统首页</a>
				<a href="">院校大全</a>
				<a href="">地区排行</a>
				<a href="">热门排行</a>
				<a href="">高校联系方式</a>
				<a href="">批次控制线</a>
				<%
					String username = (String)request.getAttribute("username");
					if(username.isEmpty() || username == "" || username.equals(null)){
						%>
				<a href="<%=basePath%>user/index" style="float: right;border-radius: 15px;">注册</a>
				<a href="<%=basePath%>user/index" style="float: right;border-radius: 15px;">登录</a>
				<%
					}else{
						%>
						<a href="<%=basePath%>user/logout" style="float: right;border-radius: 15px;font-size: 1.8em;"><%=username %></a>	
						<a href="<%=basePath%>user/logout" style="float: right;border-radius: 15px;">注销登录</a>	
						<% }%>
			</div>
		</div>
		<div class="content" style="background-color: #E7E7E7">

			<div class="tktdx">
				<div class="tdxl">
					<div class="tdxlt">

						<div class="tdxbt fl">
							<b class="f16px" style="font-size: 2.5em; color: red;">挑大学</b><span class="f14px" style="color: red;">(
							<%=allNum %>所)</span>
							<div class="tdxbtt"></div>
						</div>
					</div>
					<div class="tdxlc">
						<div class="tdxlcl">
							<div class="tdxlclt">
								<div class="tdxlcltb"></div>
								按院校地区
							</div>
							<div class="tdxlclx"></div>

							<div class="tdxlclc">
								<%
									for(Area provinces : onlyProvince){
								%>
								<a href="" target="_blank">
									<%=provinces.getProvince() %>
								</a>
								<%
									}
								%>

							</div>
						</div>
						<div class="tdxlcr">
							<div class="tdxlclt">
								<div class="tdxlcltb"></div>
								按院校类型
							</div>
							<div class="tdxlclx"></div>
							<div class="tdxlclc">
								<%
									for(Area types : onlyType){
								%>
								<a href="" target="_blank">
									<%=types.getType() %>
								</a>
								<%
									}
								%>
							</div>
							<div class="tdxlclt">
								<div class="tdxlcltb"></div>
								院校性质
							</div>
							<div class="tdxlclx"></div>
							<div class="tdxlclc">
								<%
									for(Area levels : onlyLevel){
								%>
								<a href="" target="_blank">
									<%=levels.getLevel() %>
								</a>
								<%
									}
								%>
							</div>
						</div>
						<div class="clear"></div>

					</div>
					<div class="tdxlx">
						<div class="tdxlxl">
							<div class="tdxlxlt">
								<b class="fl f14px" style="color: red;font-size: 2.0em;">选专业</b>
							</div>
							<div class="tdxlxlc" style="text-align: left;">
								<a href="http://daxue.exam8.com/Major/Index?sortId=1&amp;subjectId=0" target="_blank">实验班</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=2&amp;subjectId=0" target="_blank">哲学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=3&amp;subjectId=0" target="_blank">经济学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=4&amp;subjectId=0" target="_blank">法学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=5&amp;subjectId=0" target="_blank">教育学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=6&amp;subjectId=0" target="_blank">文学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=7&amp;subjectId=0" target="_blank">历史学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=8&amp;subjectId=0" target="_blank">理学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=9&amp;subjectId=0" target="_blank">工学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=10&amp;subjectId=0" target="_blank">农学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=11&amp;subjectId=0" target="_blank">医学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=12&amp;subjectId=0" target="_blank">管理学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=13&amp;subjectId=0" target="_blank">军事学</a>
								<a href="http://daxue.exam8.com/Major/Index?sortId=14&amp;subjectId=0" target="_blank">艺术学</a>
							</div>
						</div>
						<div class="tdxlxr">
							<div class="tdxlxlt"><b class="fl f14px" style="color: red;font-size: 2.0em;">地区批次控制线</b></div>
							<div class="tdxlxlc">
								<ul>
									<li>
										<a href="#" target="_blank">19各地高考批次分数线</a>
									</li>
								
								</ul>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="tdxr">
					<div class="tdxrt">
						<b class="f14px">搜学校</b>
						<div class="">
							<input id="schoolname" style="border: solid 1px #2E6DA4;margin-left: 10%;margin-top: 50px;margin-bottom:30px;width: 80%;" onchange="searchschool(this,0,0,1)" placeholder="查学校" />

							<input id="provincename" style="border: solid 1px #2E6DA4;margin-left: 10%;margin-top: 20px;margin-bottom:30px;width: 80%;" onchange="searchprovince(this,0,0,1)" placeholder="查地区" />

							<input id="majorname" style="border: solid 1px #2E6DA4;margin-left: 10%;margin-top: 20px;margin-bottom:30px;width: 80%;" onchange="searchmajor(this,0,0,1)" placeholder="查分数" />
						</div>
					</div>

				</div>
				<div class="clear">

				</div>
			</div>

			<div class="tker">
				<div class="tdxlt">
					<div class="tdxbt fl">
						<b class="f16px" style="font-size: 2.5em;color: red;">大学信息库</b>
						<div class="tdxbtt"></div>
					</div>
					<div class="tdxgun fr">
						<a href="" target="_blank">全国千所大学收费标准</a>
						|
						<a href="" target="_blank">联系方式</a>
						|
						<a href="" target="_blank">录取规则</a>
					</div>
				</div>
				<div class="tkerc">
					<div class="tkerclin">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl"><%=provinceLimitArea1.get(0).getProvince() %>（<%=byProvinceNum1 %>所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/1"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>

								<%
									for(Area provinceLimitArea1s : provinceLimitArea1){
								%>
								<li>
									<span class="fl">
									<a href="<%=basePath%>score/index?universityname=<%=provinceLimitArea1s.getUniversityname() %>" target="_blank" style="padding-left: 20px;"><%=provinceLimitArea1s.getUniversityname() %></a>
									</span>
									<span class="fr cc00">
									<a href="#" target="_blank">官方网站</a></span>
								</li>
								<%
									}
								%>

							</ul>
						</div>
					</div>
					<div class="tkercli">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl"><%=provinceLimitArea2.get(0).getProvince() %>（<%=byProvinceNum2 %>所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/2"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<%
									for(Area provinceLimitArea2s : provinceLimitArea2){
								%>
								<li>
									<span class="fl">
									<a href="<%=basePath%>score/index?universityname=<%=provinceLimitArea2s.getUniversityname() %>" target="_blank" style="padding-left: 20px;">·<%=provinceLimitArea2s.getUniversityname() %></a>
									</span>
									<span class="fr cc00">
									<a href="#" target="_blank">官方网站</a></span>
								</li>
								<%
									}
								%>

							</ul>
						</div>
					</div>
					<div class="tkercli">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl"><%=provinceLimitArea3.get(0).getProvince() %>（<%=byProvinceNum3 %>所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/3"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<%
									for(Area provinceLimitArea3s : provinceLimitArea3){
								%>
								<li>
									<span class="fl">
									<a href="<%=basePath%>score/index?universityname=<%=provinceLimitArea3s.getUniversityname() %>" target="_blank" style="padding-left: 20px;">·<%=provinceLimitArea3s.getUniversityname() %></a>
									</span>
									<span class="fr cc00">
									<a href="#" target="_blank">官方网站</a></span>
								</li>
								<%
									}
								%>
							</ul>
						</div>
					</div>
					<div class="tkercli">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl"><%=provinceLimitArea4.get(0).getProvince() %>（<%=byProvinceNum4 %>所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/4"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<%
									for(Area provinceLimitArea4s : provinceLimitArea4){
								%>
								<li>
									<span class="fl">
									<a href="<%=basePath%>score/index?universityname=<%=provinceLimitArea4s.getUniversityname() %>" target="_blank" style="padding-left: 20px;">·<%=provinceLimitArea4s.getUniversityname() %></a>
									</span>
									<span class="fr cc00">
									<a href="#" target="_blank">官方网站</a></span>
								</li>
								<%
									}
								%>
							</ul>
						</div>
					</div>

					<div class="clear"></div>
				</div>
			</div>

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
				<div class="cpy01">联系QQ：1181566969 微信：zihan003
				</div>

			</div>
		</div>
	</body>

</html>