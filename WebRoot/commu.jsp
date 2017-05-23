<%@ page language="java" import="java.util.*" pageEncoding="utf-8" errorPage="../err.jsp"%>
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
    <style type="text/css">
     p{ text-indent:2em; padding:0px; margin:0px; }
    h2{                text-align: center;

    
    
    }
         
            * {
                margin: 0; padding:0
            }
     .t3{line-height:1.3; font-size:20px}
    </style>
    <title>华东师范大学图书馆-书籍交流</title>
    
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
int i=1;
try{i=Integer.parseInt(request.getParameter("include"));}catch (Exception e){i=1;}
String user=(String)session.getAttribute("username");
if(user==null){
response.sendRedirect("stu/login.jsp");
}else{
String getName="select s_name from STUDENT where s_number = '"+user+"'";
ResultSet name=connection.executeQuery(getName);
name.next();%>


  <center>
    <table style="background:url(image/ab.jpg);"><tr><td>
	   <img src="image/head.gif"  ></td></tr><tr><td>
	   <center>
		<marquee onmouseover=this.stop() onmouseout=this.start() scrollAmount=1 scrollDelay=60  direction=left width=900 height=10 style="font-weight:700; font:'黑体'; color:#CC00FF">

欢迎来到书籍交流中心！<br>


</marquee></center>
    <!--   <table  width=30% style="background:url(image/deng.jpg);background-repeat:no-repeat;margin:10px 40px;float:left"><tr><td><br><br><br><br><br><br>
         <form onclick="">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校园卡号：<input type="text" /><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录密码：<input type="password"><br><br>
<center><img src="image/ti.jpg"></center><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*登录的账号与公共数据库相同<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录后才能发表主题哦！
</form>
     
   <br><br><br><br> -->
   
     <table  width=30% style="background:url(image/dengh.jpg);background-repeat:no-repeat;margin:10px 40px;float:left"><tr><td><br><br><br><br><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎 <%=name.getString(1)%>：<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你可以在此发布主题、查看已发布<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;的主题以及参加有兴趣的主题讨论！<br><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href = "commu.jsp?include=0"><img src="image/zhut.jpg" border=0></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href = "commu.jsp?include=1"><img src="image/xiangg.jpg" border=0 ></a>
<br><br><br><br><br><br>    

 </td></tr></table>   
     
     
     
     
     
     
     <br><br><br>
     <%if(i==0){%>
      <jsp:include page="stu/issue.jsp" flush="true"></jsp:include>
      <%}else if(i==1) { %>
      <jsp:include page="stu/searchCommu.jsp" flush="true"></jsp:include>
      <%} %>
    
     
     </td></tr></table></center>
      <%}%>
      <%System.out.println(i); %>
      
     
  </body>
</html>

