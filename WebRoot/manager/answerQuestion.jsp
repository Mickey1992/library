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
    
    <title>My JSP 'answerQuestion.jsp' starting page</title>
    
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
   <table  background="image/ab-2.jpg" style="background-repeat:repeat; " width=800px height=490px> <tr><td>
     
   <table style="background:url(image/chuan_2.jpg) background-repeat:no-repeat;" width=650px height=490px><tr><td >
   <table align="center" ><tr><td>
   <%
   con.Con();
  //request.setCharacterEncoding("gbk");
  String question=new String(request.getParameter("question").getBytes("ISO-8859-1"),"utf-8");
    System.out.println(question);
  String sql = "select * from QUESTION where question = '"+question+"'";
  ResultSet rs=con.query(sql);
   System.out.println(sql);
rs.next();
  %>
  <br/>
  <br/>
   <br/>
  <br/>
  <H2 style="color:#0000FF">问题：</H2>
  <h4><%=rs.getString(1)%></h4><br>
  <H2 style="color:#0000FF">回答：</H2>
  <form action="manager/questionResult.jsp?question=<%=rs.getString(1) %>" method="post">
    <textarea  rows=10 cols=40 name="answer" > 
     </textarea> <br />
     <center> <input type="submit" value="提交"></center>
  </form>
  </td></tr></table>
   </td></tr>
   </table>
   </td></tr></table>
  </body>
</html>
