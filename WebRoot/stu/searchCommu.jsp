<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchCommu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form name=" form2" method="post" action="stu/commuResult.jsp">
    <h4>相关内容搜索：</h4><br><br><br><br><br>
    <h4>请输入书本编号或你感兴趣的问题</h4><br><br>
    <input type="text" name="question"> &nbsp;&nbsp;&nbsp;&nbsp;
    <input name="Submit" type="submit" id=" Submit" value="搜索">
    </form>
  </body>
</html>
