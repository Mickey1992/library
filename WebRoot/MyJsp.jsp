<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
        <title>雕刻菜单栏</title>
        <style>
             .cap{
                font-size:60px;
            }
            table.links{
           
			position:fixed
			 center
                background:url(image/pic1.jpg) repeat-x;
				z-index:1;
                font-size:14px;
                
            }
            .tou{
            
			color:#0066FF; font-weight:700; 
                width:160px; height:40px;
                padding-top:10px;
                text-decoration:none;
                text-align:center;
                background:url(image/pic2.jpg) repeat-x;
            }
                .tou:visited{
			color:#0066FF; font-weight:700; 
                width:160px; height:40px;
                padding-top:10px;
                text-decoration:none;
                text-align:center;
                background:url(image/pic2.jpg) repeat-x;
            }
            .tou:hover{
                color:#FFFFFF; font-weight:700;
                text-decoration:none;
				 width:160px; height:40px;
                background:url(image\pic3.jpg) repeat-x;
            }
			.collapsed {
                display: none;
            }
         
		   table{
		  cellpadding="0px";
		   margin:0 auto;
		   
		   }
		</style>
		
		<script language="javascript">
    var theShow=0;
	function showSub(theIndex){
	var subLay;
       // for(int i=1;i<7;i++){
	  //  subLay="lay"+i;
	   document.getElementById("lay1").style.visibility="hidden";
	    document.getElementById("lay2").style.visibility="hidden";
		 document.getElementById("lay3").style.visibility="hidden";
		  document.getElementById("lay4").style.visibility="hidden";
	   document.getElementById("lay5").style.visibility="hidden";
           document.getElementById("lay6").style.visibility="hidden";
	  //  }
	subLay="lay"+theIndex;
	document.getElementById(subLay).style.visibility="visible";
   document.getElementById(subLay).style.top=170;
//  document.getElementById(subLay).style.left= document.body.clientWidth;
 //  var t=parseInt(document.getElementById("td1").style.left);
  // document.getElementById(subLay).style.left=t;
	theShow=theIndex;
	}
	function hideSub(theIndex){
	var subLay="lay"+theIndex;
	document.getElementById(subLay).style.visibility="hidden";
	}
	function hideLay(){
	var theShowLay="lay"+theShow;
	var theX1=parseInt(document.getElementById(theShowLay).style.left);
	var theX2=theX1+document.getElementById(theShowLay).clientWidth;
	var theY1=parseInt(document.getElementById("lay0").style.top);
	var theY2=theY1+document.getElementById("lay0").clientHeight+document.getElementById(theShowLay).clientHeight;
	if(event.clientX<theX1||event.clientX>theX2||event.clientY<theY1||event.clientY>theY2){
	document.getElementById("lay1").style.visibility="hidden";
	    document.getElementById("lay2").style.visibility="hidden";
		 document.getElementById("lay3").style.visibility="hidden";
		  document.getElementById("lay4").style.visibility="hidden";
	   document.getElementById("lay5").style.visibility="hidden";
           document.getElementById("lay6").style.visibility="hidden";}
		   }
		</script>
