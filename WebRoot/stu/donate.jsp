<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>捐书申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body><center>
    <table style="background:url(image/ab.jpg);"><tr><td>
	   <img src="image/head.jpg"  ></td></tr><tr><td>
	   	   <center><table style="background:url(image/tij.jpg);background-repeat:no-repeat;margin:75px 0px;" width=35%><tr><td>
	   
    <%
    if((String)session.getAttribute("username")==null)
    {
      response.sendRedirect("login.jsp");
    }
    else
    {%>
    <br/><br/><br/><br/><br/><br/>
    <form name="donate" id="donate" method="post" action="stu/donateCheck.jsp" target="blank">
  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 书名：<input type="text" name="bookName" /><br><br>
  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  作者：<input type="text" name="writer" /><br><br>
   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类别：<input type="text" name="type" /><br><br>
   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  出版社：<input type="text" name="publisher"/><br><br><br>
 	
 	<center><input name="comment" type="submit" value="提交"></center>
    <%}
     %>
     </form>
     <br/><br/><br/>
     </td></tr></table></center>
     
     </td></tr></table></center>
  </body>
</html>
