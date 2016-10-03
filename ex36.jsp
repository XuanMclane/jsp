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
</style>
<script>
function startMove()
{
	var oDiv=document.getElementById('div1');
	setInterval(function(){
		var speed=(300-oDiv.offsetLeft)/10;
		speed=speed>0?Math.ceil(speed):Math.floor(speed);
		oDiv.style.left=oDiv.offsetLeft+speed+'px';
		document.title=oDiv.offsetLeft+','+speed;
	},30);
}
</script>
</head>
<body>
<input type="button" value="move" onclick="startMove()" />
<div id="div1"></div>
<div id="div2"></div>
</body>
</html>