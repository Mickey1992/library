<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'noticeUpload.jsp' starting page</title>
    
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
   <table  width="768" height="130"><tr><td style=center></td><td></td></table>
<table style="background:url(image/ab.jpg) background-repeat:repeat;"><tr><td width="600">
<form name="form" action="servlet/ResourceUpload" method="post" enctype="multipart/form-data">  
  
��Ϣ���⣺<input type="text" name="topic"  size="60"  maxlength="60">�����Ȳ��ܳ���60���ַ���<br/>
��Ϣ���ݣ�<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea  rows=20 cols=100 name="discribe" > 
  
     </textarea> <br /><br /><br />
�ؼ��� <input type="text" size="60" name="topic" maxlength="30">�����Ȳ��ܳ���30���ַ���<br/>
��Դ���أ�<label><input type="file" name="file" id="fileField" /></label><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!-- <input type="submit" name="button" id="button" value="�ύ" /> <br> -->

��Ϣ���ࣺ<label><select name="sort"  id="select"> 
          <option value="0" selected="selected">-��ѡ��- </option>
          <option value="notice1">������Ϣ </option>
          <option value="notice2">����չ�� </option>
		  </select></label>
		  <br /><br /><br/>
	<center> <input type="submit" value="����">
	 <a href="../index.jsp"> ������ҳ</a></center>
  </form>
</td>
</tr>
</table>
  </body>
</html>