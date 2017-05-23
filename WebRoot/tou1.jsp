<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
   <!--   <base href="_parent">-->  
    <title>My JSP 'tou1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
 .topLinks{
 right:30%;
 }
 #u{color:#999;padding:4px 10px 5px 0;text-align:right}
 #u a{margin:0 5px}
 #u .reg{margin:0}
 #u .last{margin-right:0}
 #u .un{font-weight:bold;padding-right:11px;margin-right:5px;background:url(http://www.baidu.com/img/bg-1.0.1.gif) no-repeat right -195px}
 #u ul{width:100%;background:#fff;border:1px solid #9b9b9b}
 #u li{height:25px}#u li a{width:100%;height:25px;line-height:25px;display:block;text-align:left;text-decoration:none;text-indent:6px;margin:0 30px;filter:none\9}
 #u li a:hover{background:#ebebeb}
 #u li.nl{border-top:1px solid #ebebeb}
 #userMenu1{width:100px;position:absolute;right:27px;_right:20px;top:15px;top:14px\9;top:15px;padding-top:4px;z-index:16;background:#fff}
 #user{position:relative;display:inline-block}
 
</style>
  </head>
  
  <!-- 
  <body  scrolling="no" style="background:url(image/tou.jpg); background-repeat:no-repeat;" height="70px"> -->
  <body>
 <table align="center" background="image/head.jpg" width=997px height=113px><tr><td>
	   
	  <table align="right" >
	  
	  <tr><td>
	   <!--  <div align="right" class="topLinks"> -->
	    <div id="u"><span id="user"> 
	   <%if(session.getAttribute("username")!=null){ %>
	   &nbsp;您好：<%=session.getAttribute("username") %>&nbsp;&nbsp;&nbsp;&nbsp;
	   <%}  else{ %>  <%} %>
	   
	   <div id="userMenu1" style="visibility=hidden;"><ul>  
	  <!-- <li><a href="servlet/MLoginOut">退出</a></li> --> 
	   </ul></div></span>
	   <%
			String name =(String) session.getAttribute("username");
			if (name!=null ){%> 
	    |<a href="servlet/MLoginOut">退出 </a>
	    <%} %>	    
	    | <a href="index.jsp" class="last" target="_parent">图书馆主页</a></div>
	    </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td></td><td></td></tr> </table>
	   </td></tr>
	  	   
</table>
  </body>
</html>
