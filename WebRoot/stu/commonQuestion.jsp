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
    
    <title>My JSP 'commonQuestion.jsp' starting page</title>
    
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
    String question = new String(request.getParameter("soso").getBytes("ISO-8859-1"),"utf-8");
    String sql="select * from QUESTION where question like '%"+question+"%'and answered = 1";
    
    ResultSet rs=connection.executeQuery(sql);
    int i=0;
    while(rs.next())
    {%>
    <a href="stu/showAnswer.jsp?qID=<%=rs.getInt(4)%> " target="_blank"> <%=rs.getString(1)%></a>
    <br>
    <br>    
    <%
    i++;}
   
    if(i==0)
    {%>
    <h4>还没有用户提出该问题或该问题尚未被解答</h4>
    <a href= "stu/questionCheck.jsp?soso=<%=question%>">向管理员提交该问题</a>
    <%}
     %>
  </body>
</html>
