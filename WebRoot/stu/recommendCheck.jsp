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
    
    <title>My JSP 'recommendCheck.jsp' starting page</title>
    
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
  String bookName=new String(request.getParameter("bookName").getBytes("ISO-8859-1"),"utf-8");
  String writer=new String(request.getParameter("writer").getBytes("ISO-8859-1"),"utf-8");
  String publisher=new String(request.getParameter("publisher").getBytes("ISO-8859-1"),"utf-8");
  String version=new String(request.getParameter("versoin").getBytes("ISO-8859-1"),"utf-8");
  
  if(bookName==""||writer==""||publisher==""||version=="")
  {
    out.println("您提交的信息不完整");
  }
  else
  {
    String sql="insert into RECOMMAND values ('"+bookName+"','"+writer+"','"+publisher+"','"+version+"','"+session.getAttribute("username")+"',0)";
    connection.executeQuery(sql);
    System.out.println(sql);
    out.println("您的申请已提交，请耐心等待管理员的审核");
  }
   %>
  </body>
</html>
