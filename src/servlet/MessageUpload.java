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

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.ConBean;

public class MessageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final int MAX_MEMORY_SIZE = 5 * 2 * 1024;
	private static final File REPOSITORY_PATH = new File("c:\\temp");

	File file;
	ServletContext application;
	//String filename="";
    String topic="";
	//String value="";
	String keyword="";
	String discribe="";
   //String sname="";
    String sort="";
   //long size;

	/**
	 * Constructor of the object.
	 */
	public MessageUpload() {
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
		ConBean con = new ConBean();
		application = this.getServletContext();
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(MAX_MEMORY_SIZE);
		factory.setRepository(REPOSITORY_PATH);

		// 创建文件上传控制器
		ServletFileUpload servletfileupload = new ServletFileUpload(factory);
		
		try {
			    con.Con();
				List items = servletfileupload.parseRequest(request);
				Iterator iter = items.iterator();

				String username = (String) request.getSession()
						.getAttribute("username");
				while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();
					if (item.isFormField()) {
						 if ("topic".equals(item.getFieldName())) {
							   topic = new String(item.getString()
										.getBytes("iso8859-1"));
						   } 

						if ("discribe".equals(item.getFieldName())) {
							   discribe = new String(item.getString()
										.getBytes("iso8859-1"));
							   discribe=discribe.trim();
						   } 
						if ("keyword".equals(item.getFieldName())) {
							keyword = new String(item.getString()
								.getBytes("iso8859-1"));
							keyword=keyword.trim();
							if(keyword==null||keyword.equals(""))
								response.getWriter().write("<script languge='javascript'>alert('关键词不能为空！');window.location.href='../manager/managerMain.jsp'</script>");
							}  
					   
					   if ("sort".equals(item.getFieldName())) {
						   sort = new String(item.getString()
									.getBytes("iso8859-1"));
						   
					    }
				}
					   else{

						}
						
				}
						if(sort.equals("0"))
							response.getWriter().write("<script languge='javascript'>alert('您没有选择分类！');window.location.href='../noticeUpload.jsp'</script>");
						else 
							if(topic==null||topic.equals(""))
								response.getWriter().write("<script languge='javascript'>alert('标题不能为空！');window.location.href='../noticeUpload.jsp'</script>");
							else	if(discribe==null||discribe.equals(""))
							response.getWriter().write("<script languge='javascript'>alert('内容不能为空！');window.location.href='../noticeUpload.jsp'</script>");
						else{
						java.sql.Date sqlDate=new java.sql.Date(new java.util.Date().getTime());
				
						String sql = "insert into "+sort+"(topic,content,keyword,m_name,update_time) values('"
								+ topic+"','"+discribe+"','"+keyword+"','"+username+"','"+sqlDate+"')";
					//	String sq2="update UserMessage set score=score+1 where name='"+username+"'";	
						
						con.insert(sql);
						//response.getWriter().write("<script languge='javascript'>alert('!！');window.location.href='../main.jsp'</script>");		
						//	con.insert(sq2);
							con.close();
							 out.println("<html>");
								out.println("<body style='background:url(../img/ab.jpg) ' > ");
			                    out.println("<center>");
			                  //  out.println("<strong><font size=12px color=red>你已获得一个金币~</font></strong><br>");
				                out.println("<table   style='background:url(../image/122.gif);background-repeat:no-repeat;' width=600px; height=300px><tr><td><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt='' src='../image/12.gif' border=0></td></tr></table><br>");
				                out.println("</center>");
				  				out.print("<center><a href='../index.jsp' target='_parent'><big><big>返回主页</a>");
			                out.println("<br>");
			                out.println("<br>");
							out.print("<a href='../manager/noticeUpload.jsp'>继续上传消息</a>");
						    out.println("<br>");
			                out.println("<br>");
	 
						}
						
				} catch (Exception e) {
					// TODO Auto-generated catch block
				
				 //  response.getWriter().write("<script languge='javascript'>alert('操作出错！返回主页重试！');window.location.href='../main.jsp'</script>");
				   out.println(e.toString());
				e.printStackTrace();
				
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

