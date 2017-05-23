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
    
    <title>My JSP 'bookingCheck.jsp' starting page</title>
    
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
    String user = (String)session.getAttribute("username");
    String select[] = request.getParameterValues("id"); 

    if (user==null)
    {
       response.sendRedirect("login.jsp");
    }
    else if(select == null || select.length == 0)
    {
      out.println("您没有选中任何书籍");
    }
    else
    {
      for (int i = 0; i < select.length; i++)
      {
        String sql= "insert into BOOKING values ('"+user+"', '"+select[i]+"' , getdate() , 0 )";
        connection.executeQuery(sql);
      }
      out.println("预订成功");
    }
    
    %>
  </body>
</html>
