<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page language="java" import="java.sql.ResultSet"%>
<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>交流平台</title>
    
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
    <%
    int qID=Integer.parseInt(request.getParameter("qID"));
    int pageNum=Integer.parseInt(request.getParameter("page"));
    int onePage=30;
    int last=0,next=0;
    String user=(String)session.getAttribute("username");
    String getIssue= "select * from COMMUNICATION where q_ID = "+qID+" and quality = 'q'";
    System.out.println(getIssue);
    ResultSet issue=connection.executeQuery(getIssue);
    issue.next();
    String getBook="select book_name from BOOK where book_ID = '"+issue.getString(1)+"'";
    ResultSet getbook=connection.executeQuery(getBook);
    getbook.next();
    %>
    <h4>主题：<%=getbook.getString(1) %></h4><br>
    <h4><%=issue.getString(4) %></h4><br>
    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    用户：<%=issue.getString(2)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于：<%=issue.getDate(3) %></h4>
    <br>-----------------------------------------------------------------------------------------------------------------------------------------------------<br><br><br>
    <%String getCount= "select count(s_number) from COMMUNICATION where q_ID = "+qID+" and quality = 'a'";
      ResultSet countAnswer = connection.executeQuery(getCount);
      countAnswer.next();
      int count=countAnswer.getInt(1);
      if(count==0){
     %>
     还没有人参与互动哦~，快来回复吧~~
     <%} 
     else 
     {
     	if(pageNum*onePage<count)
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
     
     String sql = "select top "+pageNum*onePage+" * from COMMUNICATION where q_ID = "+qID+" and quality = 'a' except select top "+(pageNum-1)*onePage+" * from COMMUNICATION where q_ID = "+qID+" and quality = 'a'";
     ResultSet rs = connection.executeQuery(sql);
     while(rs.next())     
     {
     int i=1;%>
     <h3><%=(pageNum-1)*onePage+i%>楼：</h3><br>
     <h4><%=rs.getString(4) %></h4><br>
    <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    用户：<%if(rs.getString(2)==null){%>匿名<%} else{%> <%=rs.getString(2)%><%} %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布于：<%=rs.getDate(3) %></h4>
    <br>-----------------------------------------------------------------------------------------------------------------------------------------------------<br><br><br>

     <%
     i++;}
     
     if(last==1){%>
    <a href="stu/commuDetail.jsp?qID=<%=qID%>&page=<%=pageNum-1%>">上一页</a><%} %>
    
    <%if(next==1){%>
    <a href="stu/commuDetail.jsp?qID=<%=qID%>&page=<%=pageNum+1%>">下一页</a><%} %>
     
     <%}%><br><br><br>
     
     <h3>回复：</h3>
     <form name=" form2" method="post" action="stu/commuCheck.jsp?qID=<%=qID%>">
     <textarea name="text" rows="10" cols="50" id="text"></textarea><br>
  
    <br>
    <input name="issue" type="submit" value="提交">
     </form>
     
  </body>
</html>
