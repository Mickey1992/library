
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page contentType="text/html;charset=gb2312"%>


<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.io.*"%> 

<html>
  <head>
    <title>My JSP 'imgOut.jsp' starting page</title>
   

  </head>
  
  <body>
  <%
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:1433; DatabaseName=library";
Connection con=DriverManager.getConnection(url,"sa","123");
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
//String sql=new String();
//sql= "select * from picturenews";
//ResultSet rs=stmt.executeQuery(sql);
 ResultSet rs=null;//����ResultSet�������������
 //if(request.getParameter("id")==null)
 //response.getWriter().write("<script languge='javascript'>alert('id����');window.location.href='../index.jsp'</script>");
														
  //else 
   // { 
 int id= Integer.parseInt(request.getParameter("id"));//�����Ҫ��ʾͼƬ�ı��id����ת��Ϊ����
  String sql = "select image from picturenews WHERE id="+id+""; //Ҫִ�в�ѯ��SQL���
  //String sql = "select image from picturenews WHERE id=2";
  rs=stmt.executeQuery(sql);
 // con.Con(); 
  //rs=con.query(sql);
  try{
  while(rs.next()) 
  {
  ServletOutputStream sout = response.getOutputStream();//ͼƬ����������
  InputStream in = rs.getBinaryStream(1);
  byte b[] = new byte[0x7a120];
  for(int i = in.read(b);
   i!= -1;)
  {
  sout.write(b); //�������������������ҳ��
  in.read(b);}
  sout.flush();//������ϣ��������
  sout.close();}
  }catch (Exception e){}
  //}
 %>
  </body>
</html>