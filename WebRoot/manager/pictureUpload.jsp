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
<TITLE>存储图片</TITLE>
<%
			String name = (String) session.getAttribute("username");
	

			if (name == null ) {%>
		 <script language="JavaScript">
           alert("请您先登录!"); 
           parent.window.location.href="../manager/mLogin.jsp";</script>
		  <% 	
			}
		%>
</HEAD>
<body>
<!-- 下面的窗体将以Post方法，将数据传递给testimage.jsp文件 -->
<table  width="768" height="130" style="background:url(image/ab-2.jpg); background-repeat:repeat;"><tr><td>
   <center>
<table style="background:url(image/chuan.jpg) background-repeat:no-repeat;" width=650px><tr><td >
<br/><br/><br/><br/><br/><br/><br/><br/>

<FORM METHOD=POST ACTION="manager/imgToDb.jsp">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新 闻 标 题：<INPUT TYPE="text" NAME="topic"><BR><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新 闻 图 片：<INPUT TYPE="file" NAME="image" value="选择图片"><BR><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新闻内容：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<TEXTAREA name="txtmail" rows="14" cols="8" style="BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; FONT-SIZE: 9pt; HEIGHT: 200px; WIDTH: 65%" >
         </TEXTAREA><br><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="submit" value="确认上传">
</form>
<br/><br/><br/><br/><br/><br/><br/><br/>

</td></tr></table></center> </td></tr></table>

</body>
</HTML>
