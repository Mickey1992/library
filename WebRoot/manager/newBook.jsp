<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newBook.jsp' starting page</title>
    
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
   <table  width="768" height="130"><tr><td style=center></td><td></td></table>
<table style="background:url(image/ab.jpg) background-repeat:repeat;"><tr><td width="600">
<form name="form" action="servlet/ResourceUpload" method="post" enctype="multipart/form-data">  
��&nbsp;&nbsp;����<input type="text" name="book_name"  size="20"  maxlength="60"><a href="check1.jsp">��������Ƿ����</a> 
<br/>
�鱾ID��<input type="text" name="book_ID"size="20"  maxlength="60"><a href="check2.jsp">���ID�Ƿ����</a>
<br/>
<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br /><br />
��&nbsp;&nbsp;�ߣ�<input type="text" name="writer"  size="20"  maxlength="60"><br/>
 ��&nbsp;���磺<input type="text" name="publisher"  size="20"  maxlength="60"><br/> 
 �������ڣ�<input type="text" name="publish_time"  size="20"  maxlength="60"><br/>
��&nbsp;�ڵأ�<label><select name="place" id="select"> 
          <option value="0" selected="selected">-��ѡ��- </option>
          <option value="place1">�б�У�� </option>
          <option value="place2">����У�� </option>
		  </select></label>
		  <br /><br /><br/>
	<center> <input type="submit" value="����">
	 <a href="index.jsp" target="_parent"> ������ҳ</a></center>
  </form>
</td>
</tr>
</table>
  </body>
</html>