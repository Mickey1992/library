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
           alert("�����ȵ�¼!"); 
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
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ϣ���⣺<input type="text" name="topic"  size="30"  maxlength="60">�����Ȳ��ܳ���60���ַ���<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ϣ���ݣ�<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <textarea  rows=17 cols=50 name="discribe" > 
  
     </textarea> <br /><br /><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ؼ��� <input type="text" size="30" name="keyword" maxlength="30">�����Ȳ��ܳ���30���ַ���<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ϣ���ࣺ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><select name="sort"  id="select"> 
  <option value="0" selected="selected">-��ѡ��- </option>
          <option value="notice">������Ϣ </option>
          <option value="report">����չ�� </option>
		  </select></label>
		  <br /><br />
	<center> <input type="submit" value="����">
	 <a href="index.jsp" target="_parent"> ������ҳ</a></center>
  </form>
  <br/><br/>
</td>
</tr>
</table></center>
</td></tr></table>
  </body>
</html>