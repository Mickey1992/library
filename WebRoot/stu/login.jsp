<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
     <style type="text/css">
     p{ text-indent:2em; padding:0px; margin:0px; }
    h2{                text-align: center;

    
    
    }
     * {
                margin: 0; padding:0
            }
     .t3{line-height:1.3; font-size:20px}
     </style>
    <title>学生登录 </title>
    
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
  <center>
    <table style="background:url(image/ab.jpg);"><tr><td>
	   <img src="image/head.jpg"  ></td></tr><tr><td></td></tr><tr><td>
	   <center><table style="background:url(image/deng.jpg);background-repeat:no-repeat;margin:75px 0px;" width=30%><tr><td>
  <%
  session.setAttribute("username", null);
   %>
    <form name=" form1" method="post" action="stu/loginCheck.jsp?path=myBook.jsp">
    <br><br/><br/><br/><br/><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用公共数据库账号:<br><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  校园卡号:  <input type="text" name="username"><br><br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 登录密码:  <input type="password" name="password" id="p"><br><br>
   <br/>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Submit" type="submit" id=" Submit" value="提交">
   &nbsp;&nbsp;&nbsp;
    <input name="Submit2" type="reset" value="重置">
   &nbsp;&nbsp;<br/><br/><br/><br/>
    </form>
    </td></tr></table></center>
   
    </td></tr></table></center>
  </body>
</html>
