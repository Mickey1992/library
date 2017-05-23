<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.ResultSet,java.io.File"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:useBean id="con" class="bean.ConBean" scope="page"></jsp:useBean>
<html>
    <head>
    
        <title>首页-华东师范图书馆</title>
       <jsp:include page="MyJsp.jsp" flush="true"/> 
  <META   HTTP-EQUIV=”Pragma”   CONTENT=”no-cache”>   
  <META   HTTP-EQUIV=”Cache-Control”   CONTENT=”no-cache”>   
  <META   HTTP-EQUIV=”Expires”   CONTENT=”0”> 
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
           
           
           
            #container { 
                text-align: center;
                width: 300px;
                height: 250px;
                background-color: #FFFFFF;
               
				float:left;
            }
            
            #container #title {
                height: 28px;
            }
            #container #title li {
                float: left;
                list-style-type: none;
                height: 28px;
                line-height: 28px;
                text-align: center;
                margin-right: 1px;
            }
            #container #title ul {
                background-color: #FFFFFF;
                height: 28px;
            }
            #container #title a {
                text-decoration: none;
                color: #000000;
                display: block;
                width: auto;
                background: url("image/b.jpg") no-repeat left -29px;
            }
            #container #title a span{
                display: block;
                background: url("image/c.jpg") no-repeat right -29px;
                padding: 0 15px 0 15px;
            }
            #container #title #tag1 a:hover {
                text-decoration: none;
                color: #ffffff;
                display: block;
                width: auto;
                background: url("image/b.jpg") no-repeat left -87px;
            }
            #container #title #tag1 a:hover span{
                display: block;
                background: url("image/c.jpg") no-repeat right -87px;
                padding: 0 15px 0 15px;
            }
      
            #container #title #tag2 a:hover {
                text-decoration: none;
                color: #ffffff;
                display: block;
                width: auto;
                background: url("image/b.jpg") no-repeat left -58px;
            }
            #container #title #tag2 a:hover span{
                display: block;
                background: url("image/b.jpg") no-repeat right -58px;
                padding: 0 15px 0 15px; 
            }
          
            #container #title .selectli1 {
                text-decoration: none;
                color: #ffffff;
                display: block;
                width: auto;
                background: url("image/b.jpg") no-repeat left -87px;
            }
            #container #title a .selectspan1 {
                display: block;
                background: url("image/c.jpg") no-repeat right -87px; 
                padding: 0 15px 0 15px;
            }
       
            #container #title .selectli2 {
                text-decoration: none;
                color: #ffffff;
                display: block;
                width: auto;
                background: url("image/c.jpg") no-repeat left -58px;
            }
            #container #title a .selectspan2 {
                display: block; 
                background: url("image/b.jpg") no-repeat right -58px; 
                padding: 0 15px 0 15px;
            }
           
       
            #container #content li img {margin: 5px;display:block;}
            #container #content {
                height: 200px;
                padding: 0px;
            }
                   .content1 {
                border-top-width: 3px;
                border-right-width: 1px;
                border-bottom-width: 1px;
                border-left-width: 1px;
                border-top-style: solid;
                border-right-style: solid;
                border-bottom-style: solid;
                border-left-style: solid;
                border-top-color: #3A81C8;
                border-right-color: #3A81C8;
                border-bottom-color: #3A81C8;
                border-left-color: #3A81C8;
                background-color: #DFEBF7;
            }
            .content2 {
             height: 150px;
                padding: 0px;
                border-top-width: 3px;
                border-right-width: 1px;
                border-bottom-width: 1px;
                border-left-width: 1px;
                border-top-style: solid;
                border-right-style: solid;
                border-bottom-style: solid;
                border-left-style: solid;
                border-top-color: #FE74B8;
                border-right-color: #FE74B8;
                border-bottom-color: #FE74B8;
                border-left-color: #FE74B8;
                background-color: #FFECF5;
            }
    
           
      #picBox{width:400px; height:250px; margin:50px auto; overflow:hidden; position:relative;}
