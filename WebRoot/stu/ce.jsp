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
<tr ><td style="border-bottom:dashed medium" style="text-align:left;"><H5>�ҵ�ͼ���</H5></td></tr>
<tr><td><H6><a href="stu/logout.jsp">�˳�</a></h6></td></tr>
<tr><td><H6><a href="index.jsp">������ҳ</a></h6></td></tr>
<tr><td><H6><a href="stu/myBook.jsp">�������ļ�¼</a></H6></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=name">��������</a></H6></td></tr>
<tr><td><H6><a href="stu/donate.jsp" target="_blank">��������</a></H6></td></tr>
<tr><td><H6><a href="stu/recommend.jsp" target="_blank">ͼ�����</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>����ѡ��</H5></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=writer">����</a></H6></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=type">����</a></H6></td></tr>
<tr><td><H6><a href="stu/search.jsp?param=name">�߼��ؼ�������</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>ʹ��ָ��</H5></td></tr>
<tr><td><H6><a href="about.jsp?path=changj.jsp">��������</a></H6></td></tr>
<tr><td><H6><a href="stu/newBooks.jsp" target="_blank">����ͨ��</a></H6></td></tr>
<tr><td><H6><a href="stu/rank.jsp" target="_blank">�������</a></H6></td></tr>
<tr><td><H6><a href="stu/recommendation.jsp">�Ķ��Ƽ�</a></H6></td></tr>
<tr><td><H6><a href="jie/jieyue.jsp?path=chaxun.jsp?">���Ĺ���</a></H6></td></tr>
<tr><td><H6><a href="sort.jsp">�������÷��෨</a></H6></td></tr>

</table
></body>
</html>
