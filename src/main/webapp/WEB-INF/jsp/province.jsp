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
		<title>北京高校列表</title>
		<link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css">
		<script src="<%=basePath%>static/js/hm.js"></script>
		<script language="javascript" src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
		<script src="<%=basePath%>static/js/jquery.cookie.js"></script>
		<script language="javascript" src="<%=basePath%>static/js/compare.js"></script>
		<script src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript"></script>
	</head>

	<body>

		<div class="tknavw">
			<div class="tknav">
				<a href="http://daxue.exam8.com/">系统首页</a>
				<a href="http://daxue.exam8.com/collegelist/">院校大全</a>
				<a href="http://daxue.exam8.com/Major/">专业大全</a>
				<a href="http://daxue.exam8.com/Rank/">热门排行</a>
				<a href="http://daxue.exam8.com/Contact/">高校联系方式</a>
				<a href="http://daxue.exam8.com/Rules/">录取规则</a>
				<a href="http://daxue.exam8.com/Charge/">收费标准</a>
				<a href="http://daxue.exam8.com/Line/">专业分数线</a>
				<a href="http://gaokao.exam8.com/" class="qc" target="_blank">高考首页</a>
			</div>
		</div>
		<div class="content" style="background-color: #E7E7E7">

			<div class="zydaquan">
				<div class="zydql">
					<div class="sanlt">
						<div class="sanbt fl" style="background-color: #3366CC;"><b class="f16px">高校分类</b>
							<div class="sanbtt"></div>
						</div>
					</div>
					<div class="zyzcon">
						<div class="zyzbd">
							<div class="zyzbdl cc00">按院校性质</div>
							<div class="zyzbdr"></div>
						</div>
						<div class="zyzbli">
							<ul>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/benke">本科</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/zhuanke">高职专科</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/duli">独立学院</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/zhishu">教育部直属</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/ksyjs">开设研究生院高校</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/minban">民办学校</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/is211">211工程</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/xingzhi/is985">985工程</a>
								</li>
							</ul>
						</div>
						<div class="zyzbd topx">
							<div class="zyzbdl cc00">按所在地区</div>
							<div class="zyzbdr"></div>
						</div>
						<div class="zyzbli">
							<ul id="Province">
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/1">北京</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/2">天津</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/3">上海</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/4">重庆</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/5">河北</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/17">河南</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/16">山东</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/6">山西</a>
								</li>
								<li>·
									<a href="http://daxue.exam8.com/collegelist/Province/13">安徽</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/15">江西</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/11">江苏</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/12">浙江</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/18">湖北</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/19">湖南</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/20">广东</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/21">广西</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/25">云南</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/24">贵州</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/23">四川</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/27">陕西</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/29">青海</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/30">宁夏</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/10">黑龙江</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/9">吉林</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/8">辽宁</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/26">西藏</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/31">新疆</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/7">内蒙古</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/22">海南</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/14">福建</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/28">甘肃</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="http://daxue.exam8.com/collegelist/Province/32">港澳台</a>
								</li>
							</ul>
							<a href="javascript:void();" class="dqmoer" onclick="if ($(&#39;.other_prov&#39;).css(&#39;display&#39;) == &#39;none&#39;){$(&#39;.other_prov&#39;).show(&#39;slow&#39;);$(this).html(&#39;收起&#39;);}else {$(&#39;.other_prov&#39;).hide(&#39;slow&#39;);$(this).html(&#39;更多地区&#39;);}" "=" ">更多地区</a>
    </div>
    <div class="zyzbd topx mt10px "><div class="zyzbdl cc00 ">按院校类型</div><div class="zyzbdr "></div></div>
    <div class="zyzbli ">
        <ul>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/1 ">综合</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/2 ">工科</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/3 ">农业</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/4 ">师范</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/5 ">民族</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/6 ">林业</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/7 ">医药</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/8 ">语言</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/9 ">财经</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/10 ">体育</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/11 ">艺术</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/12 ">政法</a></li>
                <li>·<a href="http://daxue.exam8.com/collegelist/Province/collegelist/leixing/13 ">军事</a></li>
        </ul>
    </div>
