<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div {width:100px; height:100px; margin:20px; float:left; background:red;
filter:alpha(opacity:30); opacity:0.3;}
</style>
<script>
window.onload=function()
{
	var aDiv=document.getElementsByTagName('div');
	for (var i=0;i<aDiv.length;i++)
	{
		aDiv[i].alpha=30;
		//aDiv[i].timer=null;
		aDiv[i].onmouseover=function()
		{
			startMove(this,100);
		}
		aDiv[i].onmouseout=function()
		{
			startMove(this,30);
		}
		
	}
}


function startMove(obj,iTarget)
{
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
		var speed=(iTarget-obj.alpha)/6;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		if(iTarget==obj.alpha)
			{clearInterval(obj.timer);}
		else
			{
				obj.alpha+=speed;
				obj.style.filter='alpha(opacity:'+obj.alpha+')';
			 	obj.style.opacity=obj.alpha/100;}
	},30)
	
}
</script>
</head>
<body>
<div></div>
<div></div>
<div></div>
<div></div>
</body>
</html>