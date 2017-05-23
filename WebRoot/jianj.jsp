<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jianj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">

          
            * {
                margin: 0; padding:0
            }
            body {
			margin:auto; 
			  
                text-align: center;
                height: auto;
                font-size: 10px;
      
            }
           .t1 td{ font-size:12px; font-family:"宋体";padding-bottom:12px;
}
.t1 td a,:visited{ text-decoration:none; color:#333333;}
.t1 td a:hover{ color:#0033FF;} 
           .te:visited{ text-decoration:none; color:#0033CC}
            .te:link{ text-decoration:none; color:#0033CC}
 .te:hover{color:#FF3300} 
 .t2{line-height:2}
      </style>
  </head>
  
  <body>

  <table background="image/lian.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
     
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=jianj.jsp">本馆简介</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=caib.jsp">采编部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=liut1.jsp">流通阅览一部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=liut2.jsp">流通阅览二部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guj.jsp">古籍特藏部</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=qingb.jsp">情报咨询部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=xit.jsp">系统数字媒体中心</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=bang.jsp">办公室</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=qinby.jsp">情报研究所</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliao.jsp">资料室分布</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guiz.jsp">规章制度</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">联系我们</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF"><a name="ji">基本情况</a></H2></td><td><H4><a href="" class="te">返回首页</a></H4></td></tr></table>
<hr>
<table style="float:right;boeder:dotted" border="4px" cellpadding="5px" class="t2" width="200px"><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目录<hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="document.getElementById('ji').scrollIntoView();" class="te">基本情况</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('guan').scrollIntoView();" class="te" >管领导</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('jig').scrollIntoView();" class="te" >机构设置</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('tus').scrollIntoView();" class="te">图书馆学术委员会</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('reny').scrollIntoView();" class="te" >人员结构</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('addr').scrollIntoView();" class="te" >馆址</a></td></tr></table>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;华东师范大学图书馆是国家教育部直属重点大学图书馆，创建于1951年10月。现由闵行校区图书馆和中山北路校区图书馆组成，馆舍总面积约5.55万平方米，其中，2006年9月正式启用的闵行新校区图书馆为3.9万平方米。 

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图书馆拥有丰富的馆藏资源，包括古今中外各类印刷型文献和数字文献。馆藏文献的学科范围涵盖人文科学、社会科学、自然科学与应用技术等学科领域，尤以教育学、地理学、文史哲等学校重点学科领域的文献见长，为教学与科研提供了较为完备的文献信息保障，逐渐形成综合性、研究型大学图书馆馆藏特色。截止2011年底，图书馆拥有印刷型文献总量414.6万册，其中期刊合订本近35.3万册，线装古籍约32.4万册。此外，网络数据库109个（含289个子库），其中电子期刊近3.5万种，电子图书近132.8万种，学位论文213.4万余篇。 

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基于学校 “九五”、“十五”“211工程”的建设，图书馆不断加强网络和数字图书馆建设。从1999 年起，图书馆启用 INNOPAC 自动化集成管理系统，并逐步升级图书馆服务器、扩容图书馆局域网，通过校园网实现两个校区的网络连接和集中式管理。目前，图书馆两校区的电子阅览室共有600多台微机提供读者访问图书馆资源、校园网资源及因特网资源。同时通过自动化集成管理系统的用户认证和校园VPN方式，实现了本校读者远程访问数字图书馆资源的功能。近年来，图书馆积极参与CALIS“211”工程项目建设，包括联机合作编目、学位论文数据库、教学参考信息系统和特色资源数据库等建设项目，并荣获 CALIS联机合作编目杰出贡献奖。 

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图书馆积极参与地区与国家范围的馆际合作、资源共享活动。2001年设立了上海市中心图书馆华东师范大学分馆，参与上海市地区文献资源协作网；2002年，图书馆加入CALIS 联机合作编目并成为B+级成员馆；2004年成为CALIS馆际互借和文献传递成员馆；2005年加盟上海市研发公共服务平台；2006年设立CASHL学科文献中心，为上海市及全国高校和学术机构提供文献信息服务。此外图书馆是国际图书馆协会联合会（IFLA）的机构成员，积极参与国际交流与合作。 

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;华东师范大学图书馆将通过“十一·五”的建设，在文献资源建设、数字图书馆建设和服务方面获得飞跃，对学校新一轮的学科建设发展提供强有力的文献信息保障。同时构建新型的图书馆信息服务环境，使图书馆成为学校的文献信息服务中心和知识交流中心。
 <H3 style="color:#0000FF"><a name="guan">馆领导</a></H3>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;馆长：陈大康 教授            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      总支书记、常务副馆长：余海宪 研究馆员 <br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;副馆长：张静波 研究馆员         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   总支副书记：熊利红 副研究馆员 
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;副馆长：李 欣 研究馆员
 
<H3 style="color:#0000FF"><a name="jig">机构设置</a></H3>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图书馆设有采编部、流通阅览一部、流通阅览二部、情报咨询部、系统数字媒体中心（包括自动化部、数字化部）、古籍特藏部、公共文献检索教研室、办公室8个部门。情报研究所由情报咨询部、自动化部、公共文献检索教研室相关人员组成，从事文献与情报学相关研究。此外图书馆设有学术委员会，研究和讨论图书馆发展规划和重要学术问题；另设五个专业委员会： 藏书发展专业委员会、读者服务专业委员会、读者教育专业委员会、文献整序专业委员会、自动化与网络管理专业委员会，以协调跨部门的各项业务工作。

<center><h4>华东师范大学图书馆</h4></center>



<center><table border="4px"><tr><td align="center" bgcolor="#66FFFF" >部门</td><td align="center" bgcolor="#66FFFF">地点</td></tr>
<tr><td>采编部</td><td> 闵行校区馆、中山北路校区馆 </td></tr>
<tr><td>古籍特藏部</td><td> 闵行校区馆、中山北路校区馆 </td></tr><tr><td>流通阅览一部</td><td> 闵行校区馆 </td></tr>
<tr><td>流通阅览二部</td><td> 中山北路校区馆 </td></tr><tr><td>系统数字媒体中心</td><td> 闵行校区馆、中山北路校区馆 </td></tr><tr><td>情报咨询部/公共文献检索教研室</td><td>闵行校区馆、中山北路校区馆 </td>
</tr><tr><td>办公室</td><td>闵行校区馆、中山北路校区馆 </td></tr>

</table></center>



<H3 style="color:#0000FF"><a name="tus">图书馆学术委员会</a></H3>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学术委员会主任：陈大康 教授

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学术委员会副主任：余海宪 研究馆员

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学术委员会委员（排名不分先后）：

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;张静波（研究馆员），张期民（研究馆员），吴平（研究馆员），胡小菁（研究馆员），李欣（研究馆员），熊利红（副研究馆员），山顺明（副研究馆员）

<H3 style="color:#0000FF"><a name="reny">人员结构</a></H3>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 截止2011年1月图书馆共有员工139人，其中高级职称31人，硕士以上44人， 78%工作人员具有大专以上学历。 

<H3 style="color:#0000FF"><a name="addr">馆址</a></H3>

<H4>闵行校区馆</H4> 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：上海市东川路 500号 邮编200241 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;馆办电话：54344880 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传真：54342325

<H4>中山北路校区馆</H4>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地址：上海市中山北路 3663号 邮编：200062 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;馆办电话： 62232317 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传真：62579196
 
  </td></tr></table>
  </body>
</html>