<jsp:useBean id="con" class="bean.ConBean" scope="page"></jsp:useBean>
    </head>
	
   <body onmousemove="hideLay()">
       <table style="background:url(image/ab.jpg);"><tr><td>
	   <img src="image/head.jpg"  ></td></tr><tr><td>
            <div>
                 <table class="links" align="center"  cellpadding="0" cellspacing="0" id="lay0" >
           <tr>
                    <td >
                        <a href="#" onMouseOver="showSub(1)"  id="td1" class="tou" >本馆概况</a></td><td><a href="#" class="tou" onMouseOver="showSub(2)" >服务指南</a></td><td><a class="tou" href="#" onMouseOver="showSub(3)">资源导航</a></td><td><a class="tou" href="#" onMouseOver="showSub(4)">在线服务</a></td><td><a class="tou" href="#" onMouseOver="showSub(5)">帮助中心</a></td><td><a class="tou" href="#" onMouseOver="showSub(6)">常用链接</a>
                    </td>
                </tr>
         
		    </table>
			</div>
      
		<div id="lay1" style="position:absolute ; top:0px;left:150px;visibility=hidden;z-index:1;">
		<a href="about.jsp?path=jianj.jsp" onClick="hideSub(1)" target="" class="tou">关于本馆</a><br>
		<a href="about.jsp?path=mh.jsp" onClick="hideSub(1)" target="" class="tou">开放时间</a><br>
		<a href="about.jsp?path=mingh.jsp" onClick="hideSub(1)" target="" class="tou">管内布局</a><br>
		<a href="about.jsp?path=acceptJ.jsp" onClick="hideSub(1)" target="" class="tou">接受赠书条例</a><br>
		<a href="about.jsp?path=guiz.jsp" onClick="hideSub(1)" target="" class="tou">规章制度</a><br>
		<a href="about.jsp?path=lianx.jsp" onClick="hideSub(1)" target="" class="tou">联系我们</a></div>
			<div id="lay2" style="position:absolute;top:0px;left:310px;visibility=hidden;z-index:1;">
		<a href="cha/chaxin.jsp?path=jianj.jsp?" onClick="hideSub(1)" target="" class="tou">科技查新/查收查引</a><br>
		<a href="about.jsp?path=fuw.jsp" onClick="hideSub(1)" target="" class="tou">服务设施</a><br>
		<a href="jie/jieyue.jsp?path=chaxun.jsp?" onClick="hideSub(1)" target="" class="tou">借阅服务</a><br>
		<a href="about.jsp?path=yanjiu.jsp" onClick="hideSub(1)" target="" class="tou">研究生试卷复印</a></div>
			<div id="lay3" style="position:absolute; top:0px;left:470px;visibility=hidden;z-index:1;">
		<a href="stu/rank.jsp" onClick="hideSub(1)" target="_blank" class="tou">外借排行</a><br>
		<a href="stu/newBooks.jsp" onClick="hideSub(1)" target="_blank" class="tou">新书通报</a><br>
		<a href="stu/recommendation.jsp" onClick="hideSub(1)" target="" class="tou">推荐书目</a><br>
	    </div>
			<div id="lay4" style="position:absolute;top:0px;left:630px;visibility=hidden;z-index:1;">
		<a href="stu/myBook.jsp" onClick="hideSub(1)" target="" class="tou">个人借阅查询及续借</a><br>
		<a href="stu/donate.jsp" onClick="hideSub(1)" target="_blank" class="tou">捐书申请</a><br>
				<a href="commu.jsp" onClick="hideSub(1)" target="" class="tou">书籍交流</a><br>
		<a href="stu/recommend.jsp" onClick="hideSub(1)" target="_blank" class="tou">资源荐购</a></div>
		
			<div id="lay5" style="position:absolute;top:0px;left:790px;visibility=hidden;z-index:1;">
		<a href="about.jsp?path=sort.jsp" onClick="hideSub(1)" target="" class="tou">图书分类</a><br>
		<a href="about.jsp?path=changj.jsp" onClick="hideSub(1)" target="" class="tou">常见问题</a><br>
		<a href="about.jsp?path=zongz.jsp" onClick="hideSub(1)" target="" class="tou">总咨询台</a><br></div>
			<div id="lay6" style="position:absolute;top:0px;left:950px;visibility=hidden;z-index:1;">
		<a href="http://www.shelib.edu.cn/sh/" onClick="hideSub(1)" target="_blank" class="tou">上海教育网络图书馆</a><br>

<a href="http://www.library.sh.cn/" onClick="hideSub(1)" target="_blank" class="tou">上海图书馆</a><br>
<a href="http://www.nlc.gov.cn/" onClick="hideSub(1)" target="_blank" class="tou">中国国家图书馆</a><br>
<a href="http://www.calis.edu.cn/" onClick="hideSub(1)" target="_blank" class="tou">CALIS</a><br>
<a href="http://etd.calis.edu.cn/" onClick="hideSub(1)" target="_blank" class="tou">CALIS学位论文中心</a>

		</div>
<center>
		<marquee onmouseover=this.stop() onmouseout=this.start() scrollAmount=1 scrollDelay=60  direction=left width=900 height=10 style="font-weight:700; font:'黑体'; color:#CC00FF">

 <%con.Con(); 
    ResultSet rs;
   java.util.Date nowdate  =  new java.util.Date();//得到当前时间
  Date cutOff_date;
    String sql="select notice,publish_time,cutOff_date from em_notice order by cutOff_date asc";
    rs=con.query(sql);
    while (rs.next())
    {
   cutOff_date=rs.getDate(3);
    if(cutOff_date.after(nowdate))
    {
    %>
    <%=rs.getString(1)%>&nbsp;&nbsp;(<%=rs.getString(2) %>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <%
    }}
    %>

</marquee></center>
		</td></tr></table>
		
		
		
		
		
		
    </body>
</html>