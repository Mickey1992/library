<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*;"%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'questionResult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
			String name = (String) session.getAttribute("username");
	

			if (name == null ) {%>
		 <script language="JavaScript">
           alert("请您先登录!"); 
           parent.window.location.href="../manager/mLogin.jsp";</script>
		  <% 	
			}
		%>
  </head>
  
  <body>
  <table  background="image/ab-2.jpg" style="background-repeat:repeat; " width=800px height=490px> <tr><td>
     
   <table style="background:url(image/chuan_2.jpg) background-repeat:no-repeat;" width=650px height=490px><tr><td >
  <% 
  con.Con();
  ResultSet rs;
      String question= new String(request.getParameter("question").getBytes("ISO-8859-1"),"utf-8");
      String answer =  new String(request.getParameter("answer").getBytes("ISO-8859-1"),"utf-8");
      String sql="update QUESTION set answer='"+answer+"',answered=1 where question='"+question+"'";
      con.update(sql);
      %>
      <script>
      window.location.href="handleQuestion.jsp";
      </script>
       </td></tr>
   </table>
   </td></tr></table>
  </body>
</html>
