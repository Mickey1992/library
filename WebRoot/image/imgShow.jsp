<%@ page contentType="text/html;charset=gb2312"%> 
<%@ page import="java.sql.*" %>
<html>
<head>
<title>��̬��ʾ���ݿ�ͼƬ</title>
</head>
<body>
<% 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:1433; DatabaseName=librarySystem";
Connection con=DriverManager.getConnection(url,"sa","123");
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
String sql=new String();
sql= "select * from picturenews";
ResultSet rs=stmt.executeQuery(sql);
rs.last();//��ָ���������һ����¼%>

 <table><tr><td><IMG height=99 src="testimageout.jsp?id=1" width=136></td>//ȡ����һ��ͼƬ
 <td><IMG height=99 src="testimageout.jsp?id=<%=rs.getInt("id")%>" width=136></td>//ȡ�����һ��ͼƬ</tr></table></body></html>