<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:200px; background:red; filter:alpha(opacity:30); opacity:0.3; }
</style>
<script>
window.onload=function()
{
	var oDiv=document.getElementById('div1');
	oDiv.onmouseover=function()
	{startMove(100);}
	oDiv.onmouseout=function()
	{startMove(30);}
}
var alpha=30;
var timer=null
function startMove(iTarget)
{
	var oDiv=document.getElementById('div1');
	clearInterval(timer);
	timer=setInterval(function()
		{
		var speed=0;
		if(alpha<iTarget)
		{
			speed=10;
		}
		else
		{
			speed=-10;
		}
		if(alpha==iTarget)
		{
			clearInterval(timer);
		}
		else
		{
			alpha+=speed;
			oDiv.style.filer='alpha(opacity'+alpha+')';
			oDiv.style.opacity=alpha/100;
		}
		},30)
	
}
</script>
</head>
<body>
<div id="div1"></div>
</body>
</html>