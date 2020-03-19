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
    <title>院校对比</title>
    
    <link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css">
    <script src="<%=basePath%>static/js/hm.js"></script>
	<script src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
    <script src="<%=basePath%>static/js/jquery.cookie.js"></script>
    <script src="<%=basePath%>static/js/jquery.cookie.js"></script>
    <script src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript"></script>
	
	<link href="../../static/css/style.css" rel="stylesheet" type="text/css">
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
        
        

<div class="zhuanyedb">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="zytable">
        <tbody><tr>
            <td class="f14px"><strong>名称</strong></td>
            <td width="22%">
                <div class="c00f"><strong>请添加院校</strong></div>
                <select class="duib1" id="ProvinceID1">
                    <option value="0">省市</option>
                    <option value="1">北京</option>
                    <option value="2">天津</option>
                    <option value="3">上海</option>
                    <option value="4">重庆</option>
                    <option value="5">河北</option>
                    <option value="6">山西</option>
                    <option value="7">内蒙古</option>
                    <option value="8">辽宁</option>
                    <option value="9">吉林</option>
                    <option value="10">黑龙江</option>
                    <option value="11">江苏</option>
                    <option value="12">浙江</option>
                    <option value="13">安徽</option>
                    <option value="14">福建</option>
                    <option value="15">江西</option>
                    <option value="16">山东</option>
                    <option value="17">河南</option>
                    <option value="18">湖北</option>
                    <option value="19">湖南</option>
                    <option value="20">广东</option>
                    <option value="21">广西</option>
                    <option value="22">海南</option>
                    <option value="23">四川</option>
                    <option value="24">贵州</option>
                    <option value="25">云南</option>
                    <option value="26">西藏</option>
                    <option value="27">陕西</option>
                    <option value="28">甘肃</option>
                    <option value="29">青海</option>
                    <option value="30">宁夏</option>
                    <option value="31">新疆</option>
                    <option value="32">港澳台</option>
                </select>
                <select class="duib1" id="CollegeID1"></select>
                <div class="duiban">
                        <input class="duib2" type="submit" value="添 加" onclick="Add(1)">
                </div>
            </td>
            <td width="22%">
                <div><strong>请添加院校</strong></div>
                <select class="duib1" id="ProvinceID2">
                    <option value="0">省市</option>
                    <option value="1">北京</option>
                    <option value="2">天津</option>
                    <option value="3">上海</option>
                    <option value="4">重庆</option>
                    <option value="5">河北</option>
                    <option value="6">山西</option>
                    <option value="7">内蒙古</option>
                    <option value="8">辽宁</option>
                    <option value="9">吉林</option>
                    <option value="10">黑龙江</option>
                    <option value="11">江苏</option>
                    <option value="12">浙江</option>
                    <option value="13">安徽</option>
                    <option value="14">福建</option>
                    <option value="15">江西</option>
                    <option value="16">山东</option>
                    <option value="17">河南</option>
                    <option value="18">湖北</option>
                    <option value="19">湖南</option>
                    <option value="20">广东</option>
                    <option value="21">广西</option>
                    <option value="22">海南</option>
                    <option value="23">四川</option>
                    <option value="24">贵州</option>
                    <option value="25">云南</option>
                    <option value="26">西藏</option>
                    <option value="27">陕西</option>
                    <option value="28">甘肃</option>
                    <option value="29">青海</option>
                    <option value="30">宁夏</option>
                    <option value="31">新疆</option>
                    <option value="32">港澳台</option>
                </select>
                <select class="duib1" id="CollegeID2"></select>
                <div class="duiban">
                        <input class="duib2" type="submit" value="添 加" onclick="Add(2)">
                </div>
            </td>
            <td width="22%">
                <div><strong>请添加院校</strong></div>
                <select class="duib1" id="ProvinceID3">
                    <option value="0">省市</option>
                    <option value="1">北京</option>
                    <option value="2">天津</option>
                    <option value="3">上海</option>
                    <option value="4">重庆</option>
                    <option value="5">河北</option>
                    <option value="6">山西</option>
                    <option value="7">内蒙古</option>
                    <option value="8">辽宁</option>
                    <option value="9">吉林</option>
                    <option value="10">黑龙江</option>
                    <option value="11">江苏</option>
                    <option value="12">浙江</option>
                    <option value="13">安徽</option>
                    <option value="14">福建</option>
                    <option value="15">江西</option>
                    <option value="16">山东</option>
                    <option value="17">河南</option>
                    <option value="18">湖北</option>
                    <option value="19">湖南</option>
                    <option value="20">广东</option>
                    <option value="21">广西</option>
                    <option value="22">海南</option>
                    <option value="23">四川</option>
                    <option value="24">贵州</option>
                    <option value="25">云南</option>
                    <option value="26">西藏</option>
                    <option value="27">陕西</option>
                    <option value="28">甘肃</option>
                    <option value="29">青海</option>
                    <option value="30">宁夏</option>
                    <option value="31">新疆</option>
                    <option value="32">港澳台</option>
                </select>
                <select class="duib1" id="CollegeID3"></select>
                <div class="duiban">
                        <input class="duib2" type="submit" value="添 加" onclick="Add(3)">
                </div>
            </td>
            <td width="22%">
                <div><strong>请添加院校</strong></div>
                <select class="duib1" id="ProvinceID4">
                    <option value="0">省市</option>
                    <option value="1">北京</option>
                    <option value="2">天津</option>
                    <option value="3">上海</option>
                    <option value="4">重庆</option>
                    <option value="5">河北</option>
                    <option value="6">山西</option>
                    <option value="7">内蒙古</option>
                    <option value="8">辽宁</option>
                    <option value="9">吉林</option>
                    <option value="10">黑龙江</option>
                    <option value="11">江苏</option>
                    <option value="12">浙江</option>
                    <option value="13">安徽</option>
                    <option value="14">福建</option>
                    <option value="15">江西</option>
                    <option value="16">山东</option>
                    <option value="17">河南</option>
                    <option value="18">湖北</option>
                    <option value="19">湖南</option>
                    <option value="20">广东</option>
                    <option value="21">广西</option>
                    <option value="22">海南</option>
                    <option value="23">四川</option>
                    <option value="24">贵州</option>
                    <option value="25">云南</option>
                    <option value="26">西藏</option>
                    <option value="27">陕西</option>
                    <option value="28">甘肃</option>
                    <option value="29">青海</option>
                    <option value="30">宁夏</option>
                    <option value="31">新疆</option>
                    <option value="32">港澳台</option>
                </select>
                <select class="duib1" id="CollegeID4"></select>
                <div class="duiban">
                        <input class="duib2" type="submit" value="添 加" onclick="Add(4)">
                </div>
            </td>
        </tr>
        <tr>
            <td><strong>类型</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>所在地</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="c00f"><strong>是否211</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="c00f"><strong>是否985</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="c00f"><strong>院校隶属</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="c00f"><strong>教育部直属院校</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>设立研究生院</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>独立学院</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>民办院校</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>国家重点学科</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>硕士点</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>博士点</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>博士后流动站</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>两院院士</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>藏书</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>创建时间</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>占地面积</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>联系电话</strong></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td><strong>学校简介</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>专业设置</strong></td>
            <td class="c00f">&nbsp;</td>
            <td class="c00f">&nbsp;</td>
            <td class="c00f">&nbsp;</td>
            <td class="c00f">&nbsp;</td>
        </tr>
        <tr>
            <td><strong>学校网址</strong></td>
            <td class="c00f">&nbsp;</td>
            <td class="c00f">&nbsp;</td>
            <td class="c00f">&nbsp;</td>
            <td class="c00f">&nbsp;</td>
        </tr>
        <tr>
            <td><strong>师资力量</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>收费标准</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>奖励资助</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>录取规则</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>在校生信息</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>食宿条件</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>就业信息</strong></td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td><strong>评价</strong></td>
                <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
        </tr>
    </tbody></table>
