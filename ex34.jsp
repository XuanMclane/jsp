<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1{width:150px; height:200px; background:green; 
position:absolute; left:-150px;}
#div1 span{position:absolute; width:60px; height:60px; 
line-height:20px; background:blue; right:-60px; top:70px;}
</style>
<script>
window.onload=function()
{
	var oDiv=document.getElementById('div1');	
	oDiv.onmouseover=function()
	{
		startMove(0);
	}
	oDiv.onmouseout=function()
	{
		startMove(-150);
	}
}
var timer=null;
function startMove(iTarget)
{
	var oDiv=document.getElementById('div1');
	clearInterval(timer);
	timer=setInterval(function()
			{
				var speed=0;
				if(oDiv.offsetLeft>iTarget)
					{
						speed=-10;
					}
				else
					{
						speed=10;
					}
				if(oDiv.offsetLeft==iTarget)
					{
						clearInterval(timer);
					}
				else
					{
						oDiv.style.left=oDiv.offsetLeft+speed+'px';
					}
			},30)
}
</script>
</head>
<body>
<div id="div1">
	<span>Share to</span>
</div>
</body>
</html>