#picBox ul#show_pic{ margin:0; padding:0; list-style:none; height:205px; width:3050px; position:absolute;}
#picBox ul#show_pic li{ float:left; margin:0; padding:0; height:205px;}
#picBox ul#show_pic li img{ display:block;}
#icon_num{ position:absolute; bottom:0px; right:10px;}
#icon_num li{ float:left; background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat -15px 0;width:15px; height:15px; list-style:none; color:#39F; text-align:center;  cursor:pointer; padding:0; margin:0;margin-right:5px;}
#icon_num li:hover,#icon_num li.active{ background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat 0 0; color:#fff;}
#picBox_top{width:610px; height:205px; margin:0px auto; position:relative; overflow:hidden;}
#picBox_top ul#show_pic_top{ margin:0; padding:0; list-style:none; height:205px; width:610px; position:absolute;}
#picBox_top ul#show_pic_top li{ float:left; margin:0; padding:0; height:205px;}
#picBox_top ul#show_pic_top li img{ display:block;}
#icon_num_top{ position:absolute; bottom:0px; right:10px;}
#icon_num_top li{ float:left; background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat -15px 0;width:15px; height:15px; list-style:none; color:#39F; text-align:center;  cursor:pointer; padding:0; margin:0;margin-right:5px;}
#icon_num_top li:hover,#icon_num_top li.active{ background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat 0 0; color:#fff;}

           .mypicture{
           width:400px;
           height:250px;
            border:0px;
            hspace:0px;
            vertical-align:middle; 
           
           
           }
           
           
           
          .mya {
		  text-decoration:none;
		  color:black;
		  padding:20px
		  }
		  .mya:visited{
		  color:black;
		  
		  }
		  .mya:hover{
		  color:#FF0000
		  }
		            .mya2 {
	text-decoration:none;
	color:#333333;
	padding:17px;
	font-weight: bold;
		  }
		  .mya2:visited{
		  color:#333333;
		  
		  }
		  .mya2:hover{ color:#FF6600
		  }
            .hidecontent {display:none;}
        
        </style>
		<style type="text/css">
		
		            #container2 {
                text-align: left;
                width: 100px;
                height: 250px;
                background-color: #FFFFFF;
            
            }
            
            #container2 #title2 {
                height: 28px;
            }
           
            #container2 #contenta ul {margin: 10px;}
            #container2 #contenta li {
			font:"宋体"; font-size:20px;margin: 10px;  }
			 #container2 #contenta li a:visited,link{
			 color:#000000;
			 
			 }
#container2 #contenta li a:link {
	color: #000000;
	text-decoration: none;
	font-family: "新宋体";
}
			  #container2 #contenta li a:hover{
			 color:#FF3300;
			 
			 }
       
            #container2 #contenta {
                height: 250px;
                padding: 10px;
				overflow:hidden;width:300px;white-space:nowrap;text-overflow:ellipsis;

            }
       
            .hidecontent {display:none;}
            -->
        </style>
        <script language="javascript">
            function switchTag2(tag,content)
            {
                // alert(tag);
                // alert(content);
                for(i=5; i <7; i++)
                {
                    if ("tag"+i==tag)
                    {
                        document.getElementById(tag).getElementsByTagName("a")[0].className="selectli"+i;
                        document.getElementById(tag).getElementsByTagName("a")[0].getElementsByTagName("span")[0].className="selectspan"+i;
                    }else{
                        document.getElementById("tag"+i).getElementsByTagName("a")[0].className=" ";
                        document.getElementById("tag"+i).getElementsByTagName("a")[0].getElementsByTagName("span")[0].className=" ";
                    }
                    if ("content"+i==content)
                    {
                        document.getElementById(content).className="";
                    }else{
                        document.getElementById("content"+i).className="hidecontent";
                    }
                    document.getElementById("contenta").className=content;
                }
            }
        </script>

      
		
		
	  
  
  
   <script language="javascript">
            function switchTag(tag,content)
            {
                // alert(tag);
                // alert(content);
                for(i=1; i <3; i++)
                {
                    if ("tag"+i==tag)
                    {
                        document.getElementById(tag).getElementsByTagName("a")[0].className="selectli"+i;
                        document.getElementById(tag).getElementsByTagName("a")[0].getElementsByTagName("span")[0].className="selectspan"+i;
                    }else{
                        document.getElementById("tag"+i).getElementsByTagName("a")[0].className=" ";
                        document.getElementById("tag"+i).getElementsByTagName("a")[0].getElementsByTagName("span")[0].className=" ";
                    }
                    if ("content"+i==content)
                    {
                        document.getElementById(content).className="";
                    }else{
                        document.getElementById("content"+i).className="hidecontent";
                    }
                    document.getElementById("content").className=content;
                }
            }
        </script>
  
  
        
   <script src="js/checkform.js" language="JavaScript" type="text/javascript"></script>
