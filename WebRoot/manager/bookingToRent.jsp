<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*;"%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<jsp:useBean id="con1" class="bean.ConBean1" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookingToRent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
			String name = (String) session.getAttribute("username");
	

			if (name == null ) {%>
		 <script language="JavaScript">
           alert("请您先登录!"); 
           parent.window.location.href="../manager/mLogin.jsp";</script>
		  <% 	
			}
		%>
  </head>
  
  <body>
  <table  width="768" height="130" style="background:url(image/ab-2.jpg) background-repeat:repeat;"><tr><td>
   <center>
<table style="background:url(image/chuan_1.jpg) background-repeat:no-repeat;" width=670px height=490px><tr><td >  
    <%
    java.sql.Date sqlDate=new java.sql.Date(new java.util.Date().getTime());
     Calendar ca=Calendar.getInstance();
               java.util.Date nowdate  =  new java.util.Date();//得到当前时间
               ca.setTime(nowdate);
               ca.set(Calendar.DAY_OF_YEAR, ca.get(Calendar.DAY_OF_YEAR)-10);//你想要前几天的，就减去几天
               Date now  = new Date(ca.getTimeInMillis());//这个就是前n天的时间
			 java.sql.Date sqlDate0=new java.sql.Date(now.getTime());
    String sql,sql1;
      sql="select * from BOOKING where complete=1 ";
    con.Con();
    con1.Con();
    ResultSet rs=con.query(sql);
    while(rs.next())
    { 	
    if(sqlDate0.after((rs.getDate(3)))){
    sql="update BOOKING set complete=2 where book_ID='"+rs.getString(2)+"'";
    con1.update(sql);
    sql1="update BOOK set quantity=quantity+1 where book_ID='"+rs.getString(2)+"'";
    con1.update(sql1);
    } 
    }
     %>
     <script language="JavaScript">
           alert("逾期预约已处理!"); 
          window.location.href="../manager/mmain.jsp";</script>
    </td></tr></table></center></td></tr></table>
  </body>
</html>