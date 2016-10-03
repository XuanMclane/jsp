<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:150px; background:red; position:absolute;
right:0; bottom:0;}
</style>
<script>
window.onscroll=function()
{
	var oDiv=document.getElementById('div1');
	var scrollTop=document.documentElement.scrollTop||document.body.scrollTop;
	
	//oDiv.style.top=(document.documentElement.clientHeight-oDiv.offsetHeight)/2+scrollTop+'px';
	startMove(parseInt((document.documentElement.clientHeight-oDiv.offsetHeight)/2+scrollTop));
}

var timer=null;

function startMove(iTarget)
{
	var oDvi=document.getElementById('div1');
	clearInterval(timer);
		var speed=(iTarget-oDiv.offsetTop)/6;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		if(oDiv.offsetTop==iTarget)
			{
			clearInterval(timer);
			}
		else
			{
			oDiv.style.top=oDiv.offsetTop+speed+'px';
			}
	
}
</script>
</head>
<body>
<div id="div1"></div>
</body>
</html>