<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gb2312"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>

      <base href="<%=basePath%>"/>
<TITLE>�洢ͼƬ</TITLE>
<%
			String name = (String) session.getAttribute("username");
	

			if (name == null ) {%>
		 <script language="JavaScript">
           alert("�����ȵ�¼!"); 
           parent.window.location.href="../manager/mLogin.jsp";</script>
		  <% 	
			}
		%>
</HEAD>
<body>
<!-- ����Ĵ��彫��Post�����������ݴ��ݸ�testimage.jsp�ļ� -->
<table  width="768" height="130" style="background:url(image/ab-2.jpg); background-repeat:repeat;"><tr><td>
   <center>
<table style="background:url(image/chuan.jpg) background-repeat:no-repeat;" width=650px><tr><td >
<br/><br/><br/><br/><br/><br/><br/><br/>

<FORM METHOD=POST ACTION="manager/imgToDb.jsp">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�� �� �� �⣺<INPUT TYPE="text" NAME="topic"><BR><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�� �� ͼ Ƭ��<INPUT TYPE="file" NAME="image" value="ѡ��ͼƬ"><BR><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������ݣ�<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<TEXTAREA name="txtmail" rows="14" cols="8" style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; FONT-SIZE: 9pt; HEIGHT: 200px; WIDTH: 65%" >
         </TEXTAREA><br><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="submit" value="ȷ���ϴ�">
</form>
<br/><br/><br/><br/><br/><br/><br/><br/>

</td></tr></table></center> </td></tr></table>

</body>
</HTML>
