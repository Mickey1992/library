<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'log.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body >
<table  width="850px" style="border-top:inset thick; top:100px; position:absolute; text-align:left; left:170px" ><tr><td>
登录：<hr></td></tr></table>

<table  width="850px" style="top:180px; position:absolute; text-align:left; left:170px" ><tr><td>
使用公共数据库账号：</td><td style="color:red;">***不能登录？没有公共数据库账号？</td></tr>
<tr><td>校园卡号：<input type="text"></td><td>请先<a href="" style="text-decoration:underline">检查你的账号</a>，并根据提示操作。</td></tr>
<tr><td>密码：<input type="password"></td><td></td></tr>
<tr><td><img src="image/ti.jpg" onclick=""></td><td></td></tr></table>
<table  width="850px" style="top:300px; position:absolute;  left:170px" ><tr><td style="text-align:center;">
登录提示
<hr></td></tr></table>
<p style="top:350px; position:absolute; left:170px">
如有问题，可联系 54344889/62232397。</p></body>
</html>
