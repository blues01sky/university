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

		<script type="text/javascript">
			function searchschool(schoolname){
				if (schoolname.value == "") {
					alert("kong");
				} else{
					alert(schoolname.value);
				}
			}
			function searchprovince(provincename){
				if (provincename.value == "") {
					alert("kong");
				} else{
					alert(provincename.value);
				}
			}
			function searchmajor(majorname){
				if (majorname.value == "") {
					alert("kong");
				} else{
					alert(majorname.value);
				}
			}
		</script>
	</head>

	<body>

		<div class="tknavw">
			<div class="tknav">
				<a href="http://daxue.exam8.com/">系统首页</a>
				<a href="http://daxue.exam8.com/collegelist/">院校大全</a>
				<a href="http://daxue.exam8.com/Major/">专业大全</a>
				<a href="http://daxue.exam8.com/Rank/">热门排行</a>
				<a href="http://daxue.exam8.com/Contact/">高校联系方式</a>
				<a href="http://daxue.exam8.com/Line/">专业分数线</a>
				<a href="http://gaokao.exam8.com/" class="qc" target="_blank">高考首页</a>
			</div>
		</div>
		<div class="content" style="background-color: #E7E7E7">

			<div class="tktdx">
				<div class="tdxl">
					<div class="tdxlt">
						<div class="tdxbt fl">
							<b class="f16px" style="font-size: 2.5em; color: red;">挑大学</b><span class="f14px" style="color: red;">(2000多所)</span>
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
								<a href="http://daxue.exam8.com/collegelist/Province/1" target="_blank">北京</a>
								<a href="http://daxue.exam8.com/collegelist/Province/2" target="_blank">天津</a>
								<a href="http://daxue.exam8.com/collegelist/Province/3" target="_blank">上海</a>
								<a href="http://daxue.exam8.com/collegelist/Province/4" target="_blank">重庆</a>
								<a href="http://daxue.exam8.com/collegelist/Province/5" target="_blank">河北</a>
								<a href="http://daxue.exam8.com/collegelist/Province/17" target="_blank">河南</a>
								<a href="http://daxue.exam8.com/collegelist/Province/16" target="_blank">山东</a>
								<a href="http://daxue.exam8.com/collegelist/Province/16" target="_blank">山西</a><br>
								<a href="http://daxue.exam8.com/collegelist/Province/13" target="_blank">安徽</a>
								<a href="http://daxue.exam8.com/collegelist/Province/15" target="_blank">江西</a>
								<a href="http://daxue.exam8.com/collegelist/Province/11" target="_blank">江苏</a>
								<a href="http://daxue.exam8.com/collegelist/Province/12" target="_blank">浙江</a>
								<a href="http://daxue.exam8.com/collegelist/Province/18" target="_blank">湖北</a>
								<a href="http://daxue.exam8.com/collegelist/Province/19" target="_blank">湖南</a>
								<a href="http://daxue.exam8.com/collegelist/Province/20" target="_blank">广东</a>
								<a href="http://daxue.exam8.com/collegelist/Province/21" target="_blank">广西</a><br>
								<a href="http://daxue.exam8.com/collegelist/Province/25" target="_blank">云南</a>
								<a href="http://daxue.exam8.com/collegelist/Province/24" target="_blank">贵州</a>
								<a href="http://daxue.exam8.com/collegelist/Province/23" target="_blank">四川</a>
								<a href="http://daxue.exam8.com/collegelist/Province/27" target="_blank">陕西</a>
								<a href="http://daxue.exam8.com/collegelist/Province/29" target="_blank">青海</a>
								<a href="http://daxue.exam8.com/collegelist/Province/30" target="_blank">宁夏</a>
								<a href="http://daxue.exam8.com/collegelist/Province/10" target="_blank">黑龙江</a>
								<a href="http://daxue.exam8.com/collegelist/Province/9" target="_blank">吉林</a><br>
								<a href="http://daxue.exam8.com/collegelist/Province/8" target="_blank">辽宁</a>
								<a href="http://daxue.exam8.com/collegelist/Province/26" target="_blank">西藏</a>
								<a href="http://daxue.exam8.com/collegelist/Province/31" target="_blank">新疆</a>
								<a href="http://daxue.exam8.com/collegelist/Province/7" target="_blank">内蒙</a>
								<a href="http://daxue.exam8.com/collegelist/Province/22" target="_blank">海南</a>
								<a href="http://daxue.exam8.com/collegelist/Province/14" target="_blank">福建</a>
								<a href="http://daxue.exam8.com/collegelist/Province/28" target="_blank">甘肃</a>
								<a href="http://daxue.exam8.com/collegelist/Province/32" target="_blank">港澳</a>
							</div>
						</div>
						<div class="tdxlcr">
							<div class="tdxlclt">
								<div class="tdxlcltb"></div>
								按院校类型
							</div>
							<div class="tdxlclx"></div>
							<div class="tdxlclc">
								<a href="http://daxue.exam8.com/collegelist/leixing/1" target="_blank">综合</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/2" target="_blank">工科</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/3" target="_blank">农业</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/4" target="_blank">师范</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/5" target="_blank">民族</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/6" target="_blank">林业</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/7" target="_blank">医药</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/8" target="_blank">语言</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/9" target="_blank">财经</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/10" target="_blank">体育</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/11" target="_blank">艺术</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/12" target="_blank">政法</a>
								<a href="http://daxue.exam8.com/collegelist/leixing/13" target="_blank">军事</a>
							</div>
							<div class="tdxlclt">
								<div class="tdxlcltb"></div>
								院校性质
							</div>
							<div class="tdxlclx"></div>
							<div class="tdxlclc">
								<a href="http://daxue.exam8.com/collegelist/xingzhi/benke" target="_blank">本科</a>
								<a href="http://daxue.exam8.com/collegelist/xingzhi/zhuanke" target="_blank">专科</a>
								<a href="http://daxue.exam8.com/collegelist/xingzhi/duli" target="_blank">独立学院</a>
								<a href="http://daxue.exam8.com/collegelist/xingzhi/zhishu" target="_blank">教育部直属</a>
								<a href="http://daxue.exam8.com/collegelist/xingzhi/is211" target="_blank">211</a>
								<a href="http://daxue.exam8.com/collegelist/xingzhi/is985" target="_blank">985</a><br>
							</div>
						</div>
						<div class="clear"></div>

					</div>
					<div class="tdxlx">
						<div class="tdxlxl">
							<div class="tdxlxlt">
								<b class="fl f14px">选专业</b>
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
						<div class="clear"></div>
					</div>
				</div>
				<div class="tdxr">
					<div class="tdxrt">
						<b class="f14px">搜学校</b>
						<div class="">
							<input id="schoolname" style="border: solid 1px #2E6DA4;margin: 30px 0 10px 0;" onchange="searchschool(this,0,0,1)" placeholder="搜学校" />
								
							<input id="provincename" style="border: solid 1px #2E6DA4;margin: 30px 0 10px 0;" onchange="searchprovince(this,0,0,1)" placeholder="搜地区" />
								
							<input id="majorname" style="border: solid 1px #2E6DA4;margin: 30px 0 10px 0;" onchange="searchmajor(this,0,0,1)" placeholder="搜专业" />
						
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
						<a href="http://daxue.exam8.com/Charge/" target="_blank">全国千所大学收费标准</a>
						|
						<a href="http://daxue.exam8.com/Contact/" target="_blank">联系方式</a>
						|
						<a href="http://daxue.exam8.com/Rules/" target="_blank">录取规则</a>
					</div>
				</div>
				<div class="tkerc">
					<div class="tkerclin">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl">北京（94所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/1"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/1" target="_blank" style="padding-left: 20px;">北京大学</a></span> <span class="fr cc00"><a href="http://www.pku.edu.cn/"
									target="_blank">官方网站</a></span></li>
									
							</ul>
						</div>
					</div>
					<div class="tkercli">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl">天津（56所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/2"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/10" target="_blank">·天津大学</a></span> <span class="fr cc00"><a href="http://www.tju.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/9" target="_blank">·南开大学</a></span> <span class="fr cc00"><a href="http://www.nankai.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/144" target="_blank">·天津科技大学</a></span>
									<span class="fr cc00"><a href="http://www.tust.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/147" target="_blank">·天津理工大学</a></span>
									<span class="fr cc00"><a href="http://www.tjut.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/109" target="_blank">·天津医科大学</a></span>
									<span class="fr cc00"><a href="http://www.tijmu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/149" target="_blank">·天津中医药大学</a></span>
									<span class="fr cc00"><a href="http://www.tjutcm.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/58" target="_blank">·河北工业大学</a></span>
									<span class="fr cc00"><a href="http://www.hebut.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/145" target="_blank">·天津工业大学</a></span>
									<span class="fr cc00"><a href="http://www.tjpu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/146" target="_blank">·中国民航大学</a></span>
									<span class="fr cc00"><a href="http://www.cauc.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/2240" target="_blank">·中国人民解放军军事交通学院</a></span>
									<span class="fr cc00"><a href="http://www.jjxy.cn/"
									target="_blank">官方网站</a></span></li>
							</ul>
						</div>
					</div>
					<div class="tkercli">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl">上海（66所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/3"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/18" target="_blank">·华东师范大学</a></span>
									<span class="fr cc00"><a href="http://www.ecnu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/15" target="_blank">·复旦大学</a></span> <span class="fr cc00"><a href="http://www.fudan.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/16" target="_blank">·同济大学</a></span> <span class="fr cc00"><a href="http://www.tongji.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/108" target="_blank">·上海大学</a></span> <span class="fr cc00"><a href="http://www.shu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/115" target="_blank">·中国人民解放军第二军医大学</a></span>
									<span class="fr cc00"><a href="http://www.smmu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/70" target="_blank">·上海财经大学</a></span>
									<span class="fr cc00"><a href="http://www.shufe.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/67" target="_blank">·华东理工大学</a></span>
									<span class="fr cc00"><a href="http://www.ecust.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/2401" target="_blank">·上海纽约大学</a></span>
								</li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/729" target="_blank">·上海建桥学院</a></span>
								</li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/2242" target="_blank">·上海立信会计学院</a></span>
								</li>
							</ul>
						</div>
					</div>
					<div class="tkercli">
						<div class="tdxlclt">
							<div class="tdxlcltb"></div>
							<span class="fl">重庆（55所院校）</span><span class="fr tdxlcltbgd"><a
							href="http://daxue.exam8.com/collegelist/Province/4"
							target="_blank">更多&gt;&gt;</a></span>
						</div>
						<div class="tdxlclx"></div>
						<div class="tkercn">
							<ul>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/93" target="_blank">·西南大学</a></span> <span class="fr cc00"><a href="http://www.swnu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/419" target="_blank">·重庆交通大学</a></span>
									<span class="fr cc00"><a href="http://www.cquc.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/437" target="_blank">·西南政法大学</a></span>
									<span class="fr cc00"><a href="http://202.202.80.1/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/30" target="_blank">·重庆大学</a></span> <span class="fr cc00"><a href="http://www.cqu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/418" target="_blank">·重庆邮电大学</a></span>
									<span class="fr cc00"><a href="http://www.cqupt.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/423" target="_blank">·重庆医科大学</a></span>
									<span class="fr cc00"><a href="http://www.cqmu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/436" target="_blank">·四川外国语大学</a></span>
								</li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/2060" target="_blank">·重庆师范大学</a></span>
									<span class="fr cc00"><a href="http://www.cqnu.edu.cn/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/431" target="_blank">·重庆三峡学院</a></span>
									<span class="fr cc00"><a href="http://www.sanxiau.net/"
									target="_blank">官方网站</a></span></li>
								<li><span class="fl"><a
									href="http://daxue.exam8.com/c/2059" target="_blank">·重庆科技学院</a></span>
								</li>
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
				<div class="cpy01">中国科学院研究生院权威支持(北京) 电 话：010-62168566 传 真：010-62192699
				</div>

			</div>
		</div>
	</body>

</html>