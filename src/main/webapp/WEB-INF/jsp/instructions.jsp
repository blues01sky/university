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
        <title>北京大学,录取分数线,专业设置_高考院校库_考试吧高考网_考试吧</title>
   
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
        
        
<div class="yxnrt">
    <div class="yxnrtl" style="font-size: 1.8em;">北京大学</div>
    
</div>


<div class="ncon">
    <div class="nconl" >
        <div class="sanlt" >
        	<div class="sanbt fl" style="background-color: #CCCCCC;"><b class="f16px" style="font-size:3.0em;color: #0000FF;">北京大学--院校简介</b>
        	<div class="sanbtt"></div>
        </div></div>
        <div class="nconlc">　　
            <p>&nbsp;&nbsp;&nbsp;&nbsp;北京大学创办于1898年，初名京师大学堂，是中国第一所国立综合性大学，也是当时中国最高教育行政机关。辛亥革命后，于1912年改为现名。
<br>&nbsp;&nbsp;&nbsp;&nbsp;作为新文化运动的中心和“五四”运动的策源地，作为中国最早传播马克思主义和民主科学思想的发祥地，作为中国共产党最早的活动基地，北京大学为民族的振兴和解放、国家的建设和发展、社会的文明和进步做出了不可替代的贡献，在中国走向现代化的进程中起到了重要的先锋作用。爱国、进步、民主、科学的传统精神和勤奋、严谨、求实、创新的学风在这里生生不息、代代相传。
<br>&nbsp;&nbsp;&nbsp;&nbsp;1917年，著名教育家蔡元培出任北京大学校长，他“循思想自由原则，取兼容并包主义”，对北京大学进行了卓有成效的改革，促进了思想解放和学术繁荣。陈独秀、李大钊、毛泽东以及鲁迅、胡适等一批杰出人才都曾在北京大学任职或任教。
<br>&nbsp;&nbsp;&nbsp;&nbsp;1937年卢沟桥事变后，北京大学与清华大学、南开大学南迁长沙，共同组成长沙临时大学。不久，临时大学又迁到昆明，改称国立西南联合大学。抗日战争胜利后，北京大学于1946年10月在北平复学。
<br>&nbsp;&nbsp;&nbsp;&nbsp;中华人民共和国成立后，全国高校于1952年进行院系调整，北京大学成为一所以文理基础教学和研究为主的综合性大学，为国家培养了大批人才。据不完全统计，北京大学的校友和教师有400多位两院院士，中国人文社科界有影响的人士相当多也出自北京大学。
<br>&nbsp;&nbsp;&nbsp;&nbsp;改革开放以来，北京大学进入了一个前所未有的大发展、大建设的新时期，并成为国家“211工程”重点建设的两所大学之一。
<br>&nbsp;&nbsp;&nbsp;&nbsp;1998年5月4日，北京大学百年校庆之际，国家主席江泽民在庆祝北京大学建校一百周年大会上发表讲话，发出了“为了实现现代化，我国要有若干所具有世界先进水平的一流大学”的号召。在国家的支持下，北京大学适时启动“创建世界一流大学计划”，从此，北京大学的历史翻开了新的一页。
<br>&nbsp;&nbsp;&nbsp;&nbsp;2000年4月3日，北京大学与原北京医科大学合并，组建了新的北京大学。原北京医科大学的前身是国立北京医学专门学校，创建于1912年10月26日。20世纪三、四十年代，学校一度名为北平大学医学院，并于1946年7月并入北京大学。1952年在全国高校院系调整中，北京大学医学院脱离北京大学，独立为北京医学院。1985年更名为北京医科大学，1996年成为国家首批“211工程”重点支持的医科大学。两校合并进一步拓宽了北京大学的学科结构，为促进医学与人文社会科学及理科的结合，改革医学教育奠定了基础。
<br>&nbsp;&nbsp;&nbsp;&nbsp;近年来，在“211工程”和“985工程”的支持下，北京大学进入了一个新的历史发展阶段，在学科建设、人才培养、师资队伍建设、教学科研等各方面都取得了显著成绩，为将北大建设成为世界一流大学奠定了坚实的基础。今天的北京大学已经成为国家培养高素质、创造性人才的摇篮、科学研究的前沿和知识创新的重要基地和国际交流的重要桥梁和窗口。
<br>&nbsp;&nbsp;&nbsp;&nbsp;现任校党委书记朱善璐教授、校长周其凤院士。</p>
</div>
    </div>
    <div class="nconr" >
    
    <div class="nconrt" style="border-bottom: solid 2px red;"><b class="f14px">院校位置</b></div>
    <div class="nconrc">
        <b class="cc00">北京大学所在的位置</b><br>
        北京市海淀区颐和园路5号<br>
        所在省份：北京<br>
        所在城市：<br>
        联系电话：010-62751407,62754145, 010-62752060,010-62751312<br>
    </div>
    <div class="ncheig"></div>
    <div class="nconrt" style="border-bottom: solid 2px red;"><b class="f14px">同地区院校关注排行</b></div>
    <div class="nconrc">
        <ul>
                    <li><div class="ncrho">1</div><a href="http://daxue.exam8.com/c/1" target="_blank">北京大学</a></li>
                    <li><div class="ncrho">2</div><a href="http://daxue.exam8.com/c/2" target="_blank">中国人民大学</a></li>
                    <li><div class="ncrho">3</div><a href="http://daxue.exam8.com/c/3" target="_blank">清华大学</a></li>
                    <li><div class="ncrhu">4</div><a href="http://daxue.exam8.com/c/129" target="_blank">首都医科大学</a></li>
                    <li><div class="ncrhu">5</div><a href="http://daxue.exam8.com/c/4" target="_blank">北京航空航天大学</a></li>
                    <li><div class="ncrhu">6</div><a href="http://daxue.exam8.com/c/5" target="_blank">北京理工大学</a></li>
                    <li><div class="ncrhu">7</div><a href="http://daxue.exam8.com/c/7" target="_blank">北京师范大学</a></li>
                    <li><div class="ncrhu">8</div><a href="http://daxue.exam8.com/c/8" target="_blank">中央民族大学</a></li>
                    <li><div class="ncrhu">9</div><a href="http://daxue.exam8.com/c/120" target="_blank">中国石油大学(北京)</a></li>
                    <li><div class="ncrhu">10</div><a href="http://daxue.exam8.com/c/1863" target="_blank">蚌埠学院</a></li>
        </ul>
    </div>
    <div class="ncheig"></div>
    <div class="nconrt" style="border-bottom: solid 2px red;"><b class="f14px">同类型院校关注排行</b></div>
    <div class="nconrc" style="border-bottom: solid 1px #999999;">
        <ul>
                    <li><div class="ncrho">1</div><a href="http://daxue.exam8.com/c/93" target="_blank">西南大学</a></li>
                    <li><div class="ncrho">2</div><a href="http://daxue.exam8.com/c/1" target="_blank">北京大学</a></li>
                    <li><div class="ncrho">3</div><a href="http://daxue.exam8.com/c/2" target="_blank">中国人民大学</a></li>
                    <li><div class="ncrhu">4</div><a href="http://daxue.exam8.com/c/3" target="_blank">清华大学</a></li>
                    <li><div class="ncrhu">5</div><a href="http://daxue.exam8.com/c/9" target="_blank">南开大学</a></li>
                    <li><div class="ncrhu">6</div><a href="http://daxue.exam8.com/c/15" target="_blank">复旦大学</a></li>
                    <li><div class="ncrhu">7</div><a href="http://daxue.exam8.com/c/20" target="_blank">东南大学</a></li>
                    <li><div class="ncrhu">8</div><a href="http://daxue.exam8.com/c/102" target="_blank">宁夏大学</a></li>
                    <li><div class="ncrhu">9</div><a href="http://daxue.exam8.com/c/108" target="_blank">上海大学</a></li>
                    <li><div class="ncrhu">10</div><a href="http://daxue.exam8.com/c/13" target="_blank">吉林大学</a></li>
        </ul>
    </div>
    <div class="ncheig"></div>
    
    
</div>

    <div class="nconx"></div>
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
    
   
