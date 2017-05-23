<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jianj.jsp' starting page</title>
    
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
 p{ text-indent:2em; padding:0px; margin:0px; }
      </style>
  </head>
  
  <body>

  <table background="image/lian.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
     
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=jianj.jsp">本馆简介</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=caib.jsp">采编部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=liut1.jsp">流通阅览一部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=liut2.jsp">流通阅览二部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guj.jsp">古籍特藏部</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=qingb.jsp">情报咨询部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=xit.jsp">系统数字媒体中心</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=bang.jsp">办公室</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=qinby.jsp">情报研究所</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliao.jsp">资料室分布</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guiz.jsp">规章制度</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">联系我们</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF"><a name="ji">总咨询台</a></H2></td><td><H4><a href="" class="te">返回首页</a></H4></td></tr></table>
<hr>

 <p align="left">为有效解决读者在利用图书馆时遇到的各类问题， 图书馆提供当面咨询、电话咨询、网络表单咨询、邮件咨询、社会网络互动等服务方式。</p>
                    <p align="left">提问前请先在“<a href="http://202.120.82.17/kb/" target="_blank">常见问题</a>”里搜索下，看是不是已经有了解答。 </p>
<form action="http://202.120.82.17/kb/" method="get" target="_blank">
<input  type="hidden" name="View" value="search" />
<input  type="hidden" name="s" value="1" /><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;常见问题查询:</strong>
<input size=5 type="text" name="q" />
<input type="submit" value="提交查询"/>
</form>
                   
                  <br>
            <p align="left"><strong>
                    不同时段，选择适合自己的咨询方式：</strong><br /><a name="inf1"></a>上班时间(周一至周五（周三下午除外） 8:30-11:00 ；13:30-16:00)，可以得到即时回应：</p>
                    
	   
        <h3><a name="inf12"></a>1.	电话咨询</h3>
        <p> 可通过电话（<span class="style2">62232086、54344881、54344887</span>）进行咨询。 </p>
 
  
        <h3><a name="inf13"></a>2.	面对面咨询</h3>
        <!--正文部分结束 -->
		   <p >中北校区：图书馆一楼情报咨询部 </p>
		   <p>闵行校区：图书馆裙楼二楼咨询台、裙楼二楼情报咨询部</p>
		    <p><br /><a name="inf2"></a>非上班时间，还有更多途径：</p>
            <h3><a name="inf21"></a>1. 社会网络互动</h3>
            <p>在<a href="http://t.sina.com.cn/ecnulib" target="_blank">新浪微博＠华东师范大学图书馆</a> ，给<a href="http://page.renren.com/600754796" target="_blank">人人网华东师范大学主页</a>留言，咨询图书馆相关问题</p>
            <h3><a name="inf22"></a>2. 网络表单咨询 </h3>
            <p>可在网上填写 <a href="http://cvrs.sh.calis.edu.cn:8080/login.do?anonymous=true&loginpage=firstpage&tenantcode=231220" target="_blank">提问表单</a> 提交您的问题。</p>
            <h3><a name="inf23"></a>3. 邮件咨询</h3>
            <p>可通过 <a href="mailto:libmaster@library.ecnu.edu.cn">电子邮件 </a>提交您的问题。</p>
            
 
  </td></tr></table>
  </body>
</html>
