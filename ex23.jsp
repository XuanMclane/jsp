<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:200px; background:#CCC; position:relative;}
#div2 {width:100px; height:100px; background:red; position:absolute; left:50px; top:50px;}
</style>
<script>
window.onload=function()
{
	oDiv=document.getElementById('div1');
	alert(oDiv.offsetParent);
}
</script>
</head>
<body>
<div id="div1">
	<div id="div2"></div>
</div>
</body>
</html>