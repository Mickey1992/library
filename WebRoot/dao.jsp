<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dao.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style>
td{
font-size:14px; font-family:"宋体"; color:#000000; text-align:center;}
a{ color:#000000;}
</style>

</head>
<script language="javascript">
var menu_width=170;
var show_width=20;
var menu_top=40;
var move_mode='smooth';

function addMenuHeader(){
content="<div id='float_menu'";
content+="style='position:absolute;left:0;top:"+menu_top+";";
content+="z_index:50;width:"+eval(menu_width+20+2)+"'";
content+=" onmouseover='moveOut()' onmouseout='moveBack()'>";
content+="<table width='100%' cellpadding='0' cellspacing='1' bgcolor='#555555'>";
content+="<tr height='20'>";
content+="<td bgcolor='#eeffff' width='"+menu_width+"'>";
content+="选择类别</td>";
content+="<td bgcolor='#c0edcc' rowspan=50 width='"+eval(show_width+2)+"'>";
content+="分<br>类<br>流<br>览<br>";
content+="</td></tr>";
document.write(content);
}



function addMenuFoot(){
content="</table></div>";
document.write(content);
}



function addItem(text,url,target){
if(!target||target=='')
{target="_blank";
}content="<tr height='20px'><td bgcolor='#eeeeff'>";
content+="<a href='"+url+"' target='"+target+"'>"+text;
content+="</a></td></tr>";
document.write(content);}


function moveOut(){
if(move_mode=='smooth')moveOutSmooth();
else moveOutSkip();}



function moveBack(){
if(move_mode=='smooth') moveBackSmooth();
else moveBackSkip();
}


function moveOutSmooth(){
now_pos=parseInt(document.getElementById('float_menu').style.left);
if(window.movingBack) clearTimeout(movingBack);
if(now_pos<0){
dx=0-now_pos;
if(dx>30)
document.getElementById('float_menu').style.left=now_pos+5+"px";
else if(dx>10)
document.getElementById('float_menu').style.left=now_pos+2+"px";
else
document.getElementById('float_menu').style.left=now_pos+1+"px";
movingOut=setTimeout("moveOutSmooth()",5);
}else{clearTimeout(window.movingOut);
}}




function moveBackSmooth()
{
if(window.movingOut)
clearTimeout(movingOut);
if(document.getElementById('float_menu').style.pixelLeft>eval(0-menu_width))
{
dx=document.getElementById('float_menu').style.pixelLeft-eval(0-menu_width);
if(dx>30)
document.getElementById('float_menu').style.pixelLeft-=5;
else if(dx>10)
document.getElementById('float_menu').style.pixelLeft-=2;
else
document.getElementById('float_menu').style.pixelLeft-=1;
movingBack=setTimeout("moveBackSmooth()",5);
}else{clearTimeout(window.movingBack);
}}



function init()
{
addMenuHeader();
addItem("A马克思主义、列宁主义、毛泽东思想、邓小平理论","www.usret.con","_blank");
addItem("B哲学、宗教","www.usret.con","_blank");
addItem("C社会科学总论","www.usret.con","_blank");
addItem("D政治、法律","www.usret.con","_blank");
addItem("E军事","www.usret.con","_blank");
addItem("F经济","www.usret.con","_blank");
addItem("G文化、科学、教育、体育","www.usret.con","_blank");
addItem("H语言、文字","www.usret.con","_blank");
addItem("I文学","www.usret.con","_blank");
addItem("J艺术","www.usret.con","_blank");
addItem("K历史、地理","www.usret.con","_blank");
addItem("N自然科学总论","www.usret.con","_blank");
addItem("O数理科学和化学","www.usret.con","_blank");
addItem("P天文学、地理科学","www.usret.con","_blank");
addItem("Q生物科学","www.usret.con","_blank");
addItem("R医药、卫生","www.usret.con","_blank");
addItem("S农业科学","www.usret.con","_blank");
addItem("T工业技术","www.usret.con","_blank");
addItem("U交通运输","www.usret.con","_blank");
addItem("V航空、航天","www.usret.con","_blank");
addItem("X环境科学、安全科学","www.usret.con","_blank");
addItem("Z综合性图书","www.usret.con","_blank");
addMenuFoot();
document.getElementById('float_menu').style.left=0-menu_width+"px";
document.getElementById('float_menu').style.top=150+"px";
document.getElementById('float_menu').style.visibility='visible';


}

</script>
<body>


</body>
<script language="javascript">
<!--
init();
//-->
</script>
</html>
