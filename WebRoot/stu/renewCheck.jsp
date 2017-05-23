<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.text.*;"%>

<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'renewCheck.jsp' starting page</title>
    
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
  <form name="myform" id="myform" method="post" action="stu/myBook.jsp">    
  <%
    String user = (String)session.getAttribute("username");
    String select[] = request.getParameterValues("id"); 
    int success=0;
    int failed=0;
    List <String> fail=new  ArrayList <String>();
    if (select == null || select.length == 0)
    {
       out.println("您没有选中任何书籍");
    }
    else
    {
      for (int i = 0; i < select.length; i++)
      {
        String sql= "select book_name from BOOK where book_ID = '"+ select[i] + "'";
        ResultSet rs = connection.executeQuery(sql);
	    rs.next();
        String last_days="select last_days from RENT where s_number = '"+user+"' and book_ID = '"+ select[i]+"'";
        ResultSet rs1=connection.executeQuery(last_days);
        rs1.next();
        if((rs1.getInt(1))/30>5)
        {
           failed++;
           fail.add(rs.getString(1));      
        }
        else
        {
          if((++success)==1) out.println("您续借了以下书籍："+"\n");
        %><br>
        <%
          out.print(rs.getString(1));
          String sql2 = "update RENT set last_days=last_days+30 where s_number = '"+user+"' and book_ID = '"+ select[i]+"'";
          connection.executeQuery(sql);
        }
        
        if(failed>=1)
        {
          
          response.getWriter().write("<script languge='javascript'>alert('这些书你已经续借5次了呦，不能再续借了！');window.location.href='myBook.jsp'</script>");
           
        %>
        <br>
        <%
           for(int l=0;l<fail.size();l++)
              out.print(fail.get(i) + "\n");
        }
      }
    }
 
     %>
     
     <input name="renew" type="submit" value="确定">
     </form>
  </body>
</html>