</div>


    </div>
    <div class="zydqr ">
        <div class="zyyxss ">
            <form name="SearchCollege " id="SearchCollege " action="http://daxue.exam8.com/collegelist? " method="get ">
                <table width="100% " border="0 " cellspacing="0 " cellpadding="0 ">
                    <tbody><tr>
                        <td width="105 " style="color: red; " align="center "><b class="f14px ">院校搜索：</b></td>
                        <td align="center "><input type="text " name="keyword " id="keyword " class="zys_01 " style="width:400px;" placeholder="请在这里输入学校名称 " value=""></td>
                        <td width="200 "><input class="zys_03 " type="submit " style="color: red;background-color: #A6CEF1;text-align: center; " value="搜 索 "></td>
                    </tr>
                </tbody></table>
            </form>
        </div>
        
        
        <table width="100% " border="0 " cellspacing="0 " cellpadding="0 " class="zstable ">
            <tbody><tr>
                <th>院校名称</th>
                <th width="8% ">所在地</th>
                <th width="8% ">类别</th>
                <th width="5% ">211</th>
                <th width="5% ">985</th>
                <th width="20% ">院校性质</th>
                <th width="30% ">详细</th>
            </tr>

                    <tr>
                    <td><a href="http://daxue.exam8.com/c/1 " target="_blank ">北京大学</a></td>
                    <td>北京</td>
                    <td>综合</td>
                    <td>√</td>
                    <td>√</td>
                    <td> 本科 </td>
                    <td>
                        <a href="http://daxue.exam8.com/c/intro/1 " target="_blank ">简介</a>
                        <a href="http://daxue.exam8.com/c/1#comment " target="_blank ">评论</a>
                        <a href="javascript:addFavorite(&#39;http://daxue.566.com/c/1/&#39;,1,&#39;北京大学&#39;); ">收藏</a>
                        <a href="javascript:addComp(&#39;1&#39;,&#39;北京大学&#39;) ">加入对比</a>
                        
                                 <span class="cc00 "><a href="http://www.pku.edu.cn/ " target="_blank ">官方网站</a></span>


                    </td>
                </tr>
                    
                    <tr class="bcolor ">
                    <td><a href="http://daxue.exam8.com/c/53 " target="_blank ">北京体育大学</a></td>
                    <td>北京</td>
                    <td>体育</td>
                    <td>√</td>
                    <td></td>
                    <td> 本科 </td>
                    <td>
                        <a href="http://daxue.exam8.com/c/intro/53 " target="_blank ">简介</a>
                        <a href="http://daxue.exam8.com/c/53#comment " target="_blank ">评论</a>
                        <a href="javascript:addFavorite(&#39;http://daxue.566.com/c/53/&#39;,53,&#39;北京体育大学&#39;); ">收藏</a>
                        <a href="javascript:addComp(&#39;53&#39;,&#39;北京体育大学&#39;) ">加入对比</a>
                        
                                 <span class="cc00 "><a href="http://www.bsu.edu.cn/new/web/ " target="_blank ">官方网站</a></span>
                    </td>
                </tr>
                
        </tbody></table>
        <div class="fenye ">&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=1 " class="fy1 ">首页</a>&nbsp;&nbsp;&nbsp;<span>1</span>&nbsp;&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=2 " class="fy3 ">2</a>&nbsp;&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=3 " class="fy3 ">3</a>&nbsp;&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=4 " class="fy3 ">4</a>&nbsp;&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=5 " class="fy3 ">5</a>&nbsp;&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=2 " class="fy2 ">下一页</a> &nbsp;&nbsp;<a href="http://daxue.exam8.com/collegelist/?ProvinceID=1&amp;CityID=0&amp;pinyin=&amp;leixingID=0&amp;xingzhi=&amp;keyword=&amp;page=5 " class="fy1 ">尾页</a>&nbsp;</div>
    </div><div class="clear "></div>
</div>

        <div class="copyright ">
            <div class="cpy01 cpyml "><a href="http://www.exam8.com/about/AboutExam8.html " target="_self ">关于本站</a><a href="http://www.exam8.com/about/copyright.html " target="_self ">网站声明</a><a href="http://www.exam8.com/about/exam8adv.html " target="_self ">广告服务</a><a href="http://www.exam8.com/about/Contact.html " target="_self ">联系方式</a><a href="http://www.exam8.com/pay/ " target="_self ">付款方式</a><a href="http://www.exam8.com/map.html " target="_self ">站内导航</a><a href="http://www.exam8.com/service/ " target="_self ">客服中心</a><a href="http://www.exam8.com/link/ " target="_self ">友情链接</a><a href="http://bbs.exam8.com/archiver/ ">考试论坛</a><a href="http://www.exam8.com/SiteMap/Article1.htm ">最新更新</a><a href="http://www.exam8.com/SiteNavigation.html ">网站地图</a></div>
            <div class="cpy01 ">
                Copyright © 2004-
                <script language="JavaScript ">var myDate = new Date(); var theYear = myDate.getFullYear(); document.write(theYear);</script>2020
                <a href="http://www.exam8.com/ " target="_blank ">考试吧 </a>(<a href="http://www.exam8.com/ " target="_blank ">Exam8.com</a>) All Rights Reserved　<a href="http://www.miibeian.gov.cn/ " target="_blank ">京ICP证060677</a><span style="margin-left:8px; margin-right:8px; ">京公网安备:1101084974</span><a href="http://adm.baidu.com/help/success.html " target="_blank " style="position:relative; padding-left:20px; "><div class="zhichi "></div>精准广告支持</a>
            </div>
            <div class="cpy01 ">中国科学院研究生院权威支持(北京)　电 话：010-62168566　传 真：010-62192699</div>
            
        </div>