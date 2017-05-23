<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*;"%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newBooks.jsp' starting page</title>
    
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
  
   <table  width="768" height="130" style="background:url(image/ab-2.jpg) background-repeat:repeat;"><tr><td>
   <center>
<table style="background:url(image/chuan_2.jpg) background-repeat:no-repeat;" width=650px><tr><td >
<br/><br/><br/><br/><br/><br/>
  
   <form name="" id="insert" method="post" action="manager/newbookCheck.jsp" >
 <!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 捐书<input type="checkbox" name="id" value= "donate">-->
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学号：&nbsp;&nbsp;&nbsp;<input type="text" name="s_number" />&nbsp;&nbsp;&nbsp;&nbsp;××捐书输入<br><br>
  	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 书名：&nbsp;&nbsp;&nbsp;<input type="text" name="bookName" />&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=sort.jsp" target="_blank">检查此书是否存在于数据库</a><br><br>
  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书本ID：<input type="text" name="book_ID"size="20"  maxlength="60">&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=sort.jsp" target="_blank">检查ID是否存在</a><br/><br/>
  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="writer" /><br><br>
   	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出版日：<input type="text" name="date" />&nbsp;&nbsp;&nbsp;&nbsp;**形式如：1992-09-01<br><br>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 出版社：<input type="text" name="publisher"/><br><br>
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数量：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="quantity"/><br><br>
   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  所在地：<label><select name="place"  id="select"> 
   
          <option value="0" selected="selected">-请选择- </option>
          <option value="place1">中北校区 </option>
          <option value="place2">闵行校区 </option>
		  </select></label>
 	<br/><center><input name="comment" type="submit" value="提交">
 	 <a href="index.jsp" target="_parent"> 返回主页</a></center>
 	</form>
 	<br/><br/><br/>
 	</td></tr></table></center></td></tr></table>
  </body>
</html>
