<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {
	width:200px; 
	height:200px;
	background:red
	}
</style>
<script>
function toGreen()
{	
	var oDiv=document.getElementById('div1');
	oDiv.style.width='300px';
	oDiv.style.height='300px';
	oDiv.style.background='green';
}
function toRed()
{
	var oDiv=document.getElementById('div1');
	oDiv.style.width='200px';
	oDiv.style.height='200px';
	oDiv.style.background='red';
}
function toWeb()
{
    href="http://www.baidu.com";
}
</script>
</head>
<body>
<div id="div1" 
    onmouseover="toGreen()" onmouseout="toRed()">
</div>
</body>
</html>