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
 .t3{line-height:1.5; font-size:13px}
 .t4{
font-size:15px; text-align:center; font-weight:bold;}
      </style>
  </head>
  
  <body>

  <table background="image/lian2.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
       
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliao.jsp">资料室分布</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guiz.jsp">规章制度</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=fuw.jsp">服务设施</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=jianj.jsp">本馆简介</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">联系我们</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF">中北校区开放时间</H2></td><td><H4><a href="index。jsp" class="te">返回首页</a></H4></td></tr></table>
<hr>

<center><table width="563" border="1" cellpadding="0" cellspacing="0" bordercolor="#333333" class="t3">

   <tr>
<tr bgcolor="#CCCCFF">
    <td bgcolor="#CCCCFF" class="t4" width="10%">地点</td>
    <td bgcolor="#CCCCFF" class="t4" width="22%">名称</td>
    <td bgcolor="#CCCCFF" class="t4" width="20%">文献收藏与服务</td>
    <td bgcolor="#CCCCFF" class="t4" width="18%">开放时间</td>
    <td bgcolor="#CCCCFF" class="t4" width="30%">备注</td>
  </tr>
  <tr>
    <td rowspan="6">逸夫楼<br />
    <a href="image/yif1.jpg" target="_blank">一楼</a> </td>
    <td>图书借还区(D105)</td>
    <td>中文新书、光盘<br />
中外文图书</td>
    <td>周一至周五<br />
    8:00-17:00</td>
    <td>开架借阅</td>
  </tr>
  <tr>
    <td>多媒体电子阅览室<br />
      (C101)<br />
      李朝东电子阅览室<br />
    (D110) </td>
    <td>电子资源访问</td>
    <td>周一至周日<br />
    8:00—22:00</td>
    <td>室内上机</td>
  </tr>
  <tr>
    <td>影视播放室(C111) </td>
    <td>学术与文化影视节目</td>
    <td>周一至周日<br />
      15:00-17:00 <br />
    18:30-21:00 </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>公共书目检索室(D117)</td>
    <td>本馆馆藏目录查询</td>
    <td>周一至周五<br />
    8:00-17:00</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>咨询服务<br />
（C103情报咨询部）</td>
    <td>信息咨询、科技查新</td>
    <td>周一至周五<br />
      8:00-11:30<br />
    13:30-17:00</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>复印室<br />
    (A101)</td>
    <td>硕士研究生专业课<br />
历年试卷</td>
    <td>周一至周五<br />
      8:00-11:15<br />
    13:30-16:45</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td rowspan="2">逸夫楼<br />
    <a href="image/yif3.jpg" target="_blank">三楼</a></td>
    <td>书刊阅览室<br />
    (C301)</td>
    <td>参考工具书<br />
      中外文图书<br />
      中外文现刊<br />
      过刊<br />
      (外文2000-)<br />
(中文2005-)</td>
    <td>周一至周日<br />
    8:00- 22:00</td>
    <td>室内阅览</td>
  </tr>
  <tr>
    <td>馆际互借与文献传递<br />
    (C301)</td>
    <td>向馆外获取文献</td>
    <td>周一至周五<br />
      8:00-11:30<br />
    13:30-17:00</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td rowspan="2">逸夫楼<br />
    <a href="image/yif4.jpg" target="_blank">四楼</a></td>
    <td>保存本与赠书阅览室<br />
    (C401)</td>
    <td>保存本图书<br />
团体及个人赠书<br />
硕博士论文</td>
    <td>周一至周五 <br />
      8:00-11:30 <br />
13:30-17:00<br />
（除周三下午）</td>
    <td>室内阅览 （保存本需填单后由工作人员调阅）</td>
  </tr>
  <tr>
    <td>自修室<br />
    (B401)</td>
    <td>&nbsp;</td>
    <td>周一至周日<br />
    8:00—22:00</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>逸夫楼<br />
    <a href="image/yif8.jpg" target="_blank">八楼</a></td>
    <td>古籍特藏阅览室<br />
    (A802) </td>
    <td>古籍特藏、民国书刊</td>
    <td>周一<br />
      8:00-11:30<br />
      13:30-17:00<br />
      周三<br />
    8:00-11:30</td>
    <td>室内阅览 </td>
  </tr>
  <tr>
    <td>图书馆<br />
    <a href="image/lao.jpg" target="_blank">老馆</a> </td>
    <td>过刊阅览室 </td>
    <td>以书目查询馆藏地为准<br />
      所有学科<br />
      ( 1996年以前合订本)<br />
      部分学科<br />
      (中文1997－2004)<br />
(西文1997－1999)</td>
    <td>周一<br />
      8:00-11:15<br />
      13:30-16:45<br />
      周三<br />
      8:00-11:15<br />
      周五<br />
      8:00-11:15<br />
    13:30-16:45</td>
    <td>室内阅览<br />
填单后由工作	人员调阅或提	前将所需期刊的刊名、年卷期页、读者所在院系、姓名等信息发<br />
邮箱：<br />
<a href="mailto:liumingecnu@hotmail.com">liumingecnu@hotmail.com</a></td>
  </tr>
</table></center>




  </td></tr></table>
  </body>
</html>
