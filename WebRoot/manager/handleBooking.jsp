<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*;"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="con1" class="bean.ConBean1" scope="page"></jsp:useBean>
<jsp:useBean id="con2" class="bean.ConBean1" scope="page"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>
    <title>My JSP 'handleBooking.jsp' starting page</title>
    
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
  
  
  
  <form name="myform" id="myform" method="post" action="manager/bookingCheck.jsp">  
   <table width="600" style="margin:0 30px">
    <tr bgColor=“GREEN”>
    <td>同意</td>
    <td>学号</td> 
    <td>书ID</td>
    <td>申请日期</td>
    <td>存书</td>
    </tr>    
    <%
    String sql="select * from BOOKING where complete=0";
    con1.Con();
    con2.Con();
    ResultSet rs1=con1.query(sql);
    ResultSet rs2;
    while(rs1.next())
    {
   // float a=rs.getInt(1);
   // DecimalFormat df = new DecimalFormat("0");  
   // String m=df.format(a); 
    %>
    <tr>
    <td><input type="checkbox" name="id" value= "<%=rs1.getString(2)%>"></td>
    <td><%=rs1.getString(1)%></td>
    <td><%=rs1.getString(2)%></td>
    <td><%=rs1.getString(3)%></td>
    <%
    String book_ID=rs1.getString(2);
    String sql1="select quantity from BOOK where book_ID='"+book_ID+"'";
    rs2=con2.query(sql1);
    while(rs2.next())
    {
    if(rs2.getInt(1)>=1)
    {%>
    <td>有</td>
    <%} 
    else
    {
    %>
    <td>无</td>
    <% 
    }
    }
    %>
    </tr>
    <%
    } 
     %>
   <tr><td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="renew" type="submit" value="同意已选"></td></tr>  
    </table>
    </form>
    </td></tr></table></center></td></tr></table>
  </body>
</html>
