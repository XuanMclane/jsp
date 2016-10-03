<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div {width:100px; height:100px; background:red; margin:10px; border:1px solid black; float:left;
font-size:14px; filer:alpha(opacity:30); opacity:0.3;}
</style>
<script>
window.onload=function()
{
	var aDiv1=document.getElementById('div1');	
	
		aDiv1.onmouseover=function()
		{
			startMove(this,400,'height');
		}
		aDiv1.onmouseout=function()
		{
			startMove(this,100,'height');
		}
		var aDiv2=document.getElementById('div2');	
		
		aDiv2.onmouseover=function()
		{
			startMove(this,400,'width');
		}
		aDiv2.onmouseout=function()
		{
			startMove(this,100,'width');
		}
		var aDiv3=document.getElementById('div3');	
		
		aDiv3.onmouseover=function()
		{
			startMove(this,40,'font-size');
		}
		aDiv3.onmouseout=function()
		{
			startMove(this,14,'font-size');
		}
		var aDiv4=document.getElementById('div4');	
		
		aDiv4.onmouseover=function()
		{
			startMove(this,20,'borderWidth');
		}
		aDiv4.onmouseout=function()
		{
			startMove(this,1,'borderWidth');
		}
		var aDiv5=document.getElementById('div5');	
		aDiv5.onmouseover=function()
		{
			startMove(this,100,'opacity');
		}
		aDiv5.onmouseout=function()
		{
			startMove(this,30,'opacity');
		}
		
	
		
	
}
var timer=null;
function getStyle(obj,name)
{
	if(obj.currentStyle)
		{ return obj.currentStyle[name];}
	else
		{return getComputedStyle(obj,false)[name];}
}
function startMove(obj,iTarget,attr)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
		var cur=0;
		if(attr=='opacity')
			{cur=Math.round(parseFloat(getStyle(obj,attr))*100);}
		else
			{cur=parseInt(getStyle(obj,attr));}
		var speed=(iTarget-cur)/6;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		if(cur==iTarget)
		{clearInterval(obj.timer);}
		else
		{	if(attr=='opacity')
			{
				obj.style.filter='alpha(opactiy:'+(cur+speed)+')';
				obj.style.opacity=(cur+speed)/100;
			}
			else
			{obj.style[attr]=cur+speed+'px';}
		}
	},30);
}
</script>
</head>
<body>
<div id="div1">higher</div>
<div id="div2">wider</div>
<div id="div3">Font-size</div>
<div id="div4">Border</div>
<div id="div5">Opacity</div>
</body>
</html>