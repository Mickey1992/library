<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'managerZhu.jsp' starting page</title>
    <% 
//设置无缓存 
response.setHeader("progma","no-cache"); 
response.setHeader("Cache-Control","no-cache"); 
response.setDateHeader("Expires",0); 
%>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
.zhu{
 background:url(image/ab.jpg) repeat-y;
}
* {
                margin: 0; padding:0
            }
</style>
<script src="js/checkform.js" language="JavaScript" type="text/javascript"></script>
<script type="text/javascript">

 $(document).ready(function(){
  if (top.location != self.location) {
   top.location = self.location;
  } });
</script>


  </head>
  
 <body  ><center>
  <table style="background:url(image/ab.jpg);" width=1000px><tr><td>
	   
	   <center><table style="background:url(image/gd.jpg);background-repeat:no-repeat;margin:75px 0px;" width=30%><tr><td>
<!-- <script type="text/javascript">  
              
            function doLogin(){  
  
                 document.mlogin.action="servlet/mLogin";//表单提交的地址   
                 document.login.submit();  
                  
                return true;  
            }  
            
            </script> 
             <div class="zhu">   </div> 
 -->      
 <br/><br/>
<form id="form1"  onsubmit="return checkselect(this);" method="POST" action="servlet/MLogin">


<br/><br/><br/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入帐号和密码：<br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;帐号：<input type="text" name="ID"><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<input type="password" name="password"><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" style="cursor: pointer;" />

<!--<img style="cursor: pointer;" src="image/ti.jpg" onclick="javascript:document.form1.submit();" />  -->
</form>
         
<br/><br/><br/><br/>

</td></tr></table></center></td></tr></table>
</center></body>

</html>
