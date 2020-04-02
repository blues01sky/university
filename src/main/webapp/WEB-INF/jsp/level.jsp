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
		<title>北京高校列表</title>
		<link href="<%=basePath%>static/css/style.css" rel="stylesheet" type="text/css">
		<script src="<%=basePath%>static/js/hm.js"></script>
		<script language="javascript" src="<%=basePath%>static/js/jquery-1.8.2.js"></script>
		<script src="<%=basePath%>static/js/jquery.cookie.js"></script>
		<script language="javascript" src="<%=basePath%>static/js/compare.js"></script>
		<script src="<%=basePath%>static/js/bdhmprotocol.js" type="text/javascript"></script>
		
		<link href="../../static/css/style.css" rel="stylesheet" type="text/css">
	</head>

	<body>

		<div class="tknavw">
			<div class="tknav">
				<a href="<%=basePath%>index">系统首页</a>
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
			List<Area> result = (List<Area>)request.getAttribute("result");
			List<Area> levels = (List<Area>)request.getAttribute("levels");
			List<Area> onlytypes = (List<Area>)request.getAttribute("types");
		%>
		
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
								<%
									for(Area area : onlytypes){
										%>
								<li>·
									<a href="<%=basePath%>area/types?type=<%=area.getType() %>"><%=area.getType() %></a>
								</li>
										<%
									}
								%>
							</ul>
						</div>
						<div class="zyzbd topx">
							<div class="zyzbdl cc00">按所在地区</div>
							<div class="zyzbdr"></div>
						</div>
						<div class="zyzbli">
							<ul id="Province">
								<li>·
									<a href="<%=basePath%>area/index?province=北京">北京</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=天津">天津</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=上海">上海</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=重庆">重庆</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=河北">河北</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=河南">河南</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=山东">山东</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=山西">山西</a>
								</li>
								<li>·
									<a href="<%=basePath%>area/index?province=安徽">安徽</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=江西">江西</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=江苏">江苏</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=浙江">浙江</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=湖北">湖北</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=湖南">湖南</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=广东">广东</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=广西">广西</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=云南">云南</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=贵州">贵州</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=四川">四川</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=陕西">陕西</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=青海">青海</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=宁夏">宁夏</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=黑龙江">黑龙江</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=吉林">吉林</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=辽宁">辽宁</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=西藏">西藏</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=新疆">新疆</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=内蒙古">内蒙古</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=海南">海南</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=福建">福建</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=甘肃">甘肃</a>
								</li>
								<li class="other_prov" style="display: none;">·
									<a href="<%=basePath%>area/index?province=港澳台">港澳台</a>
								</li>
							</ul>
							<a href="javascript:void();" class="dqmoer" onclick="if ($(&#39;.other_prov&#39;).css(&#39;display&#39;) == &#39;none&#39;){$(&#39;.other_prov&#39;).show(&#39;slow&#39;);$(this).html(&#39;收起&#39;);}else {$(&#39;.other_prov&#39;).hide(&#39;slow&#39;);$(this).html(&#39;更多地区&#39;);}" "=" ">更多地区</a>
    </div>
    <div class="zyzbd topx mt10px "><div class="zyzbdl cc00 ">按院校类型</div><div class="zyzbdr "></div></div>
    <div class="zyzbli ">
        <ul>
        	<%
									for(Area area : levels){
										%>
								<li>·
									<a href="<%=basePath%>area/level?type=<%=area.getLevel() %>"><%=area.getLevel() %></a>
								</li>
										<%
									}
								%>
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
					<%
						for(Area area : result){%>
							<tr>
		                    <td><a href="<%=basePath%>score/index?universityname=<%=area.getUniversityname() %>" target="_blank "><%=area.getUniversityname() %></a></td>
		                    <td><%=area.getProvince() %></td>
		                    <td><%=area.getType() %></td>
		                    <%
		                    	if(area.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
		                    <%
		                    	if(area.getIs211()==1){
		                    		%>
		                    		<td>√</td>
		                    		<% 
		                    	}else{
		                    	%>
		                    		<td></td>
		                    	<%
		                    	}
		                    %>
		                    <td><%=area.getLevel() %></td>
		                    <td>
		                        <a href="" target="_blank ">简介</a>
		                        <a href="<%=basePath%>score/index?universityname=<%=area.getUniversityname() %>" target="_blank ">历年分数线</a>
		                        <a href="">加入对比</a>
		                        	<span class="cc00 "><a href="<%=area.getUrl() %>" target="_blank ">官方网站</a></span>
		                    </td>
		                </tr>
		                <%
						}
					%>
                    
                    
        </tbody></table>
        
       	 	<%
	       		int Number = (Integer)request.getAttribute("Number");
       	 		int startnum = (Integer)request.getAttribute("startnum");
       			int shownum = (Integer)request.getAttribute("shownum");
   				int allNum = 0;
   				int pagenum = (Integer)request.getAttribute("page");
   				int beforepage = pagenum - 1;
   				int nextpage = pagenum + 1;
   				if(Number%shownum==0){
   					allNum = Number/shownum;
   				}else{
   					allNum = Number/shownum+1;
   				}
	       	%>
        <div class="fenye">&nbsp;
	        <a href="<%=basePath%>area/fenyebylevel?level=<%=result.get(0).getLevel() %>&page=1" class="fy1 ">首页</a>&nbsp;&nbsp;&nbsp;
	        <%
	        	if(pagenum!=1){%>
	        	<a href="<%=basePath%>area/fenyebylevel?level=<%=result.get(0).getLevel() %>&page=<%=beforepage %>" class="fy2 ">上一页</a>&nbsp;&nbsp;&nbsp;
	        	<%
	        	}
	        %>
	        
	        <%
	        	if(startnum == 0){
	        		%>
	        		<span>1</span>&nbsp;&nbsp;&nbsp;
	        		<%
	        		for(int i=2;i<=allNum;i++){%>
	        			<a href="<%=basePath%>area/fenyebylevel?level=<%=result.get(0).getLevel() %>&page=<%=i %>" class="fy3"><%=i %></a>&nbsp;&nbsp;&nbsp;
	        			<%
	        		}
	        	}else{
	        %>
	       	<%
	       		for(int i=1;i<=allNum;i++){
	       			if((startnum/shownum)+1==i){
	       				%>
		       			<span><%=i %></span>&nbsp;&nbsp;&nbsp;
		       	<%
	       			}else{
	       				%>
		       			<a href="<%=basePath%>area/fenyebylevel?level=<%=result.get(0).getLevel() %>&page=<%=i %>" class="fy3"><%=i %></a>&nbsp;&nbsp;&nbsp;
		       	<%
	       				}
	       			}
	       		}
	       	%>
	       	<%
	        	if(pagenum!=allNum){%>
	        	 <a href="<%=basePath%>area/fenyebylevel?level=<%=result.get(0).getLevel() %>&page=<%=nextpage %>" class="fy2 ">下一页</a> &nbsp;&nbsp;
	        	<%
	        	}
	        %>
	        <a href="<%=basePath%>area/fenyebylevel?level=<%=result.get(0).getLevel() %>&page=<%=allNum %>" class="fy1 ">尾页</a>&nbsp;</div>
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