<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*;"%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<jsp:useBean id="con1" class="bean.ConBean1" scope="page"></jsp:useBean>
<jsp:useBean id="con2" class="bean.ConBean1" scope="page"></jsp:useBean>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newbookCheck.jsp' starting page</title>
    
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
    con.Con();
    con1.Con();
     con2.Con();
    ResultSet rs1;
   // new String(request.getParameter("bookName").getBytes("ISO-8859-1"),"utf-8");
   //String s_number= new String(request.getParameter("s_number").getBytes("ISO-8859-1"),"utf-8");
   String s_number= new String(request.getParameter("s_number"));
    // System.out.println(s_number);
  String bookName= new String(request.getParameter("bookName").getBytes("ISO-8859-1"),"utf-8");
   String bookID= new String(request.getParameter("book_ID").getBytes("ISO-8859-1"),"utf-8");
  String writer= new String(request.getParameter("writer").getBytes("ISO-8859-1"),"utf-8");
 //String type= new String(request.getParameter("type").getBytes("ISO-8859-1"),"utf-8");
  String date= new String(request.getParameter("date").getBytes("ISO-8859-1"),"utf-8");
  String publisher= new String(request.getParameter("publisher").getBytes("ISO-8859-1"),"utf-8");
  String place= new String(request.getParameter("place").getBytes("ISO-8859-1"),"utf-8");
  String quantity= new String(request.getParameter("quantity").getBytes("ISO-8859-1"),"utf-8");
 // String select[] = request.getParameterValues("id"); 
   if(place.equals("place1"))
   place="中北校区";
   else if(place.equals("place2"))
   place="闵行校区";
 // System.out.println(bookName+writer+publisher+type);
  
  if(bookName==""||writer==""||publisher==""||bookID=="")
  {
    out.println("您提交的信息不完整");
  }
  else
  {
   if(place.equals("0"))
    {
       %>  
     <script language="JavaScript">
         alert("您没有选图书存放地点!"); 
         window.location.href="javascript:history.go(-1);";
       </script>
       <%
       }
       else
       {
  String sql="select book_ID from BOOK where book_id='"+bookID+"'";
  rs1=con.query(sql);
  if(rs1.next())
  {%>
  <script language="JavaScript">
           alert("该ID已存在!"); 
          window.location.href="javascript:history.go(-1);"</script>
  <%
  }
  else{
 java.sql.Date date1=java.sql.Date.valueOf(date);
 java.sql.Date sqlDate=new java.sql.Date(new java.util.Date().getTime());
    String sql1="insert into BOOK(book_name,book_id,writer,publisher,publish_time,place,addDate,point,point_times,quantity,last) values ('"+bookName+"','"+bookID+"','"+writer+"','"+publisher+"','"+date1+"','"+place+"','"+sqlDate+"',0,0,"+quantity+","+quantity+")";
   // connection.executeQuery(sql);
   System.out.println(sql1);
   con1.update(sql1);
  // if (select != null && select.length != 0)
  if(s_number!="")
    {
    String  sql3="update STUDENT set s_quantity=s_quantity+"+quantity+"where s_number='"+s_number+"'";
    con2.update(sql3);
    }
   }
  //  System.out.println(sql);
     out.println("<html>");
						out.println("<body style='background:url(../img/ab.jpg) ' > ");
						  out.println("<br>");
			               out.println("<br>");
	                    out.println("<center>");
	                    out.println("<strong><font size=12px color=red>新书登记成功~</font></strong><br>");
		               // out.println("<table   style='background:url(../image/122.gif);background-repeat:no-repeat;' width=600px; height=300px><tr><td><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt='' src='../image/12.gif' border=0></td></tr></table><br>");
		                out.println("</center>");
		                out.println("<br>");
		                out.println("<br>");
		                out.println("<br>");
		                out.println("<br>");
		  				out.print("<center><a href='index.jsp' target='_parent'><big><big>返回主页</a>");
	                out.println("<br>");
	                out.println("<br>");
	                out.println("<br>");
	                out.println("<br>");
					out.print("<a href='manager/newBook.jsp'>继续添加新书</a>");
				    out.println("<br>");
	                out.println("<br>");
  }
  }
   %>
  </body>
</html>
