
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
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
    <title>My JSP 'emNotice.jsp' starting page</title>
    
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
		
<script language="javascript" type="text/javascript" src="js/My97DatePicker/WdatePicker.js">  </script>
  <script>
function d533_focus(element){
var clearingFunc = function(){ if(!confirm('���ڿ��ֵΪ:'+this.value+', ȷʵҪ�����?')) return true; }
var clearedFunc = function(){ alert('���ڿ��ѱ����'); }
WdatePicker({el:element,onclearing:clearingFunc,oncleared:clearedFunc})
}
</script>
    
  </head>
  
  <body>
   
 <table  width="768" height="130" style="background:url(image/ab-2.jpg) background-repeat:repeat;"><tr><td>
   <center>
<table style="background:url(image/chuan_2.jpg) background-repeat:no-repeat;" width=650px><tr><td >
<br/><br/><br/><br/><br/><br/><br/><br/>
<form name="form" action="servlet/emNotice" method="post" enctype="multipart/form-data">  
<table align="center"><tr><td>����֪ͨ�ϴ�</td></tr></table><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;֪ͨ���ݣ� <input type="text" name="em_notice"  size="60"  maxlength="60"><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ֹ����:&nbsp;&nbsp;&nbsp;<input type="text" name="off_time" size="30" maxlength="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**��ʽ�磺2012-09-01
 <br/>
 <br/>
 <br/><center>&nbsp;&nbsp;<input type="text"class="Wdate"id="d533" onFocus="d533_focus(this)"/>
<br/>
 <br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="ȷ���ύ">
<br/>	 
<br/>
	 <a href="index.jsp" target="_parent"> ������ҳ</a></center>
  </form>
  <br/><br/><br/><br/><br/><br/><br/><br/>
</td>
</tr>
</table></center></td></tr></table>
  </body>
</html>