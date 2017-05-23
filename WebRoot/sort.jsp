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
 .t3{line-height:1.5; font-size:13px}
 .t4{
font-size:15px; text-align:center; font-weight:bold;}
p{ text-indent:2em; padding:0px; margin:0px; }
      </style>
  </head>
  
  <body>

  <table background="image/lian2.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
       
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliao.jsp">资料室分布</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guiz.jsp">规章制度</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=fuw.jsp">服务设施</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=jianj.jsp">本馆简介</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">联系我们</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF">图书分类</H2></td><td><H4><a href="index。jsp" class="te">返回首页</a></H4></td></tr></table>
<hr>
<p>本馆的图书以英文字母加数字进行编号，其中英文字母表示图书分类，大的分类如下（可点击分类进入相应页面）：
<p><a href="stu/typeSearch.jsp?type=A" target="blank">A马克思主义、列宁主义、毛泽东思想、邓小平理论</a></p><br>
<p><a href="stu/typeSearch.jsp?type=B" target="blank">B哲学、宗教</a></p><br>
<p><a href="stu/typeSearch.jsp?type=C" target="blank">C社会科学总论</a></p><br>
<p><a href="stu/typeSearch.jsp?type=D" target="blank">D政治、法律</a></p><br>
<p><a href="stu/typeSearch.jsp?type=E" target="blank">E军事</a></p><br>
<p><a href="stu/typeSearch.jsp?type=F" target="blank">F经济</a></p><br>
<p><a href="stu/typeSearch.jsp?type=G" target="blank">G文化、科学、教育、体育</a></p><br>
<p><a href="stu/typeSearch.jsp?type=F" target="blank">H语言、文字</a></p><br>
<p><a href="stu/typeSearch.jsp?type=I" target="blank">I文学</a></p><br>
<p><a href="stu/typeSearch.jsp?type=J" target="blank">J艺术</a></p><br>
<p><a href="stu/typeSearch.jsp?type=K" target="blank">K历史、地理</a></p><br>
<p><a href="stu/typeSearch.jsp?type=N" target="blank">N自然科学总论</a></p><br>
<p><a href="stu/typeSearch.jsp?type=O" target="blank">O数理科学和化学</a></p><br>
<p><a href="stu/typeSearch.jsp?type=P" target="blank">P天文学、地理科学</a></p><br>
<p><a href="stu/typeSearch.jsp?type=Q" target="blank">Q生物科学</a></p><br>
<p><a href="stu/typeSearch.jsp?type=R" target="blank">R医药、卫生</a></p><br>
<p><a href="stu/typeSearch.jsp?type=S" target="blank">S农业科学</a></p><br>
<p><a href="stu/typeSearch.jsp?type=T" target="blank">T工业技术</a></p><br>
<p><a href="stu/typeSearch.jsp?type=U" target="blank">U交通运输</a></p><br>
<p><a href="stu/typeSearch.jsp?type=V" target="blank">V航空、航天</a></p><br>
<p><a href="stu/typeSearch.jsp?type=X" target="blank">X环境科学、安全科学</a></p><br>
<p><a href="stu/typeSearch.jsp?type=Z" target="blank">Z综合性图书</a></p><br>




  </td></tr></table>
  </body>
</html>
