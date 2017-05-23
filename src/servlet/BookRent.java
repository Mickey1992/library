package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.ConBean1;

public class BookRent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final int MAX_MEMORY_SIZE = 5 * 2 * 1024;
	private static final File REPOSITORY_PATH = new File("c:\\temp");
	File file;
	ServletContext application;
	//String filename="";
    String bID="";
	//String value="";
    String sID="";
	/**
	 * 
	 */

	/**
	 * Constructor of the object.
	 */
	public BookRent() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@SuppressWarnings("unchecked") 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		ConBean1 con = new ConBean1();
		ConBean1 con1 = new ConBean1();
		ConBean1 con2 = new ConBean1();
		ConBean1 con3 = new ConBean1();
		ConBean1 con4 = new ConBean1();
		ConBean1 con5 = new ConBean1();
		application = this.getServletContext();
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(MAX_MEMORY_SIZE);
		factory.setRepository(REPOSITORY_PATH);
		

		// 创建文件上传控制器
		ServletFileUpload servletfileupload = new ServletFileUpload(factory);
		
		try {
			con.Con();
			con1.Con();
			con2.Con();
			con3.Con();
			con4.Con();
			con5.Con();
			  ResultSet rs,rs1,rs2;
			//	String username = (String) request.getSession()
				//		.getAttribute("username");
				
			  List items = servletfileupload.parseRequest(request);
			  Iterator iter = items.iterator();
			  while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();
					if (item.isFormField()) {
						 if ("bookID".equals(item.getFieldName())) {
					 bID = new String(item.getString().getBytes("iso8859-1"));
							// bookID = new String(item.getString());
						   } 

						if ("studentID".equals(item.getFieldName())) {
					sID = new String(item.getString().getBytes("iso8859-1"));
							 //studentID = new String(item.getString());
							 
						   } 
				}
					   else{

						}
						
				}
				// String bookID=new String(request.getParameter("bookID").getBytes("iso8859-1"));
			//	 String studentID=new String(request.getParameter("studentID").getBytes("iso8859-1"));
				 if(bID==null||bID.equals(""))
				 {
						response.getWriter().write("<script languge='javascript'>alert('图书ID不能为空！');window.location.href='../manager/rentBook.jsp'</script>");
				 } else if(sID==null||sID.equals(""))
				 {
                    response.getWriter().write("<script languge='javascript'>alert('借阅者ID不能为空！');window.location.href='../manager/rentBook.jsp'</script>");	
				 }	
				else { 
					String sql="select book_ID from BOOK where book_ID='"+bID+"'";
					 System.out.println(sql);
					rs=con.query(sql);
					 //String sql="select * from BOOK where book_ID="+bookID;		
					 if(!rs.next())
					 {
						 response.getWriter().write("<script languge='javascript'>alert('图书ID不存在！');window.location.href='../manager/rentBook.jsp'</script>");	 
					 }
					 else 
					 {
					String sql1="select s_number from STUDENT where s_number='"+sID+"'"; 
					 System.out.println(sql1);
						rs1=con1.query(sql1); 
						if(!rs1.next())
						{
							 response.getWriter().write("<script languge='javascript'>alert('学生ID不存在！');window.location.href='../manager/rentBook.jsp'</script>");	
						}
						else{
						String sql4="select * from RENT where s_number='"+sID+"'and book_ID='"+bID+"'and return_date!=''";
						rs2=con2.query(sql4);
					 java.sql.Date sqlDate=new java.sql.Date(new java.util.Date().getTime());
					 if(rs2.next())
					 {
						 response.getWriter().write("<script languge='javascript'>alert('该学生已借过此书');window.location.href='../manager/rentBook.jsp'</script>");	 
					 }
					 else{
						 
						//sql="insert into BOOKING(s_number,book_ID,booking_date,complete) values('"+sID+"','"+bID+"','"+sqlDate+"','no')";		
					 String sql2="insert into RENT(s_number,book_ID,rent_date,last_days)values('"+sID+"','"+bID+"','"+sqlDate+"',"+"'30')";		 
					 System.out.println(sql2);
					 con3.insert(sql2); 
					String sql5="update BOOKING set complete=3 where book_ID='"+bID+"' and s_number='"+sID+"'";
					 con4.update(sql5);
					// String book_ID=rs.getString(1);
					// sql="update BOOK set quantity=quantity-1 where book_ID='"+book_ID+"'";
					 String sql3="update BOOK set quantity=quantity-1 where book_ID='"+rs.getString(1)+"'";
					 con4.update(sql3);
					 out.println("<html>");
						out.println("<body style='background:url(../img/ab.jpg) ' > ");
						  out.println("<br>");
			                out.println("<br>");
	                    out.println("<center>");         
	                    out.println("<strong><font size=12px color=red>预约借书成功~</font></strong><br>");	                    
		               // out.println("<table   style='background:url(../image/122.gif);background-repeat:no-repeat;' width=600px; height=300px><tr><td><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt='' src='../image/12.gif' border=0></td></tr></table><br>");
		                out.println("</center>");
		                out.println("<br>");
		                out.println("<br>");
		                out.println("<br>");
		                out.println("<br>");
		  			out.print("<center><a href='../index.jsp' target='_parent'><big><big>返回主页</a>");
	                out.println("<br>");
	                out.println("<br>");
	                out.println("<br>");
	                out.println("<br>");
					out.print("<a href='../manager/rentBook.jsp'>继续借书</a>");
				    out.println("<br>");
	                out.println("<br>");
				//	out.print("<a href='../show_message.jsp'>所有消息</a>");
					 }}
						
					 }
						 
				 }
				 
				
						
				} catch (Exception e) {
					// TODO Auto-generated catch block
				
				 //  response.getWriter().write("<script languge='javascript'>alert('操作出错！返回主页重试！');window.location.href='../main.jsp'</script>");
				  out.println(e.toString());
				e.printStackTrace();
				}
                finally{
                	// con.close();			             	
                }
					
						//	file = new File(application.getRealPath("/")
						//			+ "WEB-INF/");
						//	String uri = file.getPath();	
			
				out.flush();
				out.close();
			}

			/**
			 * The doPost method of the servlet. <br>
			 * 
			 * This method is called when a form has its tag value method equals to
			 * post.
			 * 
			 * @param request
			 *            the request send by the client to the server
			 * @param response
			 *            the response send by the server to the client
			 * @throws ServletException
			 *             if an error occurred
			 * @throws IOException
			 *             if an error occurred
			 */
			public void doPost(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {	
				doGet(request, response);
			}

		}