<script type="text/javascript">

 $(document).ready(function(){
  if (top.location != self.location) {
   top.location = self.location;
  } });
</script>


  </head>
    
    
    <body >
     <%con.Con(); 
    ResultSet rs;
    int count=0;
    %>
    <table style="background:url(image/ab.jpg); background-repeat:repeat;" width="1000px"><tr><td>
    <table style="background:url(image/pic.png);background-repeat:no-repeat;margin:10px 40px;background-position:0 15;z-index:0; position:relative" ><tr>
<td width="450px" height="300px"style=" padding:0px 30px">
<div id="picBox">
	<ul id="show_pic" style="left:0;">
    	
       <% 
try{
String sql=new String();
sql= "select * from picturenews";
rs=con.query(sql);
while(rs.next()){
if(count>=0&&count<=3){
%> 
<li><a href=""><img  id="mypicture" src="manager/imgOut.jsp?id=<%=rs.getInt(1)%>"></a></li>
<%
count++;}
}
}catch(Exception e){
e.printStackTrace();
}
%>
      
    </ul>
    <ul id="icon_num">
    	<li class="active">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
       
    </ul>
</div>
<script type="text/javascript">

var glide =new function(){
	function $id(id){return document.getElementById(id);};
	this.layerGlide=function(auto,oEventCont,oSlider,sSingleSize,second,fSpeed,point){
		var oSubLi = $id(oEventCont).getElementsByTagName('li');
		var interval,timeout,oslideRange;
		var time=1; 
		var speed = fSpeed 
		var sum = oSubLi.length;
		var a=0;
		var delay=second * 1000; 
		var setValLeft=function(s){
			return function(){
				oslideRange = Math.abs(parseInt($id(oSlider).style[point]));	
				$id(oSlider).style[point] =-Math.floor(oslideRange+(parseInt(s*sSingleSize) - oslideRange)*speed) +'px';		
				if(oslideRange==[(sSingleSize * s)]){
					clearInterval(interval);
					a=s;
				}
			}
		};
		var setValRight=function(s){
			return function(){	 	
				oslideRange = Math.abs(parseInt($id(oSlider).style[point]));							
				$id(oSlider).style[point] =-Math.ceil(oslideRange+(parseInt(s*sSingleSize) - oslideRange)*speed) +'px';
				if(oslideRange==[(sSingleSize * s)]){
					clearInterval(interval);
					a=s;
				}
			}
		}
		
		function autoGlide(){
			for(var c=0;c<sum;c++){oSubLi[c].className='';};
			clearTimeout(interval);
			if(a==(parseInt(sum)-1)){
				for(var c=0;c<sum;c++){oSubLi[c].className='';};
				a=0;
				oSubLi[a].className="active";
				interval = setInterval(setValLeft(a),time);
				timeout = setTimeout(autoGlide,delay);
			}else{
				a++;
				oSubLi[a].className="active";
				interval = setInterval(setValRight(a),time);	
				timeout = setTimeout(autoGlide,delay);
			}
		}
	
		if(auto){timeout = setTimeout(autoGlide,delay);};
		for(var i=0;i<sum;i++){	
			oSubLi[i].onmouseover = (function(i){
				return function(){
					for(var c=0;c<sum;c++){oSubLi[c].className='';};
					clearTimeout(timeout);
					clearInterval(interval);
					oSubLi[i].className="active";
					if(Math.abs(parseInt($id(oSlider).style[point]))>[(sSingleSize * i)]){
						interval = setInterval(setValLeft(i),time);
						this.onmouseout=function(){if(auto){timeout = setTimeout(autoGlide,delay);};};
					}else if(Math.abs(parseInt($id(oSlider).style[point]))<[(sSingleSize * i)]){
							interval = setInterval(setValRight(i),time);
						this.onmouseout=function(){if(auto){timeout = setTimeout(autoGlide,delay);};};
					}
				}
			})(i)			
		}
	}
}
glide.layerGlide(true,'icon_num','show_pic',400,4,0.03,'left');
/**
 *glide.layerGlide((oEventCont,oSlider,sSingleSize,sec,fSpeed,point);
 *@param auto type:bolean 是否自动滑动 当值是true的时候 为自动滑动
 *@param oEventCont type:object 包含事件点击对象的容器
 *@param oSlider type:object 滑动对象
 *@param sSingleSize type:number 滑动对象里单个元素的尺寸（width或者height）  尺寸是有point 决定
 *@param second type:number 自动滑动的延迟时间  单位/秒
 *@param fSpeed type:float   速率 取值在0.05--1之间 当取值是1时  没有滑动效果
 *@param point type:string   left or top
 */
