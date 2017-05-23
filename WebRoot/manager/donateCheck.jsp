<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*"%>
<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="con" class="bean.ConBean1" scope="page"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'donateCheck.jsp' starting page</title>
    
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
  ResultSet rs;
  String sql;
   %>
  <% 
 String select1[] = request.getParameterValues("id1");
//new String(request.getParameterValues("id1").getBytes("ISO-8859-1"),"utf-8");
 String select2[] = request.getParameterValues("id2");
    //int success=0;
    //int failed=0;
    //List <String> fail=new  ArrayList <String>();
    if ((select1 == null || select1.length == 0)&&(select2 == null || select2.length == 0))
    {
       %>  
     <script language="JavaScript">
         alert("您没有选中任何捐书信息!"); 
         window.location.href="../manager/handleDonate.jsp";
       </script>
     <%
    }
    else{
    if(select1 != null && select1.length != 0)
    {
     String selectn;
    for (int i = 0; i < select1.length; i++){
   selectn=new String (select1[i].getBytes("ISO-8859-1"),"utf-8");
   System.out.println(selectn);
  sql="select s_number from DONATE where book_name= '"+selectn+"'";
  System.out.println(sql);
  rs=con.query(sql);
   rs.next();
    String s_number=rs.getString(1);
    System.out.println(s_number);
    sql="select e_mail from STUDENT where s_number='"+s_number+"'";
    rs=con.query(sql);
    rs.next();
    String tto=rs.getString(1);
   System.out.println(tto);
    try{
    
//String tto=request.getParameter("to");
 //System.out.println(tto);
 String ttitle="捐书信息";
 String tcontent="您的捐书申请已被审核，感谢您的爱心~快来图书馆捐书吧~！祝开心~";
//String ttitle=request.getParameter("title");
//String tcontent=request.getParameter("content");

Properties props=new Properties();
props.put("mail.smtp.host","smtp.126.com");//发件人使用发邮件的电子信箱服务器
props.put("mail.smtp.auth","true"); //这样才能通过验证
Session s=Session.getInstance(props);
s.setDebug(true);

MimeMessage message=new MimeMessage(s);

//给消息对象设置发件人/收件人/主题/发信时间
InternetAddress from=new InternetAddress("sei_czh@126.com"); //发邮件的出发地（发件人的信箱）
message.setFrom(from);
InternetAddress to=new InternetAddress(tto);//发邮件的目的地（收件人信箱）
message.setRecipient(Message.RecipientType.TO,to);
message.setSubject(ttitle);
message.setSentDate(new Date());


//给消息对象设置内容
BodyPart mdp=new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
mdp.setContent(tcontent,"text/html;charset=gb2312");//给BodyPart对象设置内容和格式/编码方式
Multipart mm=new MimeMultipart();//新建一个MimeMultipart对象用来存放BodyPart对
//象(事实上可以存放多个)
mm.addBodyPart(mdp);//将BodyPart加入到MimeMultipart对象中(可以加入多个BodyPart)
message.setContent(mm);//把mm作为消息对象的内容

message.saveChanges();
Transport transport=s.getTransport("smtp");
transport.connect("smtp.126.com","sei_czh@126.com","Aa856658891992");//发邮件人帐户密码
transport.sendMessage(message,message.getAllRecipients());
transport.close();
}catch(MessagingException e){
out.println(e.toString());
}
    
   
    sql= "update DONATE set process=1 where book_name = '"+ selectn + "'";
    System.out.println(sql);
    con.update(sql);
    }
    %>
    
    <% 
    }
   if(select2 != null && select2.length != 0)
    {
     String selectm;
    for(int m = 0; m< select2.length; m++){
     selectm=new String (select2[m].getBytes("ISO-8859-1"),"utf-8");
      sql="select s_number from DONATE where book_name= '"+ selectm+"'";
     rs=con.query(sql);
     rs.next();
    String s_number=rs.getString(1);
    sql="select e_mail from STUDENT where s_number='"+s_number+"'";
    rs=con.query(sql);
    rs.next();
    String tto=rs.getString(1);
   System.out.println(tto);
    try{
//String tto=request.getParameter("to");
 //System.out.println(tto);
 String ttitle="捐书信息";
 String tcontent="抱歉，您的捐书信息未通过管理员审核，可能是您捐的书本不适合图书馆，欢迎下次再捐，祝开心~";
//String ttitle=request.getParameter("title");
//String tcontent=request.getParameter("content");

Properties props=new Properties();
props.put("mail.smtp.host","smtp.126.com");//发件人使用发邮件的电子信箱服务器
props.put("mail.smtp.auth","true"); //这样才能通过验证
Session s=Session.getInstance(props);
s.setDebug(true);

MimeMessage message=new MimeMessage(s);

//给消息对象设置发件人/收件人/主题/发信时间
InternetAddress from=new InternetAddress("sei_czh@126.com"); //发邮件的出发地（发件人的信箱）
message.setFrom(from);
InternetAddress to=new InternetAddress(tto);//发邮件的目的地（收件人信箱）
message.setRecipient(Message.RecipientType.TO,to);
message.setSubject(ttitle);
message.setSentDate(new Date());


//给消息对象设置内容
BodyPart mdp=new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
mdp.setContent(tcontent,"text/html;charset=gb2312");//给BodyPart对象设置内容和格式/编码方式
Multipart mm=new MimeMultipart();//新建一个MimeMultipart对象用来存放BodyPart对
//象(事实上可以存放多个)
mm.addBodyPart(mdp);//将BodyPart加入到MimeMultipart对象中(可以加入多个BodyPart)
message.setContent(mm);//把mm作为消息对象的内容

message.saveChanges();
Transport transport=s.getTransport("smtp");
transport.connect("smtp.126.com","sei_czh@126.com","Aa856658891992");//发邮件人帐户密码
transport.sendMessage(message,message.getAllRecipients());
transport.close();
}catch(MessagingException e){
out.println(e.toString());
}
    
   
    sql= "update DONATE set process='2' where book_name = '"+  selectm+ "'";
    con.update(sql);
    }
 }
 %>
  <script language="JavaScript">
    alert("审核已成功，学生将收到您的确认邮件!"); 
    window.location.href="../manager/handleDonate.jsp";</script>
 <%
   }
    %>
   
  </body>
</html>
