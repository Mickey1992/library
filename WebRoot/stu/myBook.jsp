<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.text.*;"%>
 
<jsp:useBean id="connection" scope="request" class="com.JDBConnection"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%!
void setTimeToMidnight(Calendar calendar){
    calendar.set(Calendar.HOUR_OF_DAY, 0);
    calendar.set(Calendar.MINUTE, 0);
    calendar.set(Calendar.SECOND, 0);
  }


 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <style type="text/css">
     p{ text-indent:2em; padding:0px; margin:0px; }
    h1{                font-weight:normal;

    
    
    }
     * {
                margin: 0; padding:0
            }
     .t3{line-height:1.3; font-size:20px}
     H6{ font-size:12px; color:#333333; font-weight:normal; margin-bottom:0;padding-bottom:0; margin-top:3px;
}
a:link,:visited{text-decoration:none; color:#333333;  

}
td{text-align:left;}
a:hover{ color:#0099FF;  
}
H5{
color:#333333; text-decoration:blink; margin-bottom:3px;padding-bottom:0; margin-top:5px; 
}
    </style>
    <title>我的借阅信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="javascript">
function logOut()
{

}
</script>
  <body>
  <center>
    <table style="background:url(image/ab.jpg); "><tr><td>
     
    
	   <img src="image/head.jpg"  ></td></tr><tr><td>
	    <jsp:include page="dao.jsp"></jsp:include>
<table  width="250px" style="background:url(image/tus.jpg); background-repeat:no-repeat; top:20px; position:relative; text-align:left; float:right;right:35px"     >
<tr ><td><br><br><br>
<H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/logout.jsp">退出</a></h6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">返回主页</a></h6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/myBook.jsp?">返回您的记录</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=name">重新搜索</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/donate.jsp" target="_blank">捐书申请</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/recommend.jsp" target="_blank">图书荐购</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="commu.jsp" target="_blank">书籍交流</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜索选择</H5></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=writer">作者</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=type">主题</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/search.jsp?param=name">高级关键词搜索</a></H6></td></tr>

