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
           alert("�����ȵ�¼!"); 
           parent.window.location.href="../manager/mLogin.jsp";</script>
		  <% 	
			}
		%>
 <body>
  <%
  	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");//��������������
  	 String url="jdbc:sqlserver://localhost:1433; DatabaseName=library";
  	Connection con=DriverManager.getConnection(url,"sa","123");//�������ݿ�����������dengluΪ���ݿ�����saΪ�������ݿ���ʺż����롣
  	Statement stmt=con.createStatement(); //����Statement����
  String topic=request.getParameter("topic");
   
   if(topic==null||topic.equals(""))
      response.getWriter().write("<script languge='javascript'>alert('���ű��ⲻ��Ϊ�գ�');window.location.href='../manager/pictureUpload.jsp'</script>");
  else topic=new String(topic.getBytes("8859_1"),"gb2312");
  String filename=request.getParameter("image");
 
  if (filename == null || filename.equals("")) {
    response.getWriter().write("<script languge='javascript'>alert('��û�м����κ�ͼƬ��');window.location.href='../manager/pictureUpload.jsp'</script>");
							}							
  else 
  { filename=new String(filename.getBytes("8859_1"),"gb2312");
    FileInputStream str=new FileInputStream(filename);
   
  String detail=request.getParameter("txtmail");
  detail=new String(detail.getBytes("8859_1"),"gb2312");//�����Ҫ��ʾͼƬ�ı��⡢�洢·�������ݣ����������ı���
 
  String sql="insert into picturenews(topic,image,detail) values(?,?,?)";
  PreparedStatement pstmt=con.prepareStatement(sql);
  pstmt.setString(1,topic);
  pstmt.setBinaryStream(2,str,str.available());
  pstmt.setString(3,detail);
  pstmt.execute();//�����ݴ������ݿ�
  }
  out.println("<html>");
							out.println("<body style='background:url(../img/ab.jpg) ' > ");
		                    out.println("<center>");
		                  //  out.println("<strong><font size=12px color=red>���ѻ��һ�����~</font></strong><br>");
			                out.println("<table   style='background:url(../image/122.gif);background-repeat:no-repeat;' width=600px; height=300px><tr><td><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt='' src='../image/12.gif' border=0></td></tr></table><br>");
			                out.println("</center>");
			  				out.print("<center><a href='../index.jsp' target='_parent'><big><big>������ҳ</a>");
		                out.println("<br>");
		                out.println("<br>");
						out.println("<a href='../manager/pictureUpload.jsp'>�����ϴ�ͼƬ����</a>");
					    out.println("<br>");
		                out.println("<br>");
  %>