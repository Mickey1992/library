<%@ page language="java" import="java.util.*" pageEncoding="utf-8" errorPage="../err.jsp"%>
 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>华东师范大学科技查新中心</title>
           <jsp:include page="../MyJsp.jsp" flush="true"/> 
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
    <table  background="image/ab.jpg" style="background-repeat:repeat; " width="1000px">
    <tr height="15px"><td></td><td></td></tr>
    <tr><td width="3%"></td><td>
    

     
   <jsp:include page='<%=request.getParameter("path") %>' flush="true"/>
 
              
        </td></tr></table>
  </body>
</html>
