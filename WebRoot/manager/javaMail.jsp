<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:useBean id="MailSenderInfo" scope="request" class="com.util.mail.MailSenderInfo"></jsp:useBean>
<jsp:useBean id="MyAuthenticator" scope="request" class="com.util.mail.MyAuthenticator"></jsp:useBean>
<jsp:useBean id="SimpleMailSender" scope="request" class="com.util.mail.SimpleMailSender"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="java.util.*,java.io.*" %>
<%@ page contentType="text/html;charset=GB2312" %>

<html>
<head>
  <title>JavaMail.jsp</title>
</head>
<body>

<h2>利用JavaMail来传送电子邮件 </h2>
<%
//MailSenderInfo.mailInfo = new MailSenderInfo(); 
 MailSenderInfo.setMailServerHost("smtp.163.com"); 
MailSenderInfo.setMailServerPort("25"); 
 MailSenderInfo.setValidate(true); 
 MailSenderInfo.setUserName("han2000lei@163.com"); 
 MailSenderInfo.setPassword("**********");//您的邮箱密码 
MailSenderInfo.setFromAddress("han2000lei@163.com"); 
MailSenderInfo.setToAddress("han2000lei@163.com"); 
MailSenderInfo.setSubject("设置邮箱标题 如http://www.guihua.org 中国桂花网"); 
MailSenderInfo.setContent("设置邮箱内容 如http://www.guihua.org 中国桂花网 是中国最大桂花网站=="); 
 //这个类主要来发送邮件 
 //SimpleMailSender sms = new SimpleMailSender(); 
 SimpleMailSender.sendTextMail(MailSenderInfo);//发送文体格式 
 SimpleMailSender.sendHtmlMail(MailSenderInfo);//发送html格式 

 %>
</body>
</html> 

