<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {margin:0; padding:0;}
#div1 {width:408px; height:108px; margin:100px; auto; 
position:relative; background:red; overflow:hidden;}
#div1 ul {position:absolute; left:0; top:0; }
#div1 ul li {float:left; width:102px; height:108px; list-style:none;}
</style>
<script>
window.onload=function()
{
	var oDiv=document.getElementById('div1');
	var oUl=oDiv.getElementsByTagName('ul')[0];
	var aLi=oUl.getElementsByTagName('li');
	var speed=2;
	oUl.innerHTML+=oUl.innerHTML;
	oUl.style.width=aLi[0].offsetWidth*aLi.length+'px';
	function move() {
	if(oUl.offsetLeft<-oUl.offsetWidth/2 )
		{
			oUl.style.left='0';
		}
	if(oUl.offsetLeft>0)		
		{
			oUl.style.left=-oUl.offsetWidth/2+'px';
		}
	oUl.style.left=oUl.offsetLeft+speed+'px';
}
		
	var timer=setInterval(move,30)
	
	oDiv.onmouseover=function()
	{
		clearInterval(timer);
	}
	oDiv.onmouseout=function()
	{
		timer=setInterval(move,30);
	}
	document.getElementsByTagName('a')[0].onclick=function()
	{
		speed=-2;
	}
	document.getElementsByTagName('a')[1].onclick=function()
	{
		speed=2;
	}
}
</script>
</head>
<body>
<a href="javascript:;">Move Left</a>
<a href="javascript:;">Move Right</a>
<div id="div1">
	<ul>
		<li><img src="img2/1.jpg" /></li>
		<li><img src="img2/2.jpg" /></li>
		<li><img src="img2/3.jpg" /></li>
		<li><img src="img2/4.jpg" /></li>
	</ul>
</div>
</body>
</html>