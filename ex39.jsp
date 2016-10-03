<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div {width:100px; height:50px; background:red; margin:10px;}
</style>
<script>
window.onload=function()
{
	var aDiv=document.getElementsByTagName('div');	
	for(var i=0;i<aDiv.length;i++)
	{
		aDiv[i].timer=null;
		aDiv[i].onmouseover=function()
		{
			startMove(this,400)
		}
		aDiv[i].onmouseout=function()
		{
			startMove(this,100)
		}
	}
		
	
}
var timer=null
function startMove(obj,iTarget)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
		var speed=(iTarget-obj.offsetWidth)/6;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		if(obj.offfsetWidth==iTarget)
		{clearInterval(obj.timer);}
		else
		{obj.style.width=obj.offsetWidth+speed+'px';}
	},30);
}
</script>
</head>
<body>
<div></div>
<div></div>
<div></div>
</body>
</html>