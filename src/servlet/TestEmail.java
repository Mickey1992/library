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
		 mailInfo.setPassword("**********");//������������ 
		 mailInfo.setFromAddress("han2000lei@163.com"); 
		 mailInfo.setToAddress("han2000lei@163.com"); 
		 mailInfo.setSubject("����������� ��http://www.guihua.org �й�����"); 
		 mailInfo.setContent("������������ ��http://www.guihua.org �й����� ���й�������վ=="); 
		 //�������Ҫ�������ʼ� 
		 SimpleMailSender sms = new SimpleMailSender(); 
		 sms.sendTextMail(mailInfo);//���������ʽ 
		 sms.sendHtmlMail(mailInfo);//����html��ʽ 

	}

	public void destroy() 
	{
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {	
doGet(request, response);
}

	}