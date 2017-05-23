<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>
H6{ font-size:12px; color:#333333; font-weight:normal; margin-bottom:0;padding-bottom:0; margin-top:3px;
}
a:link,:visited{text-decoration:none; color:#333333;  

}
td{text-align:left;}
a:hover{ color:#0099FF;  
}
H5{
color:#333333; text-decoration:blink; margin-bottom:3px;padding-bottom:0; margin-top:5px; 
}
</style>


</head>

<script type="javascript">
function logOut()
{

}
</script>
<body>
<table  width="250px" style="border:inset thick; top:100px; position:relative; text-align:left; left:1009px"     >
<tr ><td style="border-bottom:dashed medium" style="text-align:left;"><H5>我的图书馆</H5></td></tr>
<tr><td><H6><a href="stu/logout.jsp">退出</a></h6></td></tr>
<tr><td><H6><a href="index.jsp">返回主页</a></h6></td></tr>
<tr><td><H6><a href="stu/myBook.jsp">返回您的记录</a></H6></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=name">重新搜索</a></H6></td></tr>
<tr><td><H6><a href="stu/donate.jsp" target="_blank">捐书申请</a></H6></td></tr>
<tr><td><H6><a href="stu/recommend.jsp" target="_blank">图书荐购</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>搜索选择</H5></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=writer">作者</a></H6></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=type">主题</a></H6></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=name">高级关键词搜索</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>使用指南</H5></td></tr>
<tr><td><H6><a href="about.jsp?path=changj.jsp">帮助中心</a></H6></td></tr>
<tr><td><H6><a href="stu/newBooks.jsp" target="_blank">新书通报</a></H6></td></tr>
<tr><td><H6><a href="stu/rank.jsp" target="_blank">外界排行</a></H6></td></tr>
<tr><td><H6><a href="stu/recommendation.jsp">阅读推荐</a></H6></td></tr>
<tr><td><H6><a href="jie/jieyue.jsp?path=chaxun.jsp?">借阅规则</a></H6></td></tr>
<tr><td><H6><a href="sort.jsp">本馆所用分类法</a></H6></td></tr>

</table
></body>
</html>
