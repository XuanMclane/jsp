<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:200px; background:red}
</style>
<script>
/*function toGreen()
{
	var oDiv=document.getElementById('div1');
	oDiv.style.background='green';
}
function toYellow()
{
	var oDiv=document.getElementById('div1');
	oDiv.style.background='yellow';
}
function toBlack()
{
	var oDiv=document.getElementById('div1');
	oDiv.style.background='black';
}*/

function setColor(color)
{
	var oDiv=document.getElementById('div1');
	oDiv.style.background=color;
}
</script>
</head>
<body>
<input type="button" value="toGreeen" onclick="setColor('green')"/>
<input type="button" value="toYellow" onclick="setColor('yellow')"/>
<input type="button" value="toBlack" onclick="setColor('black')"/>
<div id="div1">
</div>
</body>
</html>