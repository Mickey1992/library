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
      </style>
  </head>
  
  <body>

  <table background="image/lian.jpg" class="t1"  width="200px" style="background-repeat:no-repeat; top:230px;text-align:left; left:90px; z-index:-1; float:left" ><tr><td></td></tr>
       <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
     
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=jianj.jsp">本馆简介</a>&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=caib.jsp">采编部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=liut1.jsp">流通阅览一部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=liut2.jsp">流通阅览二部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guj.jsp">古籍特藏部</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=qingb.jsp">情报咨询部</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=xit.jsp">系统数字媒体中心</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=bang.jsp">办公室</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=qinby.jsp">情报研究所</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mh.jsp">闵行校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zhongb.jsp">中北校区开放时间</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=mingh.jsp">闵行校区管内布局</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zbb.jsp">中北校区馆内布局</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=ziliao.jsp">资料室分布</a></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=guiz.jsp">规章制度</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=lianx.jsp">联系我们</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=changj.jsp">常见问题</a></td></tr><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="about.jsp?path=zongz.jsp">总咨询台</a></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr></table>
 
 
 
  <table width="730px" class="t2"><tr><td>
   <table width="730px" ><tr><td width="80%"><H2 style="color:#0000FF"><a name="ji">文献借阅规定</a></H2></td><td><H4><a href="" class="te">返回首页</a></H4></td></tr></table>
<hr>
<table style="float:right;boeder:dotted" border="4px" cellpadding="5px" class="t2" width="200px"><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目录<hr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="document.getElementById('one').scrollIntoView();" class="te">第一章  借阅证</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('two').scrollIntoView();" class="te" >第二章  书刊借阅</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('fu').scrollIntoView();" class="te" >附：读者阅读权限表</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('three').scrollIntoView();" class="te" >第三章  电子阅览</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('four').scrollIntoView();" class="te">第四章  文献复制</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('five').scrollIntoView();" class="te" >第五章  违规处理和赔偿</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0)" onclick="document.getElementById('six').scrollIntoView();" class="te" >第六章  阅览环境</a></td></tr></table>

