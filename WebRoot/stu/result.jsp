<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <style>
       * {
                margin: 0; padding:0
            }
    </style>
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
  <center>
    <table style="background:url(image/ab.jpg); "><tr><td>
     
    
	   <img src="image/head.jpg"  ></td></tr><tr><td>
  
  <form target="_blank" name="myBooking" id="myBooking" method="post" action="stu/bookingCheck.jsp"> 
  
  <%
    int pageNum=Integer.parseInt(request.getParameter("page"));
    System.out.println(pageNum);
    int pageSize=20;
    int last=0;
    int next=0;
    String method=request.getParameter("method");
    
    String name = new String(request.getParameter("bookname").getBytes("ISO-8859-1"),"utf-8");
    System.out.println(name);
    String sql = new String();
    String getCount=new String();
    sql="";
    getCount="";
    System.out.println(method);
    System.out.println(pageNum);
    
    if(method.equals("name"))
    {
      System.out.println(method);
      getCount = "select count(book_ID) from (select * from BOOK where book_name like '%"+name+"%') as t";
      sql="select top "+pageNum*pageSize+ " * from BOOK where book_name like '%"+name+"%' except select top "+ (pageNum-1)*pageSize+" * from BOOK where book_name like '%"+name+"%'";
    }
     else if(method.equals("writer"))
    {
      getCount="select count(book_ID) from (select * from BOOK where writer = '"+name+"') as t";
      sql="select top "+pageNum*pageSize+ " * from BOOK where writer = '"+name+"' except select top "+ (pageNum-1)*pageSize+" * from BOOK where writer = '"+name+"'";
    }
    else 
    {
      String sql1= "select * from TYPE where type_name like '%"+name+"%'";
      //System.out.println(sql1);
      ResultSet rs1=connection.executeQuery(sql1);
      if(rs1.next())
      {
        String type=rs1.getString(1);
        getCount="select count (book_ID) from (select * from BOOK where book_ID like '"+type+"%') as t";
        sql= "select top "+pageNum*pageSize+ " * from BOOK where book_ID like '"+type+"%' except select top "+ (pageNum-1)*pageSize+"* from BOOK where book_ID like '"+type+"%'";
      }
      if(rs1.wasNull())
      {
      sql1= "select * from SUBTYPE where type_name like '%"+name+"%'";
      rs1=connection.executeQuery(sql1);
      if(rs1.next())
      {
        String type=rs1.getString(1);
        getCount="select count (book_ID) from (select * from BOOK where book_ID like '"+type+"%') as t";
        sql= "select top "+pageNum*pageSize+ " * from BOOK where book_ID like '"+type+"%' except select top "+ (pageNum-1)*pageSize+"* from BOOK where book_ID like '"+type+"%'";
      }
      }
    }
    
    System.out.println(sql);
    System.out.println(getCount);
    if(sql=="")  {next=0; last=0;          response.getWriter().write("<script languge='javascript'>alert('对不起，没找到您要的书！');window.location.href='search.jsp'</script>");
;}
    else{
    ResultSet getcount=connection.executeQuery(getCount);
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
     	System.out.println("count=:"+count);
     	System.out.println();
     	System.out.print("sql="+sql);
    ResultSet rs =connection.executeQuery(sql);
    if(!rs.next())
    {
    System.out.print("sql="+sql);
      next=0;
      if(pageNum>1) out.println("没有更多记录");
      else {last=0; response.getWriter().write("<script languge='javascript'>alert('对不起，没找到您要的书！');window.location.href='search.jsp?param=name'</script>");
;}
    }
    else
    { 
    System.out.println("count=:"+count);
    System.out.print("sql="+sql);
    rs =connection.executeQuery(sql);
    %>
    <br><br>
    <center><input name="booking" type="submit" value="预订已选"></center>
    <br><br>
  
   <%
    while(rs.next()){
    int rate=rs.getInt(8);
   %>
    <center><table border="1" cellpadding="0" bgcolor="white" width="800"  height="75" >
    <tr>
    <td width="250" height="30"><a href ="stu/bookDetail.jsp?param=<%=rs.getString(1)%>" target="blank"> <%=rs.getString(2) %></a></td>
    <td width="450">平均得分：<% if(rate<1){%>
                   <img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png">
                 <% }
                    else{  
                   for (int i=1;i<=rate;i++){%>
                   <img src="image/star2.png">
                 <%} }%></td>
    <td width="100"rowspan="5"><% 
                      if(rs.getInt(7)!=0)
                      {%>
                                                                          不需预订
                      <%}
                     
                      else if((String)session.getAttribute("username")!=null)
                      {
                        String sql2 = "select * from BOOKING where book_ID = '"+rs.getString(1)+"' and s_number = '"+session.getAttribute("username")+"'";
                        ResultSet rs2=connection.executeQuery(sql2);
                        if(rs2.next())
                        {
                          if(rs2.getInt(4)==0){%>已预订<%} 
                        }
                        else{
                              
                    %> 需要预订：<input type="checkbox" name="id" value= "<%=rs.getString(1) %>">
                    <%} }%>
                    

    </td>
    </tr>
    
    <tr>
    <td rowspan="4"><%if(rs.getString(10)==null){%> <img src="image/bookpic.png"><%} %></td>
    <td>作者：<%if(rs.getString(3)!=null){%><%=rs.getString(3) %><%}else{ %>未知<%} %></td>
    </tr>
    
    <tr><td>出版社：<%if(rs.getString(4)!=null){%><%=rs.getString(4) %><%}else{ %>未知<%} %></td></tr>
    <tr><td>出版时间：<%if(rs.getDate(5)!=null){ %> <%=rs.getDate(5) %><%}else { %>未知<%} %></td></tr>
    <tr><td>所在校区：<%=rs.getString(11) %></td></tr>
    </table></center>
    <br><br><br>
    <%} }}%>
    

    <center>
    <%if(last==1){%>
    <a href="stu/result.jsp?page=<%=pageNum-1%>&method=<%=method%>&bookname=<%=name%>">上一页</a><%} %>
    
    <%if(next==1){%>
    <a href="stu/result.jsp?page=<%=pageNum+1%>&method=<%=method%>&bookname=<%=name%>">下一页</a><%} %>
    </center>
    </form>
  
  
  </td></tr></table></center>
  
  </body>
</html>
