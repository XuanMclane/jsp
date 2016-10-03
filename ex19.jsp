<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div {float:left; margin:10px}
#div1 {width:50px; height:50px; background:red;}
#div2 {width:200px; height:200px; background:black; display:none}
</style>
<script>
window.onload=function()
{
	var oDiv1=document.getElementById('div1');
	var oDiv2=document.getElementById('div2');
	var timer=null;
	oDiv2.onmouseover=oDiv1.onmouseover=function()
	{
		clearTimeout(timer);
		oDiv2.style.display='block';
	}
	oDiv2.onmouseout=oDiv1.onmouseout=function()
	{
		timer=setTimeout(function() {oDiv2.style.display='none';},3000);
	}
}
</script>
</head>
<body>
<div id="div1"></div>
<div id="div2"></div>
</body>
</html>