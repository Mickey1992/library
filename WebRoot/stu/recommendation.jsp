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
    <title>阅读推荐</title>
    
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
  <center>  <table style="background:url(image/ab.jpg); "><tr><td>
     
    
	   <img src="image/head.jpg"  ></td></tr><tr><td>

  
  <%
  String user=(String)session.getAttribute("username");
  if(user==null){
   %>
   <jsp:include page="newBooks2.jsp"></jsp:include>
   <%} 
   else
   {
    String sql = "select top 1 book_ID from RENT where s_number = '"+user+"' order by rent_date";
    ResultSet book = connection.executeQuery(sql);
    if(!book.next()){
   %>
    <jsp:include page="newBooks2.jsp"></jsp:include>
    <%}
      else
      {
        String type=book.getString(1).substring(0, 2);
        System.out.println(type);
        String sql1="select top 10 * from Book where book_ID like '"+type+"%' order by point";
        System.out.println(sql1);
        ResultSet rs = connection.executeQuery(sql1);%><br>
        <center><input name="booking" type="submit" value="预订已选"><br><br><br></center>
      <%
      while(rs.next())
      {%>
     <center><table border="1" cellpadding="0" bgcolor="white" width="800"  height="75" > 
      
          <tr>
    <td width="250" height="30"><a href ="stu/bookDetail.jsp?param=<%=rs.getString(1)%>" target="_blank"> <%=rs.getString(2) %></a></td>
    <td width="450">平均得分：<% if(rs.getInt(8)<1){%>
                   <img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png"><img src="image/star0.png">
                 <% }
                    else{  
                   for (int i=1;i<=rs.getInt(8);i++){%>
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
      <%}
      }
      } %>
   </td></tr></table></center>
   
  </body>
</html>
