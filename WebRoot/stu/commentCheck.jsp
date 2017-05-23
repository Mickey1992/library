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
    
    <title>My JSP 'commentCheck.jsp' starting page</title>
    
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
    This is my JSP page. <br>
    <%
      String bookID = request.getParameter("param");
      String user = (String)session.getAttribute("username");
      String text = request.getParameter("comment");
      String select[] = request.getParameterValues("rate"); 
      int rate = Integer.parseInt(select[0]);
      String sql = "insert into COMMENT values ('"+user+"', '"+bookID+"',getdate(),'"+text+"',"+rate+")";
      connection.executeQuery(sql);
      String sql2= "select point , point_times from BOOK where book_ID = '"+bookID+"'";
      
      
      ResultSet rs=connection.executeQuery(sql2);
      rs.next();
      
      int times=rs.getInt(2);
      int point=rs.getInt(1);

      rate=(point*times+rate)/(times+1);
      times++;
      String sql3= "update BOOK set point = "+rate+",point_times="+times+" where book_ID = '"+bookID+"'";
      connection.executeQuery(sql3);      
    %>
    评论已提交
    
    <a href="stu/myBook.jsp">返回</a>
  </body>
</html>
