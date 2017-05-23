<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*;"%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>
    <base href="<%=basePath%>">
    
    <title>My JSP 'err.jsp' starting page</title>
    
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
  
        <table  background="image/ab-2.jpg" style="background-repeat:repeat; " width=800px height=490px> <tr><td>
     
   <table style="background:url(image/chuan_2.jpg) background-repeat:no-repeat;" width=650px height=490px><tr><td >
      <center>
              <font size="5" color="#0000FF">请处理：</font>
   <br/><br/>
      <table    border="2"  width=500px cellspacing=10px cellpadding=10px bgcolor="#C0C0C0">
     <%
     con.Con();
     ResultSet rs;
     ResultSet rs1,rs2;
     String sql="select count(*) from DONATE where process=0";
     System.out.println(sql);
     rs=con.query(sql);
 //    String num1
     if(rs.next())
    {
     }
   
      %>
  <tr><td>处理类别</td><td>未处理数量</td></tr>
  <tr><td><a href="manager/handleDonate.jsp">捐书处理</a></td><td><%=rs.getInt(1)%></td></tr>
  <%
  sql="select count(*) from Question where answered=0";
   rs1=con.query(sql);
    // int num2=rs.getInt(1);
    if(rs1.next())
      {}
   %>
  <tr><td><a href="manager/handleQuestion.jsp">提问处理</a></td><td><%=rs1.getInt(1)%></td></tr>
  <%  
 sql="select count(*) from BOOKING where complete=0";
   rs2=con.query(sql);
    // int num2=rs.getInt(1);
    if(rs2.next())
      {}
      %>
  <tr><td><a href="manager/handleBooking.jsp">预约处理</a></td><td><%=rs2.getInt(1)%></td></tr> 
 <tr><td><a href="manager/bookingToRent.jsp">逾期预约</a></td><td><a href="manager/OutOfDateBook.jsp">逾期图书</a></td></tr> 
  </table></center></td></tr>   
  </table>
   
</td></tr></table>
  </body>
</html>
