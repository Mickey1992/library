<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'managerLian.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">

          
            * {
                margin: 0; padding:0
            }
            body {
			margin:auto; 
			  
                text-align: center;
                height: auto;
                font-size: 10px;
      
            }
           .t1 td{ font-size:12px; font-family:"宋体";padding-bottom:12px;
}
.t1 td a,:visited{ text-decoration:none; color:#333333;}
.t1 td a:hover{ color:#0033FF;} 
           .te:visited{ text-decoration:none; color:#0033CC}
            .te:link{ text-decoration:none; color:#0033CC}
 .te:hover{color:#FF3300} 
 .t2{line-height:2}
      </style>
  </head>
  
  <body>   
      <table  background="image/ab-1.jpg" style="background-repeat:repeat; " width=200px height=490px> <tr><td width="3%"></td><td>
  
   <table background="image/lianc.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:140px; z-index:-1; float:left;margin:0px,0px,0px,200px;" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
       
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/noticeUpload.jsp" target="myframe1">公告信息上传</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/pictureUpload.jsp" target="myframe1">滑动图片更新</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/emNotice.jsp" target="myframe1">紧急通知上传</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/newBooks.jsp" target="myframe1">新书登记</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/handleQuestion.jsp" target="myframe1">用户提问</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/handleDonate.jsp" target="myframe1">捐书</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/rentBook.jsp" target="myframe1">借书</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/returnBook.jsp" target="myframe1">还书</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;<a href="manager/bookingRent.jsp" target="myframe1">预约借书</a></td></tr>
<!--<tr><td>&nbsp;&nbsp;&nbsp;<a href="">逾期发邮件</a></td></tr>-->
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""></a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""></a></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td><br></td></tr></table>

</td></tr></table>
  </body>
</html>
