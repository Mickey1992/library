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

  <table background="image/lian4.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
  <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">岗位服务联系</a></td></tr>
       
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=yanjiu.jsp">研究生试卷复印</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF">图书馆服务设施</H2></td><td><H4><a href="index。jsp" class="te">返回首页</a></H4></td></tr></table>
<hr>

<center><table width="563" border="1" cellpadding="0" cellspacing="0" >
	<tr>
                      <th width="15%" style="text-align: center" bgcolor="#CCCCFF"> 服务设施 </th>
                      <th width="45%" style="text-align: center" bgcolor="#CCCCFF"> 闵行校区  </th>
                      <th style="text-align: center" bgcolor="#CCCCFF">中北校区 </th>
                    </tr>
                    <tr bgcolor="#EFF2FC">
                      <td width="15%"> 读者座位 </td>
                      <td width="45%" bgcolor="#EFF2FC"> 提供阅览、自习座位 3099 席 </td>
                      <td> 提供阅览、自习座位 1100 席 </td>
                    </tr>
                    <tr>
                      <td width="15%" > 无线上网 <br></td>
                      <td width="45%"> 全覆盖 </td>
                      <td> 全覆盖 </td>
                    </tr>
                    <tr bgcolor="#EFF2FC">
                      <td width="15%" > 电子阅览室 </td>
                      <td width="45%"> 凭校园卡 免费上机 </td>
                      <td> 凭校园卡 免费上机 </td>
                    </tr>
                    <tr>
                      <td width="15%" > 公共检索终端 </td>
                      <td width="45%"> 免费上机 </td>
                      <td> 免费上机 </td>
                    </tr>
                    <tr bgcolor="#EFF2FC">
                      <td width="15%" > 复印服务 </td>
                      <td width="45%"> 裙楼一楼提供人工复印（周一、周三）<br>
                      一、二、三、五楼均设有自助复印机 </td>
                      <td> 一楼提供人工复印（工作日）<br>
                      三、四楼阅览室均设有自助复印机 </td>
                    </tr>
                    <tr>
                      <td width="15%" > 打印服务 </td>
                      <td width="45%"> 主楼三楼电子阅览室提供 </td>
                      <td> 一楼电子阅览室提供 </td>
                    </tr>
                    <tr bgcolor="#EFF2FC">
                      <td width="15%">多媒体阅览<br>
                        影视欣赏                       </td>
                      <td width="45%"> 主楼四楼多媒体阅览室和影视欣赏室<br>
                      提供声像资料的欣赏和阅览 </td>
                      <td> 一楼影视欣赏室提供声像资料的欣赏和阅览 </td>
                    </tr>
                    <tr>
                      <td width="15%" > 学术报告厅 </td>
                      <td width="45%"> 免费为校内学术报告会提供裙楼一楼报告厅<br> 
                      联系电话： 54345074 </td>
                      <td> 免费为校内学术报告会提供逸夫楼报告厅<br>
                      联系电话： 54345074 </td>
                    </tr>
                    <tr bgcolor="#EFF2FC">
                      <td width="15%" > 学术文化展厅 </td>
                      <td width="45%"> 免费为校内学术与文化展览提供裙楼一楼展厅<br>
                      联系电话： 54345074 </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="15%" >研究室<br>
                        研讨室                      </td>
                      <td width="45%"> 为本校教师及研究生免费提供裙楼五楼可供小组讨论和个人研究之用的研究室、研讨室 </td>
                      <td>&nbsp;</td>
                    </tr>
					<tr bgcolor="#EFF2FC">
					  <td >笔记本电脑</td>
					  <td>裙楼五楼参考阅览区，本校教师和研究人员区内临时借用，参见<a href="about.jsp?path=laptop.jsp">笔记本电脑借用规则</a><br></td>
					  <td>&nbsp;</td>
		  </tr>
					<tr>
                      <td width="15%" > 存包柜 </td>
                      <td width="45%"> 裙楼各楼层 设有存包柜 ，刷校园卡即可使用，每晚闭馆前请取走所有寄存物品 </td>
                      <td> 一楼进门处及三楼过道设有存包柜，需自带挂锁使用， 每晚闭馆前请取走所有寄存物品 </td>
                    </tr>
					<tr bgcolor="#EFF2FC">
					  <td width="15%" > 饮水间 </td>
					  <td width="45%"> 裙楼一层西侧、二至五层东侧、及主楼各层 </td>
					  <td> 二楼报告厅旁 </td>
		  </tr>
					<tr>
					  <td width="15%" > 自动售货机 </td>
					  <td width="45%"> 裙楼二楼大厅 </td>
					  <td>&nbsp;</td>
		  </tr>
             </table></center>




  </td></tr></table>
  </body>
</html>
