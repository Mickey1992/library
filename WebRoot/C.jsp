<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>JavaScript封装的平滑图片滚动_网页代码站(www.webdm.cn)</title>
<style type="text/css">
body{ font-size:12px; color:#333;}
#picBox{width:610px; height:205px; margin:50px auto; overflow:hidden; position:relative;}
#picBox ul#show_pic{ margin:0; padding:0; list-style:none; height:205px; width:3050px; position:absolute;}
#picBox ul#show_pic li{ float:left; margin:0; padding:0; height:205px;}
#picBox ul#show_pic li img{ display:block;}
#icon_num{ position:absolute; bottom:0px; right:10px;}
#icon_num li{ float:left; background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat -15px 0;width:15px; height:15px; list-style:none; color:#39F; text-align:center;  cursor:pointer; padding:0; margin:0;margin-right:5px;}
#icon_num li:hover,#icon_num li.active{ background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat 0 0; color:#fff;}
#picBox_top{width:610px; height:205px; margin:50px auto; position:relative; overflow:hidden;}
#picBox_top ul#show_pic_top{ margin:0; padding:0; list-style:none; height:205px; width:610px; position:absolute;}
#picBox_top ul#show_pic_top li{ float:left; margin:0; padding:0; height:205px;}
#picBox_top ul#show_pic_top li img{ display:block;}
#icon_num_top{ position:absolute; bottom:0px; right:10px;}
#icon_num_top li{ float:left; background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat -15px 0;width:15px; height:15px; list-style:none; color:#39F; text-align:center;  cursor:pointer; padding:0; margin:0;margin-right:5px;}
#icon_num_top li:hover,#icon_num_top li.active{ background:url(http://pc.qq.com/pc/images/flashbutton.gif) no-repeat 0 0; color:#fff;}
</style>
</head>
<body>
<div id="picBox">
	<ul id="show_pic" style="left:0;">
    	<li><img src="http://www.webdm.cn/images/wall1.jpg" width="610" height="205" alt="" title="" /></li>
        <li><img src="http://www.webdm.cn/images/wall2.jpg" width="610" height="205" alt="" title="" /></li>
        <li><img src="http://www.webdm.cn/images/wall3.jpg" width="610" height="205" alt="" title="" /></li>
        <li><img src="http://www.webdm.cn/images/wall4.jpg" width="610" height="205" alt="" title="" /></li>
        <li><img src="http://www.webdm.cn/images/wall5.jpg" width="610" height="205" alt="" title="" /></li>
    </ul>
    <ul id="icon_num">
    	<li class="active">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
        <li>5</li>
    </ul>
</div>
<script type="text/javascript">
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
glide.layerGlide(true,'icon_num','show_pic',610,2,0.1,'left');
</script>
<br />
<p><a href="http://www.webdm.cn">网页代码站</a> - 最专业的网页代码下载网站 - 致力为中国站长提供有质量的网页代码！</p>
</body>
</html>