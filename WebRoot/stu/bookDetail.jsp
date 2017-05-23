<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <style type="text/css">
     p{ text-indent:2em; padding:0px; margin:0px; }
    h1{                font-weight:normal;

    
    
    }
     * {
                margin: 0; padding:0
            }
    </style>
    <title>详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <center>
    <table style="background:url(image/ab.jpg); "><tr><td>
     
    
	   <img src="image/head.jpg"  ></td></tr><tr><td>
  <%
    String bookID = request.getParameter("param"); 
    int pageNum=1;
    try{pageNum=Integer.parseInt(request.getParameter("page"));}catch (Exception e){pageNum=1;}
    int pageSize=20;
    int last=0;
    int next=0;
    
    String sql1 = "select * from BOOK where book_ID = '"+bookID+"'"; 
    System.out.println(sql1);
    ResultSet bookInfo=connection.executeQuery(sql1);
    bookInfo.next();
    int rate= bookInfo.getInt(8);
    System.out.println(rate);
  %>
  
  <br><br><center><h3><%=bookInfo.getString(2)%></h3></center><center>
<br><table border="1" cellpadding="0" bgcolor="white" width="800"  height="75" >  
  <tr>
  <td rowspan="5" width="200"><%if(bookInfo.getString(10)==null){%> <img src="image/bookpic.png"><%} %></td>
  <td>作者：<%if(bookInfo.getString(3)!=null){%><%=bookInfo.getString(3) %><%}else{ %>未知<%} %></td>
  </tr>
  
  <tr><td>出版社：<%if(bookInfo.getString(4)!=null){%><%=bookInfo.getString(4) %><%}else{ %>未知<%} %></td></tr>
  <tr><td>出版时间：<%if(bookInfo.getDate(5)!=null){ %> <%=bookInfo.getDate(5) %><%}else { %>未知<%} %></td></tr>
  <tr><td>平均得分：<% if(rate<1){%>
                   <img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"> 
                 <% }
                    else{  
                   for (int i=1;i<=rate;i++){%>
                   <img src="image/star2.png">
                 <%} }%>
  </td></tr>
  </table></center>
  <br> <br> <br> <br> 
  
 <%
 
 String sql2="select * from COMMENT where book_ID = '"+bookID+"'";
 System.out.println(sql2);
 ResultSet comment = connection.executeQuery(sql2);
 if(!comment.next()){
 %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;还没有人对这本书进行评论哦！
 <% 
 }
 else{
 %>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;读者评价:<br>
 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;------------------------------------------------------------------------------------------------------------------------------------------------------
 
 <table style="margin:0px 0px 0px 35px"><tr><td>
 <% 
  String getCount = "select count(*) from (select * from COMMENT where book_ID = '"+bookID+"') as t";
  ResultSet getcount = connection.executeQuery(getCount);
  getcount.next();
  int count = Integer.parseInt(getcount.getString(1));
    if(pageNum*pageSize<count)
     	{
     		if(pageNum>1)
     		{
     		last=1;
     		}
     		next=1;
     	}
     else if (pageNum>1)
     {
       last=1;
     }
     sql2="select top "+pageNum*pageSize+" * from COMMENT where book_ID = '"+bookID+"' except select top "+(pageNum-1)*pageSize+" * from COMMENT where book_ID = '"+bookID+"'";
 System.out.println(sql2);
  comment = connection.executeQuery(sql2);
 while(comment.next())
 {
 String user=comment.getString(1);
 System.out.println();
 
  %>
  <br><br>
 用户:<%= comment.getString(1)%>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
评分：<%for(int i=1;i<=comment.getInt(5);i++){%><img src="image/star2.png"><%} %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
发表于 ：<%=comment.getDate(3)%>
<br><br><p>
<%=comment.getString(4) %>
<br><br>
------------------------------------------------------------------------------------------------------------------------------------------------------
  <%} %>
  <br><br>
  <center>
  <%if(last==1){%>
    <a href="stu/bookDetail.jsp?param=<%=bookID%>&page=<%=pageNum-1%>">上一页</a><%} %>
    
    <%if(next==1){%>
    <a href="stu/bookDetail.jsp?param=<%=bookID%>&page=<%=pageNum+1%>">下一页</a><%} %>
    </center>
  <%}%>
  </td></tr></table>
  <br><br><br>
</td></tr></table></center>


  </body>
</html>