<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为配合本校教学和科研的需要，充分发挥图书馆文献资源的作用，维护图书馆文献借阅秩序，保障全体读者的权益，特制定本规定。</P><A 
name="br1"></A>
<H3 style="color:#0000FF"><a name="one"> 第一章 借阅证 </a></H3>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第一条 </STRONG>本校教职工、研究生、大学生由校制卡中心办理校园卡，图书馆统一开通借阅权限后可作为借阅证在图书馆借书和阅览。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二条 
</STRONG>临时来本校进修、学习的人员在校制卡中心办理校园卡后，需通过有关机构提交图书馆批准后方可借阅文献，并按有关规定缴纳相关费用。协作单位人员持协议约定的有关证件进馆借阅。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第三条 </STRONG>读者须持本人校园卡到图书馆借阅文献，校园卡不得转借他人借阅文献，违规者按第五章第十七条处理。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第四条 </STRONG>读者遗失校园卡，应立即到校制卡中心挂失。挂失前卡上所记录的借出文献由持证人负责归还。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第五条 </STRONG>读者离开学校（包括毕业、休学、退学、结业、工作调动、辞职等），将注销借阅权限。</P><A 
name="br2"></A> 
<H3 style="color:#0000FF"><a name="two"> 第二章 书刊借阅 </a></H3>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第六条</STRONG> 借阅 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 ．图书馆可借出的文献含普通图书和随书光盘。线装古籍、保存本、参考工具书、学位论文、期刊文献仅提供室内阅览，不予外借 ; 
教学参考书专架陈列的图书仅限本校教师和全日制学生外借；民国书刊仅提供电子阅览。查阅古籍珍本善本，须经馆长特许。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 ．读者借书册数、借阅期限根据不同的读者类型和文献类型设置，详见表「读者借阅权限表」。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 ．借出文献须在借书处办理借出手续。未办理手续将文献携带出馆者按第五章第十八条处理。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 ． 阅览室文献阅览后应放在规定之处，闭架阅览室借阅的文献应归还服务台。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5 ．读者借阅文献时应当场检查，如发现污损等情况，应及时提请工作人员记录处理，以分清责任。读者对所借图书应妥加爱护保管，如有污损、缺页、遗失等情况，按第五章第十九条赔偿。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第七条</STRONG> 归还和续借 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 读者借阅图书应按期归还，逾期不还者按照第五章第二十条处罚。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 ．图书逾期前如需继续使用，可办理续借手续。未被其他读者预约的图书可续借 5 
次，已被其他读者预约的图书或逾期催还的图书不得续借。续借手续可自行在网上办理，也可持证或持续借的图书到借书处办理。续借周期和原借阅周期相同，从续借之日起计算。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 ．借出文献到期日如为国定假日、寒暑假期间的，则借书期限顺延。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第八条</STRONG> 逾期催还 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;借出图书到期前 3 
天和逾期后，图书馆通过电子邮件发送催还通知，读者收到催还通知后应立即归还所借图书。读者可自行在网上设置和修改本人的电子邮箱。未收到催还通知不作为逾期理由。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第九条</STRONG> 预约 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图书预约包括借出预约、异地预约和闭架书库预约。读者可自行在图书馆目录查询系统办理预约手续，预约图书到馆后，图书馆通过电子邮件发送到书通知。读者收到通知后应尽快到图书馆办理借阅手续，超过 
6 天，将取消此次图书预约。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 ．借出预约：读者所需图书已被其他读者借出时，可办理预约。每位读者可预约图书 5 册（随书光盘暂不提供预约）。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 ．异地预约：两校区图书馆之间实行图书通借通还，读者可在本校区预约另一校区馆的图书（随书光盘暂不提供预约），并可指定取书地点。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 ．闭架预约：图书馆闭架书库的图书也可通过目录系统进行预约，读者接到取书通知后即可办理借阅手续。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;预约图书到书后累计 3 次不办理借阅手续者，处以停止借阅权限 2 周。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十条</STRONG> 读者离校前，应还清全部所借文献。研究生还须呈缴电子版和印刷版学位论文。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十一条</STRONG> 
本校读者因教学和科研需要，对本馆未收藏的文献可申请馆际互借和文献传递服务。相关文献借阅规则按借出馆的规定执行。</P><A name="br21"></A>
<center><H3 style="color:#0000FF"><a name="fu"> 读者借阅权限表 </a></H3></center>
<center><TABLE class="depart" width="610" border="1" cellpadding="0" cellspacing="0" bordercolor="#333333" class="t3">

  <TR>
    <TH style="text-align: center;" rowSpan="2" bgcolor="#CCCCFF">读者类型</TH>
    <TH style="text-align: center;" colSpan="2" bgcolor="#CCCCFF">借书量  </TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">一般中外文图书</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF"> 新书、光盘<BR>                      教学参考书 
  </TH></TR>
  <TR>
    <TH style="text-align: center;" bgcolor="#CCCCFF">图书<BR>                      （可预约5册）</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">光盘<BR>                      （不可预约）</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">借期<BR>                      （可续借5次）</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">借期<BR>                      （可续借5次）</TH></TR>
  <TR>
    <TD>教职工</TD>
    <TD>25</TD>
    <TD>5</TD>
    <TD>60 天</TD>
    <TD>14 天</TD></TR>
  <TR>
    <TD>特聘教师</TD>
    <TD>25</TD>
    <TD>5</TD>
    <TD>60 天</TD>
    <TD>14 天</TD></TR>
  <TR>
    <TD>访问学者</TD>
    <TD>25</TD>
    <TD>5</TD>
    <TD>60 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>离退休教职工</TD>
    <TD>20</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>附中小托幼教师</TD>
    <TD>20</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>进修教师</TD>
    <TD>20</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>博士后、博士生</TD>
    <TD>20</TD>
    <TD>5</TD>
    <TD>60 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>硕士生、专业硕士</TD>
    <TD>20</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>本科生四年级</TD>
    <TD>20</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>本科生一至三年级</TD>
    <TD>15</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>大专生</TD>
    <TD>15</TD>
    <TD>5</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>继续教育学生</TD>
    <TD>6</TD>
    <TD>4</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR>
  <TR>
    <TD>短期留学生</TD>
    <TD>6</TD>
    <TD>4</TD>
    <TD>30 天</TD>
    <TD>14 天 </TD></TR></TABLE></center><A name="br3"></A>
