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
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF">闵行校区开放时间</H2></td><td><H4><a href="index。jsp" class="te">返回首页</a></H4></td></tr></table>
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
					<td rowSpan=2><STRONG>裙楼</STRONG><BR><BR><A href="image/B001.jpg" target=_blank>一层</A> </td>
					<td  rowSpan=2>保存本阅览室 </td>
					<td >保存本图书、硕博士论文</td>
					<td  rowSpan=2>周一至周五<br>8:00— 17:00</td>
					<td rowSpan=2>室内阅览 </td></tr>
					<tr>
					<td>期刊合订本、民国影印本报刊 </td></tr>
					<tr >
					<td rowSpan=3><A href="image/B002.jpg" target=_blank>二层</A></td>
					<td >新书、教参书、光盘借阅区</td>
					<td>中文新书、教学参考书 
					  、<br>
					  光盘 </td>
					<td rowSpan=2>周一至周五<br>  8:00— 22:00<BR>  周六至周日 8:30—21:30</td>
					<td>开架借阅 </td></tr>
					<tr>
					<td>电子阅览室</td>
					<td >电子资源</td>
					<td>室内上机 </td></tr>
					<tr>
					<td>总服务台</td>
					<td >信息咨询</td>
					<td>周一至周五<BR>
					8:00—11:30<br>
					13:00—16:30<BR>
					（周三下午不开放）</td>
					<td >&nbsp;</td></tr>
					<tr >
					<td rowSpan=2><A href="image/B003.jpg" target=_blank>三层</A> </td>
					<td>馆际互借/文献传递</td>
					<td >向馆外获取文献&nbsp;</td>
					<td>周一至周五<BR>  8:00—11:30<br>
					  13:00—16:30</td>
					<td >&nbsp;</td></tr>
					<tr>
					<td >报刊阅览区 </td>
					<td >中外文期刊、报纸、年鉴<br>
					    本校硕士论文</td>
					<td rowSpan=2>周一至周五<BR>8:00—22:00 <BR>周六至周日 8:30—21:30 </td>
					<td>室内阅览 </td></tr>
					<tr ><td ><A href="image/B004.jpg" target=_blank>四层</A> </td>
					<td >图书借阅区</td>
					<td>中外文图书</td>
					<td >开架借阅 </td></tr>
					<tr >
					<td ><A href="image/B005.jpg" target=_blank>五层</A> </td>
					<td >参考阅览区</td>
					<td >中文保存本图书、  艺术图书<br>
					    工具书、新方志<br>  大型成套书</td>
					<td >周一至周五<BR>8:00—22:00 <BR>周六至周日 8:30—21:30 </td>
					<td >室内阅览 </td></tr>
					<tr ><td ><STRONG>主楼<BR></STRONG><A href="image/A003.jpg" target=_blank>三层</A> </td>
					<td >电子阅览区</td>
					<td >电子资源</td>
					<td>周一至周五<BR>8:00— 22:00<BR>周六至周日 8:30—21:30</td>
					<td >室内上机</td></tr>
					<tr>
					<td><A href="image/A004.jpg" target=_blank>四层</A> </td>
					<td>影视欣赏室</td>
					<td>声像资料 </td>
					<td>周一至周五<BR>
					  8:00— 21:30<BR>
					  周六至周日 8:30—21:00</td>
					<td>室内观赏</td></tr>
					<tr><td ><a href="image/A007.jpg" target="_blank" >七层</a></td>
					<td >古籍特藏阅览室</td>
					<td >古籍特藏、民国书刊 </td>
					<td >周一至周五<BR>
					8:00—11:30<br>
					13:00—16:30<BR>
					（周三下午不开放）</td>
					<td>室内阅览 </td></tr></table></center>




  </td></tr></table>
  </body>
</html>
