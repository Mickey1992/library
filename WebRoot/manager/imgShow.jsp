<%@ page contentType="text/html;charset=gb2312"%> 
<%@ page import="java.sql.*" %>

<html>
<head>
<title>��̬��ʾ���ݿ�ͼƬ</title>
</head>
<body>
<% 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
String url="jdbc:sqlserver://localhost:1433; DatabaseName=library";
Connection con=DriverManager.getConnection(url,"sa","123");
//Statement stmt=con.createStatement();
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
String sql=new String();
sql= "select * from picturenews";
ResultSet rs=stmt.executeQuery(sql);
rs.last();//��ָ���������һ����¼
%> 
<table>
<tr><td><IMG height=99 src="imgOut.jsp?id=1" width=136></td>
<td><IMG height=99 src="imgOut.jsp?id=<%=rs.getInt(1) %>" width=136></td></tr>
</table>
</body>
</html>
