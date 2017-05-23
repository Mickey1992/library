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
    
    <title>My JSP 'handleQuestion.jsp' starting page</title>
    
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
     ResultSet rs,rs1;
     String sql="select question,date from QUESTION where answered=0 order by time asc";
     rs=con.query(sql);
   %>
   <table align="center"><tr><td>
   <%if(rs.next()){
     rs.first();
   %>
   <H2 style="color:#0000FF">未回答问题：</H2>
      </td></tr>
  <%
  rs1=con.query(sql);
   while(rs1.next()){
  String questions=rs1.getString(1);
  String date=rs1.getString(2);
  %>
   <tr><td> <a href="manager/answerQuestion.jsp?question=<%=questions%>"><%=questions%></a>
   </td>
    <td>
 <%=rs1.getDate(2)%>  
   </td></tr>
  <%}}else {%>
   </table>
 <table  align="center"><tr><td>
  <center> <H2 style="color:#0000FF">无未回答问题哦～</H2>
  </center>
  </td></tr></table>
  <%} 
  %>
   </td></tr>
   </table>
   </td></tr></table>
  </body>
</html>
   
 