<tr><td style="border-bottom:dashed medium"><H5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;使用指南</H5></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">帮助中心</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/newBooks.jsp" target="_blank">新书通报</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/rank.jsp" target="_blank">外界排行</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="stu/recommendation.jsp">阅读推荐</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="jie/jieyue.jsp?path=chaxun.jsp?">借阅规则</a></H6></td></tr>
<tr><td><H6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=sort.jsp">本馆所用分类法</a></H6></td></tr>
<tr><td><br><br><br><br><br><br><br><br><br></td></tr>
</table>

  
  
  
 
      
    <%
    if((String)session.getAttribute("username")==null)
    {
    response.sendRedirect("login.jsp");
    }
    
    
    else
    {
    
    int pageNum=1;
    try{pageNum=Integer.parseInt(request.getParameter("page"));}catch (Exception e){pageNum=1;}
    System.out.println("page:"+pageNum);
    int pageSize=30;
    int last=0;
    int next=0;
    String sql="select * from STUDENT where s_number = '"+(String)session.getAttribute("username")+"'";
    ResultSet rs=connection.executeQuery(sql);
    rs.next(); %>
    
 <br>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hi~  <%= rs.getString(1) %></h1><br>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= rs.getString(3) %></h1><br><br>
     
    <% String sql2="select * from RENT where s_number = '"+(String)session.getAttribute("username")+"'";
    ResultSet rs2=connection.executeQuery(sql2);
    if(!rs2.next())
    {
    %> <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亲~ </h2><br><h2>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;你还没有借书哦！</h2><br> <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;快点去借吧。。。</h2><% 
    }else{
    
     %>
    
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="renew" type="submit" value="续借已选"><br><br>
   
    
    <form name="myform" id="myform" method="post" action="stu/renewCheck.jsp"> 
    <table style="margin:5px 40px;" width="650">
    <tr bgColor=“GREEN”>
    <td style="3px">续借</td>
    <td>书名</td>
    <td>编号</td>
    <td>借出日</td>
    <td>到期日</td>
    <td>剩余天数</td>
    <td>续借次数</td>
    <td>评价</td>
    </tr>
    
    <%
    String getCount = "select count(*) from RENT where s_number = '"+(String)session.getAttribute("username")+"'";
    ResultSet getcount = connection.executeQuery(getCount);
 	 getcount.next();
 	 int count = Integer.parseInt(getcount.getString(1));
 	 System.out.println("count:"+count);
    	if(pageNum*pageSize<count)
     		{
     			if(pageNum>1)
     		{
     			last=1;
     		}
     		next=1;
     		}
     	else if (pageNum>1)
     	{
      	 last=1;
     	}
     sql2="select top "+pageNum*pageSize+" * from RENT where s_number = '"+(String)session.getAttribute("username")+"' except select top "+(pageNum-1)*pageSize+" * from RENT where s_number = '"+(String)session.getAttribute("username")+"'";
    rs2=connection.executeQuery(sql2);
    System.out.println(sql2);
    
    while(rs2.next())
    {    
    String sql3="select book_name from BOOK where book_ID= '"+rs2.getString(2)+"'";
    ResultSet rs3=connection.executeQuery(sql3);
    if(rs3.next())
    {
    System.out.println("sql3");
    System.out.println(rs2.getDate(4)==null);
    Calendar now = Calendar.getInstance();   
    Calendar rentDate=Calendar.getInstance(); 
    Calendar returnDate=Calendar.getInstance();
    SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
    rentDate.setTime(rs2.getDate(3));
    System.out.print("sql3 ok");
    String rentdate=dateformat.format(rentDate.getTime());
    System.out.println("rentdate"+rentdate);
    returnDate=rentDate;
    returnDate.add(Calendar.DAY_OF_YEAR,Integer.parseInt(rs2.getString(5))); 
    String returndate=dateformat.format(returnDate.getTime());
    System.out.println("returndate"+returndate);
    String today=dateformat.format(now.getTime());
    setTimeToMidnight(now);
    setTimeToMidnight(returnDate);
    int remain=(int)((returnDate.getTimeInMillis()-now.getTimeInMillis())/(60*60*24*1000));
    System.out.println("remain:"+remain);
    %>
    
    <tr bgColor=“GREEN”>
    <td><%
         Calendar return_date=Calendar.getInstance();
         
         if(rs2.getDate(4)!=null){
         return_date.setTime(rs2.getDate(4));} 
         if((rs2.getDate(4)==null)||(return_date.getTimeInMillis()-rentDate.getTimeInMillis())<0) {
        %><input type="checkbox" name="id" value= "<%=rs2.getString(2) %>"><%}else {%> 已归还<%} %></td>
    <td><%=rs3.getString(1) %></td>
    <td><%=rs2.getString(2) %></td>
    <td><%=rentdate %></td>
    <td><%=returndate%></td>
    <td><%=remain %></td>
    <td><%=Integer.parseInt(rs2.getString(5))/30-1 %></td>
    <td><%
          String sql4="select * from COMMENT where s_number= '"+(String)session.getAttribute("username")+"' and book_ID = '"+rs2.getString(2)+"'";
          System.out.println("SQL4:"+sql4);
          ResultSet rs4=connection.executeQuery(sql4);
          if(rs4.next())
          {
        %>   已评价
       <%
          }
          else
          {
       %>
          <a href="stu/comment.jsp?param=<%=rs2.getString(2)%>" target="_blank">评价</a>
       <% } %>
          
    </td>
    </tr>
    
    <%} %>
    <%} %>
    </table>
    </form> 
    
    
    <%}%>
    
    <center>
  <%if(last==1){%>
    <a href="stu/myBook.jsp?page=<%=pageNum-1%>">上一页</a><%} %>
    
    <%if(next==1){%>
    <a href="stu/myBook.jsp?page=<%=pageNum+1%>">下一页</a><%} %>
    </center>
    <%}%>
    

    
    
    
    
   
    </td></tr></table></center>
  </body>
</html>
