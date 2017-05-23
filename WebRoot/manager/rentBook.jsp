<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>
    <title>My JSP 'rentBook.jsp' starting page</title>
    
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
   
<table  width="768" height="130" style="background:url(image/ab-2.jpg) background-repeat:repeat;"><tr><td>
   <center>
<table style="background:url(image/chuan_1.jpg) background-repeat:no-repeat;" width=650px><tr><td >
<br/><br/><br/><br/><br/><br/><br/><br/>
<form name="form" action="servlet/RentBook" method="post" enctype="multipart/form-data">  
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书 本ID： <input type="text" name="bookID"  size="20"  maxlength="60">
    <br /><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;借阅者ID: <input type="text" size="20" name="studentID" maxlength="30"><br/><br/>
		  <br /><br /><br/>
	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="确认借书">
	 <a href="index.jsp" target="_parent"> 返回主页</a>
  </form><br/><br/><br/><br/><br/><br/><br/>
</td>
</tr>
</table></center></td></tr></table>
  </body>
</html>