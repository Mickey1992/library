<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%@ page language="java" import="java.text.*"%>
<%@ page contentType="text/html;charset=GB2312" %>
<%request.setCharacterEncoding("gb2312");%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="con1" class="bean.ConBean1" scope="page"></jsp:useBean>
<jsp:useBean id="con2" class="bean.ConBean1" scope="page"></jsp:useBean>
<jsp:useBean id="con3" class="bean.ConBean1" scope="page"></jsp:useBean>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookingCheck.jsp' starting page</title>
    
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
  con1.Con();
  con2.Con();
  con3.Con();
  ResultSet rs1,rs2;
  String sql,sql1;
   %>
  <% 
 String select[] = request.getParameterValues("id"); 
    int success=0;
    int failed=0;
    List <String> fail=new  ArrayList <String>();
    if (select == null || select.length == 0)
    {
       %>  
 
     <script language="JavaScript">
         alert("您没有选中任何预约信息!"); 
         window.location.href="../manager/handleBooking.jsp";
       </script>
     <%
    }
    else{
    for (int i = 0; i < select.length; i++){
    sql="select s_number from BOOKING where book_ID= '"+ select[i] + "'";
    rs1=con1.query(sql);
   rs1.next();
    String s_number=rs1.getString(1);
    sql="select e_mail from STUDENT where s_number='"+s_number+"'";
    rs2=con2.query(sql);
    rs2.next();
    String tto=rs2.getString(1);
   System.out.println(tto);
  
try{
//String tto=request.getParameter("to");
 //System.out.println(tto);
 String ttitle="您预约的书已到";
 String tcontent="请及时到馆内借阅！";
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

   sql= "update BOOKING set complete='1' where book_ID= '"+ select[i] + "'";
   
   //sql= "update BOOKING set complete=1 where s_number = '10102510219'";
    con3.update(sql);
    sql="update BOOK set quantity=quantity-1 where book_ID= '"+ select[i] + "'";
    %>
    <script language="JavaScript">
    alert("审核已成功，学生将收到您的确认邮件!"); 
     window.location.href="../manager/handleBooking.jsp";</script>
    <%
    }
    }
    %>
  </body>
</html>