<H3 style="color:#0000FF"><a name="three"> 第三章 电子阅览 </a></H3>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十二条 </STRONG>使用计算机和网络，应遵守国家法律法规，不得在网上发布和传播不良信息，不得恶意破坏计算机系统和网络。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十三条 
</STRONG>尊重知识产权，合理使用图书馆电子资源。不得使用任何工具软件恶意下载数据库文献。不得将个人账号借出或租给非本校用户使用，也不得私自将所获得的电子文献批量提供给非本校用户。违者按《华东师范大学电子资源使用规定》处罚。 
</P><A name="br4"></A>
<H3 style="color:#0000FF"><a name="four">第四章 文献复制 </a></H3>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十四条 
</STRONG>读者如需复印纸质文献，可利用馆内的自助复印机或委托图书馆复印室复印。阅览室不外借的文献如需带出该室复印，应事先在服务台办理登记手续，仅限在馆内复印。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十五条</STRONG> 复印文献请遵守相关的版权规定。图书、学位论文和期刊不能整本复印，光盘资源不得私自刻录和复制。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十六条 </STRONG>为保护文献， 1949 年以前的文献不予复印、扫描和拍摄。如有特殊需要，委托图书馆办理。</P><A 
name="br5"></A>
<H3 style="color:#0000FF"><a name="five"> 第五章 违规处理和赔偿 </a></H3>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十七条</STRONG> 用他人校园卡到图书馆借阅文献者，暂扣校园卡，处罚 100 元。将校园卡借给他人使用者，处以停止借书权限 2 
周以上。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十八条</STRONG> 未经图书馆同意或未办理借阅手续，擅自将文献带出书库和阅览室者，除追回文献外，按如下规定处罚： </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书、刊、光盘一册（含单册期刊）处罚 100 元； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;书刊贵重者（包括报刊合订本）处罚 200 元； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报纸一张，处罚 20 元。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;情节严重者，并处以停止借书权限 2 个月以上。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第十九条</STRONG> 损毁和遗失文献 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 ．损毁纸质文献和光盘（如批点、涂改、卷折、影描、污损、盘片划痕等），其程度较轻，不影响内容完整者，按文献原价的 50% 
赔偿；损毁程度较严重，必须加工整修始能继续流通者，按文献原价赔偿，并收取相应的装订费。损坏文献条形码，每条赔偿 1 元。损坏光盘盒子，每个赔偿 2 元。 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 ．读者严重损毁或遗失文献，按原文献相同版本或经同意的新版本赔偿，或按下列规定折付赔偿金，另加收技术处理费 10 元。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;普通中文图书与影视光盘的赔偿金额 = 原价 x 3 倍 +[ （当前年－出版年）× 1.00 元 ] （有收藏价值的图书按市价 3 倍赔偿）； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中文多卷集以整套定价，遗失或损毁其中一册或数册者，书价按平均每册价格计算； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随书光盘每盘赔偿 10 元以上； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;库藏本、线装书、善本书、古旧书刊等特藏文献按市价 5 倍以上赔偿； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;外文图书按原价 5 倍以上赔偿； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期刊单行本按该刊当年合订本价格赔偿； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期刊合订本按该刊当年合订本价格的 5 倍赔偿； </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单张报纸按每张 10 元赔偿。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报纸合订本按该报当年合订本价格的 5 倍赔偿。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十条 </STRONG>图书逾期不还者，按以下规定处罚：</P>
<center><TABLE class="depart" width="610" border="1" cellpadding="0" cellspacing="0" bordercolor="#333333" class="t3">  <TBODY>
  <TR>
    <TH style="text-align: center;" bgcolor="#CCCCFF">处罚类型</TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">一般中外文图书 </TH>
    <TH style="text-align: center;" bgcolor="#CCCCFF">中外文新书、教学参考书、光盘</TH></TR>
  <TR>
    <TD>罚款 I （每册/天）</TD>
    <TD>逾期日起   0．10元</TD>
    <TD>逾期日起   0．50元</TD></TR>
  <TR>
    <TD>罚款 II（每册/天）</TD>
    <TD>逾期 40天后 0．20元 </TD>
    <TD>逾期 20天后 1．00元 </TD></TR>
  <TR>
    <TD>逾期记点（每册 /天）</TD>
    <TD>5点 </TD>
    <TD>10点 </TD></TR>
  <TR>
    <TD>每累计满 200点停止借书</TD>
    <TD>7天</TD>
    <TD>7天</TD></TR></TBODY></TABLE></center>
<P>&nbsp; </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十一条 </STRONG>多次违规者除处罚外，将通报所在院系或校有关部门。对情节恶劣者报请校有关部门处理。</P><A name="br6"></A>
<H3 style="color:#0000FF"><a name="six"> 第六章 阅览环境 </a></H3>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十二条</STRONG> 读者入馆应衣着整洁、举止文明。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十三条</STRONG> 在馆内应保持安静，请勿在阅览区手机通话。摄影摄像须经图书馆同意。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十四条</STRONG> 阅览区内请勿用图书和其他物件空占座位、影响他人学习。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十五条</STRONG> 爱护图书馆的各项服务设施。保持环境整洁，不得随地吐痰，乱扔垃圾。不得带入食品和有色饮料。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十六条</STRONG> 读者包袋可存放在图书馆的寄包箱内，请勿带入不允许带包的阅览室和书库。贵重物品妥善保管。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十七条</STRONG> 离开阅览室和图书馆时，门警系统报警器鸣响时，请配合检查。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十八条</STRONG> 馆内严禁吸烟和使用明火，严禁私拉电源接线板。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>第二十九条</STRONG> 以上严重破坏阅览环境者将通报所属院系或相关部门并予以停止借阅的处罚。 </P>
<P>&nbsp;</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本规定由校图书馆负责解释。 </P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本规定自 2012年9月1日起施行，以前制订的规则同时废止。 </P>
<P>&nbsp; </P>


 
  </td></tr></table>
  </body>
</html>
