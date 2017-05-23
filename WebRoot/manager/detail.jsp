<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:useBean id="con" class="bean.ConBean" scope="page"></jsp:useBean>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body style="background:url(detail.jpg)  ">
 <%     
          try{    
           //String fpath = new String(request.getParameter("path").getBytes("iso8859-1"));
          String fpath = new String(request.getParameter("path").getBytes("iso8859-1"),"utf-8");
        // String fpath = new String(request.getParameter("path"));
       //  String fpath = new String(request.getParameter("path").getBytes("gbk"));
           String pa=fpath;
         int te=fpath.indexOf("/");
          pa=fpath.substring(0,te);
        
          String pa2=fpath.substring(te+1);
          te=pa2.indexOf("/");
          String pa3=pa2;
          pa2=pa2.substring(0,te);
  
          pa3=pa3.substring(te+1);
                ResultSet rs;
					File file;
                 
				String sql2 = "select topic,content,keyword,update_time,m_name from "+pa+" where  keyword='"+pa2+"' and m_name='"+pa3+"'"; //sql查询语句

				con.Con(); //链接数据库
				rs = con.query(sql2); //执行查询,将结果封装到user bean中
				
			%>
   <table width="995" height="130"></table>
   <% if(!rs.next())				
				{
				 %>
				<script language="JavaScript">
       // alert("您输入的是非法网址!"); 
      //    window.location.href="../index.jsp";</script>
          
      <% 	}		
								else{
									
							%>
<table style="font-size:20px" cellspacing="6"><tr><td>
新闻标题：<%=rs.getString(1) %></td></tr>
<tr><td>关键词：<%=rs.getString(3) %></td></tr>
<tr><td>资源分类： <% 
  if(pa.equals("notice"))
       pa="公告消息";
       else 
       pa="报告展览";
%><%=pa%></td></tr>
<tr><td>资源描述：<%=rs.getString(2) %></td></tr>

<tr><td>上传者：<%=rs.getString(5)%></td></tr>
<tr><td>上传时间：<%=rs.getString(4) %></td></tr>
<tr><td><A href="index.jsp">返回主页</A></td></tr>

<%						   
}}catch(Exception e){out.println(e.toString());
			e.printStackTrace();
		%>
		<script language="JavaScript">
        alert("您输入的是非法网址!"); 
        window.location.href="../index.jsp";</script>
           
      <%} 
							%></table>
  </body>
</html>