</script>




      </td><td>
      
      
	        <table style="background:url(image/dengb.jpg) ;background-position:0 0;background-repeat:no-repeat;z-index:0; position:relative"><tr><td width="400px" height="300px" style=" padding:30px 35px">
        <div id="container">
            
            <div id="title">
                <ul>
                    <li id="tag1"><a href="#" onMouseOver="switchTag('tag1','content1');this.blur();" class="selectli1"><span class="selectspan1">读者登录</span></a></li>
                    <li id="tag2"><a href="#" onMouseOver="switchTag('tag2','content2');this.blur();"><span>管理员登录</span></a></li>
                  
                   
                </ul>
            </div><!--title-->
   
            <div id="content" class="content1" style="font-size:13px">
                <div id="content1"><br><br>
				 <%
  session.setAttribute("username", null);
   %>
    <form name=" form1" method="post" action="stu/loginCheck.jsp?path=myBook.jsp">
校园卡号：<input type="text"  name="username"/><br><br>
登录密码：<input type="password" name="password" id="p"><br><br>
<input name="Submit" type="submit" id=" Submit" value="提交"><br><br>
*登录的账号与公共数据库相同
</form>
                </div><!--content1-->
  
                <div id="content2" class="hidecontent"><BR><BR>
                  <form id="form1"  onsubmit="return checkselect(this);" method="POST" action="servlet/MLogin">

