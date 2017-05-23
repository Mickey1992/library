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
    
    <title>My JSP 'issueCheck.jsp' starting page</title>
    
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
    String user = (String)session.getAttribute("username");
    String bookID=request.getParameter("bookID");
    String text = new String(request.getParameter("text").getBytes("ISO-8859-1"),"utf-8");
 
    if(user==null||user=="")
    {
    response.sendRedirect("login.jsp");
    }
    else
    {
    if(bookID==null||text.length()==0)
    {
    out.println("您输入的信息不完整");
    }
    else
    {
    String checkBook="select * from BOOK where book_ID = '"+bookID+"'";
    ResultSet book = connection.executeQuery(checkBook);
    if(!book.next()||text.length()==0){
    
    out.println("您输入的信息有误，请重新输入");
     }
    else
    {
    String sql = "select * from COMMUNICATION where qa = '"+text+"' and book_ID = '"+bookID+"' and quality = 'q'";
    ResultSet q = connection.executeQuery(sql);
    System.out.println(sql);
    if(q.next())
    {
     %>
     已经有用户提出了这个问题,发布失败<br><br>
     <a href = "stu/commuDetail.jsp?qID=<%=q.getInt(6)%>&page=1">去看看</a>
     <%} 
     else
     {
      String getID = "select max(q_ID) from COMMUNICATION";
      ResultSet ID=connection.executeQuery(getID);
      int id=1;
      if (ID.next())
      {
      id=ID.getInt(1)+1;
      }
      
      String insert = "insert into COMMUNICATION values ('"+bookID+"','"+user+"', getdate(),'"+text+"','q',"+id+")"; 
      connection.executeQuery(insert);
      out.println("发布成功");
     }
    }
    }
    }
     %>
  </body>
</html>
