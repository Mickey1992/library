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
    <title>My JSP 'noticeUpload.jsp' starting page</title>
    
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
<table style="background:url(image/chuan.jpg); background-repeat:no-repeat;" width=650px><tr><td >
<br/><br/><br/><br/><br/><br/>
<form name="form" action="servlet/MessageUpload" method="post" enctype="multipart/form-data">  
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消息标题：<input type="text" name="topic"  size="30"  maxlength="60">（长度不能超过60个字符）<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消息内容：<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea  rows=17 cols=50 name="discribe" > 
  
     </textarea> <br /><br /><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关键字 <input type="text" size="30" name="keyword" maxlength="30">（长度不能超过30个字符）<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消息分类：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><select name="sort"  id="select"> 
  <option value="0" selected="selected">-请选择- </option>
          <option value="notice">公告消息 </option>
          <option value="report">报告展览 </option>
		  </select></label>
		  <br /><br />
	<center> <input type="submit" value="发布">
	 <a href="index.jsp" target="_parent"> 返回主页</a></center>
  </form>
  <br/><br/>
</td>
</tr>
</table></center>
</td></tr></table>
  </body>
</html>