<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.io.File"%>

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
 p{ text-indent:2em; padding:0px; margin:0px; }
      </style>
  </head>
  
  <body>

  <table background="cha/image/lian.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
     
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=jianj.jsp">查新简介</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=weit.jsp">委托须知</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=downl.jsp">下载中心</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=liuc.jsp">查新流程</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=charge.jsp">收费标准</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=zhengc.jsp">政策法规</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://202.120.82.49/tpi_14/sysasp/share/login.asp?sysid=67" target="_blank">查新管理库</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=chayin.jsp">查收查引</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="cha/chaxin.jsp?path=ket.jsp">课题检索</a></td></tr>

        <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF"><a name="ji">华东师范大学科技查新中心</a></H2></td><td><H4><a href="" class="te">返回首页</a></H4></td></tr></table>
<hr>

 下载中心<br><br>
	<a href=servlet/ResourceDownload?path=file/contract1.doc>1.	查新合同（国内查新）</a><br><br>
			<a href="files/contract2.doc">2.	查新合同（国内外查新）</a><br><br>
		<a href="files/feedback.doc">3.	查新意见与建议反馈表</a>
 
  </td></tr></table>
  </body>
</html>
