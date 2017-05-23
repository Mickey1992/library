<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<%!
void setTimeToMidnight(Calendar calendar){
    calendar.set(Calendar.HOUR_OF_DAY, 0);
    calendar.set(Calendar.MINUTE, 0);
    calendar.set(Calendar.SECOND, 0);
  }
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>
    <title>My JSP 'handleDonate.jsp' starting page</title>
    
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
  
  
  <form name="myform" id="myform" method="post" action="manager/donateCheck.jsp">  
   <table width="600"  style="margin:0 30px">
    <tr bgColor=“GREEN”>
    <td >同意</td>
    <td>不同意</td>
    <td>书名</td>
    <td>学号</td>
    <td>作者</td>
    <td>出版社</td>
    <td>类型</td>
    <td>申请日期</td>
    </tr>    
    <%
    String sql="select * from DONATE where process=0";
    con.Con();
    ResultSet rs=con.query(sql);
    while(rs.next())
    {
    if(rs.getInt(5)==0)
    {
    %>
    <tr>
    <td><input type="checkbox" name="id1" value= "<%=rs.getString(1)%>"></td>
    <td><input type="checkbox" name="id2" value= "<%=rs.getString(1)%>"></td>
    <td><% String tem=rs.getString(1);
					           if(tem.length()>8)
					           tem=tem.substring(0,7)+"...";	
							%><%=tem %></td>
  
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(7)%></td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(4)%></td>
    <td><br></td>
    </tr>
    <%
   } } 
     %>
   <tr><td>
   
   <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="renew" type="submit" value="同意已选"></td></tr>  
    </table>
    </form>
    </td></tr></table></center></td></tr></table>
  </body>
</html>
