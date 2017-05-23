<%@ page language="java" import="java.util.*" pageEncoding="utf-8" errorPage="../err.jsp"%>
<%@ page language="java" import="java.sql.ResultSet"%>
<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
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
* {
                margin: 0; padding:0
            }
</style>
    <base href="<%=basePath%>">
    
    <title>搜索-华东师范大学图书馆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
    <script type="javascript">
function logOut()
{

}
</script>
  <body>
  <center>
    <table style="background:url(image/ab.jpg); "><tr><td>
     
    
	   <img src="image/head.jpg"  ></td></tr><tr><td>
  <%
  String method1=request.getParameter("param");
  System.out.println(method1); %>
  <jsp:include page="dao.jsp"></jsp:include>
  
    <table width=600px height=300px style=" float:left;"><tr><td>
    <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亲~</h2><br>
  <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;可选择不同的要求进行搜索：</h2><br>
  <center>
 
 <form name=" form2" method="post" action="stu/result.jsp?page=1">
    <select name="method">
    <option value="name" <%if(method1.equals(null)|| method1.equals("name")) {%>selected="selected"<%} %>>关键字</option>
    <option value="writer" <%if(method1.equals("writer")) {%>selected="selected"<%} %>>作者</option>
    <option value="type" <%if(method1.equals("type")) {%>selected="selected"<%} %>>主题（类别）</option>
    </select>
    <input type="text" name="bookname"> &nbsp;&nbsp;&nbsp;
    <br><br><input name="Submit" type="submit" id=" Submit" value="搜索">
  </form></center>
  </td></tr></table></center>
  <% if(!session.getAttribute("username").equals(null)) {%>
    <table  width="250px" style="background:url(image/tus.jpg); background-repeat:no-repeat; top:20px; position:relative; text-align:left; float:right;right:35px"     >
<tr ><td><br><br><br>
<H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/logout.jsp">退出</a></h6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">返回主页</a></h6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/myBook.jsp">返回您的记录</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=name">重新搜索</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/donate.jsp" target="_blank">捐书申请</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/recommend.jsp" target="_blank">图书荐购</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="commu.jsp" target="_blank">书籍交流</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜索选择</H5></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=writer">作者</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=type">主题</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=name">高级关键词搜索</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用指南</H5></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">帮助中心</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/newBooks.jsp" target="_blank">新书通报</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/rank.jsp" target="_blank">外界排行</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/recommendation.jsp">阅读推荐</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="jie/jieyue.jsp?path=chaxun.jsp?">借阅规则</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=sort.jsp">本馆所用分类法</a></H6></td></tr>
<tr><td><br><br><br><br><br><br><br><br><br></td></tr>
</table>

     <% } %>
 </td></tr></table>
  </body>

</html>
  