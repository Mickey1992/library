<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.text.*;"%>

<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>评价</title>
    
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
    
  <%
     String bookID = request.getParameter("param");
     String sql="select book_name from BOOK where book_ID = '"+ bookID +"'";
     ResultSet rs =connection.executeQuery(sql);
     rs.next();
   %>
   <form name="myComment" id="myComment" method="post" action="stu/commentCheck.jsp?param=<%=bookID%>">
  书本名称：   <%=rs.getString(1)%><br>
评分：<input type="radio" name="rate" value="1">1分
    <input type="radio" name="rate" value="2">2分
    <input type="radio" name="rate" value="3">3分
    <input type="radio" name="rate" value="4">4分
    <input type="radio" name="rate" value="5" checked="checked">5分<br><br>
    <textarea name="comment" rows="10" cols="50" id="comment"></textarea><br>
  
    <br>
    <input name="comment" type="submit" value="提交">
    </form>
    
  </body>
</html>
