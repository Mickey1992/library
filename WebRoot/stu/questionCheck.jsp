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
    
    <title>My JSP 'questionCheck.jsp' starting page</title>
    
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
    String sql="select * from QUESTION where question = '"+question+"'";
    System.out.println(sql);
    ResultSet rs=connection.executeQuery(sql);
    int i=0;
    int time=1;
    System.out.println(time);
    if(rs.next())
    { 
    time=rs.getInt(5)+1;
    if(rs.getString(3)==null)
    {
      String sql1= "update QUESTION set time="+time+" where question = '"+question+"'";
      connection.executeQuery(sql1);
      %>
      <h4>已有用户提出此问题，请耐心等待管理员的解答</h4>
    <% }
    
    
    }
    else{
    String getNum="select max(q_ID) from QUESTION";
    ResultSet Num = connection.executeQuery(getNum);
    Num.next();
    int num=Num.getInt(1)+1;
    System.out.println(num);
    String sql2="insert into QUESTION values ('"+question+"',getdate(),null,"+num+","+time+",0)";
    System.out.println(sql2);
    connection.executeQuery(sql2);    
   %>
      <h4>已向管理员提交该问题</h4>
      <%} %>
      

    <br>
  </body>
</html>
