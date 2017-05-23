<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<frameset rows="20%,*">
   <frame src="../tou1.jsp" frameborder="0" name="myframeTou" noresize="noresize" scrolling="no"/>
   <frame src="managerZhu.jsp" frameborder="0" name="myframeLog" />
</frameset>

<noframes></noframes>
  