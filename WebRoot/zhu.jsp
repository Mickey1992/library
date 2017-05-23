<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhu.jsp' starting page</title>
        	<jsp:include page="tou.jsp" flush="true"/> </td></tr></table>
    
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
    <table ><tr><td><jsp:include page="tou.jsp" flush="true"/></td></tr></table>
  
     <table>
    <tr><td>
    </td><td width="70%"></td>
    <jsp:include page="log.jsp" flush="true"/> 
    
    
    
    
    <td>
   
    
    </td></tr>
    
    
    
    </table>
  </body>
</html>
  
 