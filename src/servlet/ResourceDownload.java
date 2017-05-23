package servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ResourceDownload extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	ServletContext application ;

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setContentType("application/octet-stream");
		
		application = this.getServletContext();
		String path = request.getParameter("path");
		
		path = new String(path.getBytes("iso8859-1"));
	//	path = new String(path.getBytes("gbk"));
		
	
		 try {
	
         
		File file = new File(application.getRealPath("/")+path);
		
		InputStream is = new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		
		response.addHeader("Content-Disposition", "attachment;filename =" + new String(file.getName().getBytes("gbk"),"iso8859-1"));
		response.addHeader("Content-Length", new Long(file.length()).toString());
		response.setCharacterEncoding("gbk");
		
		int a = 0;
		while((a = is.read()) != -1){
			os.write(a);
		}
		
		is.close();
		os.close();
      
		
		 } catch (Exception e) {
				// TODO Auto-generated catch block
				 response.getWriter().write("<script languge='javascript'>alert('对不起，此文件已删除！');window.location.href='../cha/chaxin.jsp?path=downl.jsp'</script>");
			}
		

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
