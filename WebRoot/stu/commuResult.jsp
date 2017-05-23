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
    
    <title>搜索结果</title>
    
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
    int pageNum=1;
    String question=new String(request.getParameter("question").getBytes("ISO-8859-1"),"utf-8");
    try{pageNum=Integer.parseInt(request.getParameter("page"));}catch (Exception e){pageNum=1;}
    int pageSize=20;
    int last=0;
    int next=0;
    
    System.out.println(question);
    if(question == ""||question.length()==0)
    {%>
    <h4>您的输入为空</h4>
    
    <%}else
    {
    String getCount="select count(*) from ((select * from COMMUNICATION where book_ID = '"+question+"' and quality = 'q') union (select * from COMMUNICATION where qa ='"+question+"' and quality = 'q')) as t";
    String sql="select top "+pageNum*pageSize+ "* from ((select * from COMMUNICATION where book_ID = '"+question+"' and quality = 'q') union (select * from COMMUNICATION where qa ='"+question+"' and quality = 'q')) as t1 except select top "+(pageNum-1)*pageSize+ "* from ((select * from COMMUNICATION where book_ID = '"+question+"' and quality = 'q') union (select * from COMMUNICATION where qa ='"+question+"' and quality = 'q')) as t2";
    System.out.println(sql);
    ResultSet rs = connection.executeQuery(sql);
    if(!rs.next()){
    out.println("没有找到您感兴趣的东西");
    }
    else{
    rs = connection.executeQuery(sql);
    ResultSet getcount=connection.executeQuery(getCount);
    getcount.next();
    int count = Integer.parseInt(getcount.getString(1));
    System.out.println("count: "+count);
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
    while(rs.next())
    {%>
    <a href="stu/commuDetail.jsp?qID=<%=rs.getInt(6)%>&page=1" target="_blank"><%=rs.getString(4) %></a><BR><BR>
    <%
    }
    }%>
    <center>
    <%if(last==1){%>
    <a href="stu/commuResult.jsp?question=<%=question%>&page=<%=pageNum-1%>">上一页</a><%} %>
    
    <%if(next==1){%>
    <a href="stu/commuResult.jsp?question=<%=question%>&page=<%=pageNum+1%>">下一页</a><%} %>
    </center>
     <%}%>
  </body>
</html>