</div>


        <div class="copyright">
            <div class="cpy01 cpyml"><a href="http://www.exam8.com/about/AboutExam8.html" target="_self">关于本站</a><a href="http://www.exam8.com/about/copyright.html" target="_self">网站声明</a><a href="http://www.exam8.com/about/exam8adv.html" target="_self">广告服务</a><a href="http://www.exam8.com/about/Contact.html" target="_self">联系方式</a><a href="http://www.exam8.com/pay/" target="_self">付款方式</a><a href="http://www.exam8.com/map.html" target="_self">站内导航</a><a href="http://www.exam8.com/service/" target="_self">客服中心</a><a href="http://www.exam8.com/link/" target="_self">友情链接</a><a href="http://bbs.exam8.com/archiver/">考试论坛</a><a href="http://www.exam8.com/SiteMap/Article1.htm">最新更新</a><a href="http://www.exam8.com/SiteNavigation.html">网站地图</a></div>
            <div class="cpy01">
                Copyright © 2004-
                <script language="JavaScript">var myDate = new Date(); var theYear = myDate.getFullYear(); document.write(theYear);</script>2020
                <a href="http://www.exam8.com/" target="_blank">考试吧 </a>(<a href="http://www.exam8.com/" target="_blank">Exam8.com</a>) All Rights Reserved　<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP证060677</a><span style="margin-left:8px; margin-right:8px;">京公网安备:1101084974</span><a href="http://adm.baidu.com/help/success.html" target="_blank" style="position:relative; padding-left:20px;"><div class="zhichi"></div>精准广告支持</a>
            </div>
            <div class="cpy01">中国科学院研究生院权威支持(北京)　电 话：010-62168566　传 真：010-62192699</div>
            
        </div>
    </div>
