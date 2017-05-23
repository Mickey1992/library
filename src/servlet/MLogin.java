package servlet;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ConBean;

public class MLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session ;
	ConBean con ;
	File file ;
	ServletContext application ;
	ResultSet rs ;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=gbk");
		//response.setContentType("text/html;charset=utf-8");
		
		application = this.getServletContext();
		con = new ConBean();
		String ID = request.getParameter("ID");
		String m_name="";
	    m_name = new String(m_name.getBytes("iso8859-1"));
String password = request.getParameter("password");
      //  User User1= new User();
		//User1.setUsername(name);
		//User1.setPassword(password);
	//	String sql = "select * from librarian where ID ='"+ID +"'and password1= '"+password+"'" ;
		String sql = "select username from librarian where ID ='"+ID+"'" ;		
	//	file = new File(application.getRealPath("/")
	//			+ "WEB-INF/");
	//	String uri = file.getPath();

		try {
			con.Con();
			rs = con.query(sql);
			
			if(rs.next()){
				session = request.getSession();
				session.setAttribute("ID",ID);
				session.setAttribute("username",rs.getString(1));
				//session.setAttribute("score", rs.getString(1));
				session.setAttribute("password", password);
			//response.sendRedirect("../index.jsp");
       //response.sendRedirect("../manager/managerMain.jsp");
     
		//PrintWriter out = response.getWriter();
		  //out.print("dhahsdf1");
		

		 response.getWriter().write("<script languge='javascript'>top.window.location.href='../manager/managerMain.jsp'</script>");
			}
		else{
				
			//	PrintWriter out = response.getWriter(); 
			//	out.print("<script>alert('say what you want to say');</script>"); 	
			//response.sendRedirect("../managementMain.jsp");
           response.getWriter().write("<script languge='javascript'>alert('用户名或密码错误！');top.window.location.href='../manager/mLogin.jsp'</script>");
			//PrintWriter out = response.getWriter();
			 //out.print("dhahsdf2");
               	
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
