<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page language="java" import="java.sql.ResultSet"%>
<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'commuCheck.jsp' starting page</title>
    
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
    String user=(String)session.getAttribute("username");
    int qID=Integer.parseInt(request.getParameter("qID"));
    String answer=new String(request.getParameter("text").getBytes("ISO-8859-1"),"utf-8");
    String getBook = "select book_ID from COMMUNICATION where q_ID = "+qID+" and quality = 'q'";
    System.out.println(getBook);
    ResultSet book = connection.executeQuery(getBook);
    book.next();
    String bookID=book.getString(1);
    String sql="insert into COMMUNICATION values('"+bookID+"','"+user+"',getdate(),'"+answer+"','a',"+qID+")";
    connection.executeQuery(sql);
    response.sendRedirect("commuDetail.jsp?qID="+qID+"&page=1");
     %>
  </body>
</html>
