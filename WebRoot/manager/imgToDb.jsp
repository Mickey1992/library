<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gb2312"%>
 <%@ page import="java.sql.*" %>
 <%@ page import="java.util.*"%>
 <%@ page import="java.text.*"%>
 <%@ page import="java.io.*"%>
 <html> 
 <%
			String name = (String) session.getAttribute("username");
	

			if (name == null ) {%>
		 <script language="JavaScript">
           alert("请您先登录!"); 
           parent.window.location.href="../manager/mLogin.jsp";</script>
		  <% 	
			}
		%>
 <body>
  <%
  	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//加载驱动程序类
  	 String url="jdbc:sqlserver://localhost:1433; DatabaseName=library";
  	Connection con=DriverManager.getConnection(url,"sa","123");//建立数据库联机，其中denglu为数据库名，sa为连接数据库的帐号及密码。
  	Statement stmt=con.createStatement(); //建立Statement对象
  String topic=request.getParameter("topic");
   
   if(topic==null||topic.equals(""))
      response.getWriter().write("<script languge='javascript'>alert('新闻标题不能为空！');window.location.href='../manager/pictureUpload.jsp'</script>");
  else topic=new String(topic.getBytes("8859_1"),"gb2312");
  String filename=request.getParameter("image");
 
  if (filename == null || filename.equals("")) {
    response.getWriter().write("<script languge='javascript'>alert('您没有加载任何图片！');window.location.href='../manager/pictureUpload.jsp'</script>");
							}							
  else 
  { filename=new String(filename.getBytes("8859_1"),"gb2312");
    FileInputStream str=new FileInputStream(filename);
   
  String detail=request.getParameter("txtmail");
  detail=new String(detail.getBytes("8859_1"),"gb2312");//获得所要显示图片的标题、存储路径、内容，并进行中文编码
 
  String sql="insert into picturenews(topic,image,detail) values(?,?,?)";
  PreparedStatement pstmt=con.prepareStatement(sql);
  pstmt.setString(1,topic);
  pstmt.setBinaryStream(2,str,str.available());
  pstmt.setString(3,detail);
  pstmt.execute();//将数据存入数据库
  }
  out.println("<html>");
							out.println("<body style='background:url(../img/ab.jpg) ' > ");
		                    out.println("<center>");
		                  //  out.println("<strong><font size=12px color=red>你已获得一个金币~</font></strong><br>");
			                out.println("<table   style='background:url(../image/122.gif);background-repeat:no-repeat;' width=600px; height=300px><tr><td><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt='' src='../image/12.gif' border=0></td></tr></table><br>");
			                out.println("</center>");
			  				out.print("<center><a href='../index.jsp' target='_parent'><big><big>返回主页</a>");
		                out.println("<br>");
		                out.println("<br>");
						out.println("<a href='../manager/pictureUpload.jsp'>继续上传图片新闻</a>");
					    out.println("<br>");
		                out.println("<br>");
  %>