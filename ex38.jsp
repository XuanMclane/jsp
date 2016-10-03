<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:100px; height:100px; background:red; position:absolute;
left:600px; top:50px;}
#div2 {width:1px; height:200px; background:black; position:absolute;
left:300px;}
#div3 {width:1px; height:200px; background:black; position:absolute;
left:100px;}
</style>
<script>
var timer=null;
function startMove(iTarget)
{	
	clearInterval(timer);
	var oDiv=document.getElementById('div1');
	timer=setInterval(function(){
		var speed=0;
		if(oDiv.offsetLeft<iTarget)
			{speed=7;}
		else
			{speed=-7;}
		if(Math.abs(iTarget-oDiv.offsetLeft)<7)
		{clearInterval(timer); oDiv.style.left=iTarget+'px';}
		else
		{oDiv.style.left=oDiv.offsetLeft+speed+'px';}
		
		document.title=oDiv.offsetLeft+','+speed;
	},30);
}
</script>
</head>
<body>
<input type="button" value="move to 100" onclick="startMove(100)" />
<input type="button" value="move to 300" onclick="startMove(300)" />
<div id="div1"></div>
<div id="div2"></div>
<div id="div3"></div>
</body>
</html>