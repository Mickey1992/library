<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>
H6{ font-size:12px; color:#333333; font-weight:normal; margin-bottom:0;padding-bottom:0; margin-top:3px;
}
a:link,:visited{text-decoration:none; color:#333333;  

}
td{text-align:left;}
a:hover{ color:#0099FF;  
}
H5{
color:#333333; text-decoration:blink; margin-bottom:3px;padding-bottom:0; margin-top:5px; 
}
</style>


</head>

<body>
<table  width="250px" style="border:inset thick; top:100px; position:absolute; text-align:left; left:1009px"     >
<tr ><td style="border-bottom:dashed medium" style="text-align:left;"><H5>我的图书馆</H5></td></tr>
<tr><td><H6><a href="">退出</a></h6></td></tr>
<tr><td><H6><a href="">返回您的记录</a></H6></td></tr>
<tr><td><H6><a href="">重新搜索</a></H6></td></tr>
<tr><td><H6><a href="">图书荐购</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>搜索选择</H5></td></tr>
<tr><td><H6><a href="">作者</a></H6></td></tr>
<tr><td><H6><a href="">主题</a></H6></td></tr>
<tr><td><H6><a href="">索书号</a></H6></td></tr>
<tr><td><H6><a href="">文献号</a></H6></td></tr>
<tr><td><H6><a href="">教师指定参考书</a></H6></td></tr>
<tr><td><H6><a href="">课程指定参考书</a></H6></td></tr>
<tr><td><H6><a href="">高级关键词搜索</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>使用指南</H5></td></tr>
<tr><td><H6><a href="">帮助中心</a></H6></td></tr>
<tr><td><H6><a href="">新书通报</a></H6></td></tr>
<tr><td><H6><a href="">外界排行</a></H6></td></tr>
<tr><td><H6><a href="">阅读推荐</a></H6></td></tr>
<tr><td><H6><a href="">借阅规则</a></H6></td></tr>
<tr><td><H6><a href="">本馆所用分类法</a></H6></td></tr>

</table
></body>
</html>
