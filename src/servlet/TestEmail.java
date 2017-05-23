package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.net.*; 
import com.util.mail.*;

public class TestEmail extends HttpServlet {

	private static final String CONTENT_TYPE = "text/html";


	public void init(ServletConfig config) throws ServletException
	{
	super.init(config);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException 
	{
		MailSenderInfo mailInfo = new MailSenderInfo(); 
		 mailInfo.setMailServerHost("smtp.163.com"); 
		 mailInfo.setMailServerPort("25"); 
		 mailInfo.setValidate(true); 
		 mailInfo.setUserName("han2000lei@163.com"); 
		 mailInfo.setPassword("**********");//您的邮箱密码 
		 mailInfo.setFromAddress("han2000lei@163.com"); 
		 mailInfo.setToAddress("han2000lei@163.com"); 
		 mailInfo.setSubject("设置邮箱标题 如http://www.guihua.org 中国桂花网"); 
		 mailInfo.setContent("设置邮箱内容 如http://www.guihua.org 中国桂花网 是中国最大桂花网站=="); 
		 //这个类主要来发送邮件 
		 SimpleMailSender sms = new SimpleMailSender(); 
		 sms.sendTextMail(mailInfo);//发送文体格式 
		 sms.sendHtmlMail(mailInfo);//发送html格式 

	}

	public void destroy() 
	{
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {	
doGet(request, response);
}

	}