管理员姓名：<input type="text"  name="ID"/><br><br>
登录密码：<input type="password" name="password"><br><br>
<input type="submit" value="提交" style="cursor: pointer;" />
</form>
                </div><!--content2-->
  

  
              
            </div><!--content-->
            
        </div><!--container-->
	        
	        
	        
	        </td></tr></table>
	        
	        
	        
	  
	  </td></tr></table>
	  
	  
	  
	  
	  
	  
      <center>
      <table cellspacing="10px" cellpadding="0px" type="z-index:0; position:relative" style="background:url(image/bg.jpg);background-repeat:no-repeat;" width=850px>        
	  <tr>
	  <td style="padding:100px 30px"><div id="container2">
            
            <div id="title2" >
                <ul style="list-style-type:none">
				<table><tr><td>
                    <li id="tag5"><a href="#" onMouseOver="switchTag2('tag5','content5');this.blur();" class="selectli5"><span class="selectspan5"><img src="image/go.jpg" border="0"  ></span></a></li></td><td>
                    <li id="tag6"><a href="#" onMouseOver="switchTag2('tag6','content6');this.blur();"><span><img src="image/bao.jpg" border="0"></span></a></li></td></tr></table>
                    
                </ul>
            </div><!--title2-->
   
            <div id="contenta" class="content5">
                <div id="content5" >
                    <ul>
                        <%   
               //ResultSet rs;
				File file;
				int count1=0;
				int count2=0;
				java.sql.Date sqlDate=new java.sql.Date(new java.util.Date().getTime());
				//java.sql.Date date=EncodeDate(sqlDate.-2, sqlDate.getDate()-2, sqlDate.getDate()-2);
               Calendar ca=Calendar.getInstance();
               java.util.Date nowdate  =  new java.util.Date();//得到当前时间
               ca.setTime(nowdate);
               ca.set(Calendar.DAY_OF_YEAR, ca.get(Calendar.DAY_OF_YEAR)-3);//你想要前几天的，就减去几天
               Date now  = new Date(ca.getTimeInMillis());//这个就是前n天的时间
			   java.sql.Date sqlDate0=new java.sql.Date(now.getTime());
				String sql2 = "select topic,content,keyword,update_time,m_name from notice order by update_time desc"; //sql查询语句
               
				rs = con.query(sql2); //执行查询,将结果封装到user bean中
				while (rs.next()) {
								String tem=rs.getString(1);
					           if(tem.length()>8)
					           tem=tem.substring(0,7)+"...";	
					           if(count1>=0&&count1<=6){
							%>
							
							<li><a href=manager/detail.jsp?path=notice/<%=rs.getString(3) %>/<%=rs.getString(5) %> ><%=tem %></a></li>
							
							<!--  <a href=detail.jsp?path=/notice<%=rs.getString(3) %>/<%=rs.getString(5) %> ><%=tem %></a><br/>-->
                               
							<%
							count1++;
							}
								}
								%>
                        <li style="list-style:none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><img src="image/more.jpg" border="0"></a></li>
                    </ul>
                </div><!--content5-->
  
                <div id="content6" class="hidecontent">
                    <ul>
                    <%
				sql2 = "select topic,content,keyword,update_time,m_name from report order by update_time desc"; //sql查询语句
                rs = con.query(sql2); //执行查询,将结果封装到user bean中
				while (rs.next()) {
									String tem=rs.getString(1);
					           if(tem.length()>8)
					           tem=tem.substring(0,7)+"...";
					           if(count2>=0&&count2<=6){
							%>
							<li><a href=manager/detail.jsp?path=report/<%=rs.getString(3) %>/<%=rs.getString(5) %> ><%=tem %></a></li>
                               
							<%
							   count2++;
							}
								}
							%>
                       
                        <li style="list-style:none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""><img src="image/more.jpg" border="0"></a></li>
                    </ul>
                </div><!--content6-->
  
               
            </div><!--content-->
            
        </div><!--container2--></td>
	  
	  <td width=10%><br></td>
	  
	  
	  <td >
	  
 
 
	  <form name=" form2" method="post" action="stu/result.jsp?page=1">
    <select name="method">
    <option value="name" selected="selected">关键字</option>
    <option value="writer" >作者</option>
    <option value="type" >主题（类别）</option>
    </select>
    <input type="text" name="bookname"> &nbsp;&nbsp;&nbsp;<br/><br/>
    <input name="Submit" type="submit" id=" Submit" value="搜索">
  </form>
	  
	<br/><img src="image/book.png"/><a href="commu.jsp" class="mya" target="_blank">书籍交流</a><br/>
	  <img src="image/juanb.png"/><a href="stu/donate.jsp" class="mya" target="_blank">捐书申请</a><br/>
	  <img src="image/tuij.jpg"/><a href="stu/recommend.jsp" class="mya" target="_blank">资源荐购</a><br/>
	  <img src="image/e.png"/><a href="about.jsp?path=changj.jsp" target="_blank" class="mya">常见问题</a>
	  
	  
</td>
</tr></table></center>

</td></tr></table></body></html>
