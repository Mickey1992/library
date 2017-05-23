<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jianj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">

          
            * {
                margin: 0; padding:0
            }
            body {
			margin:auto; 
			  
                text-align: center;
                height: auto;
                font-size: 10px;
      
            }
           .t1 td{ font-size:12px; font-family:"宋体";padding-bottom:12px;
}
.t1 td a,:visited{ text-decoration:none; color:#333333;}
.t1 td a:hover{ color:#0033FF;} 
           .te:visited{ text-decoration:none; color:#0033CC}
            .te:link{ text-decoration:none; color:#0033CC}
 .te:hover{color:#FF3300}
 .t2{line-height:2} 
 .t3{line-height:1.5; font-size:13px}
 .t4{
font-size:15px; text-align:center; font-weight:bold;}
      </style>
  </head>
  
  <body>

  <table background="image/lian3.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">服务岗位联系</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=fuw.jsp">服务设施</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=yuanxilian.jsp">院系联系馆员</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliaoshil.jsp">资料室联络</a></td></tr>
   
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliao.jsp">资料室分布</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guiz.jsp">规章制度</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=jianj.jsp">本馆简介</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF">服务岗位联系</H2></td><td><H4><a href="index。jsp" class="te">返回首页</a></H4></td></tr></table>
<hr>

<center><table width="563" border="1" cellpadding="0" cellspacing="0" bordercolor="#333333" class="t3">

   <TR>
    <TH style="text-align: center;"  bgcolor="#CCCCFF">服务项目</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">负责部门</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">联系地点</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">联系人</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">电　话</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">Email</TH></TR>
  <TR>
    <TD bgColor="#eff2fc">服务咨询</TD>
    <TD>咨询服务总台</TD>
    <TD>闵行图书馆大厅</TD>
    <TD>&nbsp;</TD>
    <TD>54344881</TD>
    <TD><A 
      href="mailto:libmaster@library.ecnu.edu.cn">libmaster@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">对外联系与接待<BR>勤助学生管理<BR>后勤管理<BR>复印室<BR>学术报告与展览</TD>
    <TD>办公室</TD>
    <TD><BR>                        闵行主楼A502<BR>逸夫楼B220<BR><BR>闵行裙楼B210        
                    </TD>
    <TD><BR>徐 军<BR>严 明<BR><BR>                        胡文华<BR></TD>
    <TD>54345073<BR>                      54342325-<BR>(传真)<BR>62232317<BR>
      54345074 </TD>
    <TD><A href="mailto:j_xu@library.ecnu.edu.cn"><BR>                      
      j_xu@library.ecnu.edu.cn </A><BR><A 
      href="mailto:myan@library.ecnu.edu.cn">myan@library.ecnu.edu.cn</A><BR><A 
      href="mailto:whhu@library.ecnu.edu.cn"><BR>                    
      whhu@library.ecnu.edu.cn</A> </TD></TR>
  <TR>
    <TD bgColor="#eff2fc" rowSpan="2">办证<BR>离校手续<BR>书刊借阅</TD>
    <TD>流通阅览二部</TD>
    <TD>逸夫楼D105</TD>
    <TD>赵丽辉</TD>
    <TD>62232347</TD>
    <TD><A 
      href="mailto:lhzhao@library.ecnu.edu.cn">lhzhao@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD>流通阅览一部<BR>(闵行)</TD>
    <TD>闵行裙楼B205</TD>
    <TD>李雪锋</TD>
    <TD>54344885</TD>
    <TD><A 
      href="mailto:xfli@library.ecnu.edu.cn">xfli@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">馆际互借<BR>文献传递</TD>
    <TD>流通阅览一部<BR>(闵行)</TD>
    <TD>闵行裙楼三楼</TD>
    <TD>楼 茜</TD>
    <TD>54344886</TD>
    <TD><A 
      href="mailto:ecnulib@library.ecnu.edu.cn">ecnulib@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">学位论文电子版提交</TD>
    <TD rowSpan="2">数字化部</TD>
    <TD>逸夫楼B505</TD>
    <TD>陈枝清</TD>
    <TD>62233383 </TD>
    <TD><A 
      href="mailto:zqchen@library.ecnu.edu.cn">zqchen@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">图书馆网站<BR>                        （不含电子资源）</TD>
    <TD>逸夫楼B503</TD>
    <TD>徐 婷</TD>
    <TD>62233378</TD>
    <TD><A 
      href="mailto:txu@library.ecnu.edu.cn">txu@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">科技查新<BR>                      
      课题代查代检<BR>文献检索课程<BR>用户培训<BR>                      电子资源使用</TD>
    <TD>情报咨询部</TD>
    <TD>闵行裙楼B212<BR>逸夫楼C103</TD>
    <TD>周 健</TD>
    <TD>54344887<BR>62232086</TD>
    <TD><A 
      href="mailto:jzhou@library.ecnu.edu.cn">jzhou@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">图书捐赠<BR>                      采购建议</TD>
    <TD>采编部</TD>
    <TD>闵行裙楼B106</TD>
    <TD>高 红</TD>
    <TD>54345120</TD>
    <TD><A 
    href="mailto:hgao@library.ecnu.edu.cn">hgao@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">线装古籍阅览<BR>                      民国书刊阅览</TD>
    <TD>古籍特藏部</TD>
    <TD>闵行主楼A703<BR>逸夫楼八楼</TD>
    <TD>吴 平</TD>
    <TD>54345069<BR>62232797</TD>
    <TD><A 
  href="mailto:pwu@library.ecnu.edu.cn">pwu@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">影视欣赏<BR>                      电子阅览室</TD>
    <TD>流通阅览一部<BR>(闵行)</TD>
    <TD>闵行裙楼B205</TD>
    <TD>郑 伟</TD>
    <TD>54344885</TD>
    <TD> <A 
      href="mailto:wzheng@library.ecnu.edu.cn">wzheng@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">书记信箱</TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD><A 
      href="mailto:lshuji@library.ecnu.edu.cn">lshuji@library.ecnu.edu.cn</A></TD></TR>
  <TR>
    <TD bgColor="#eff2fc">馆长信箱</TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD>
    <TD><A 
      href="mailto:guanzhang@library.ecnu.edu.cn">guanzhang@library.ecnu.edu.cn</A></TD></TR>
</table></center>




  </td></tr></table>
  </body>
</html>
