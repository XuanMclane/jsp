<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:20px; height:20px; background:red; position:absolute;
top:50px; left:10px;}
</style>
<script>
var timer=null;
function startMove()
{
	var oDiv=document.getElementById('div1');
	
	clearInterval(timer);
	timer=setInterval(function() 
		{
			var speed=10;
			if(oDiv.offsetLeft>=300)
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
<input id="btn1" type="button" value="Move" onclick="startMove()">
<div id="div1"></div>
</body>
</html>