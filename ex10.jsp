<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div {width:200px; height:200px; float:left; border:1px solid black;
	margin:10px;}
</style>
<script>
window.onload=function()
{
	var aDiv=document.getElementsByTagName('div');
	//alert(aDiv.length);
	for(var i=0;i<aDiv.length;i++)
		{
		aDiv[i].style.background='red';
		}	
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