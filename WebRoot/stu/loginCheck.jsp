<%@ page language="java" import="java.util.*" pageEncoding="utf-8"  errorPage="../err.jsp"%>

<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginCheck.jsp' starting page</title>
    
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
    String username = request.getParameter("username");
   // String user = new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
   // int username=Integer.parseInt(user);
    String pwd = request.getParameter("password");
    System.out.println(username+" ");
    System.out.println(pwd +" ");
    String tpath=request.getParameter("path");
    String sql="select * from STUDENT where s_number='" +username+ "' and s_psw='" +pwd+ "'";
    System.out.println(sql);
    ResultSet rs=connection.executeQuery(sql);
    if(rs.next())
    {
      session.setAttribute("username", username);
      response.sendRedirect(tpath);
    }
    else
    {
                     response.getWriter().write("<script languge='javascript'>alert('用户名或密码错误！');window.location.href='login.jsp'</script>");
 
    }
    %>
  </body>
</html>
