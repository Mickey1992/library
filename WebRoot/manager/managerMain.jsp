<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">

          
            * {
                margin: 0; padding:0
            }</style>
<frameset rows="19%,*">
   <frame src="../tou1.jsp" frameborder="0" noresize="noresize" scrolling="no" />
<frameset cols="30%,*">
   <frame src="managerLian.jsp"  frameborder="0" noresize="noresize" scrolling="no" />
   <frame src="mmain.jsp" frameborder="0" name="myframe1" />
</frameset>
</frameset>
<noframes></noframes>