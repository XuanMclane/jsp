<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:100px; background:#CCC; border:1px; 
	solid #999; display:none}
</style>
</head>
<body>
<input type="checkbox" onmouseover="document.getElementById('div1').style.display='block'" 
	onmouseout="document.getElementById('div1').style.display='none'" onclick="alert('asdf')"/>
<div id ="div1">
	For your security
</div>
</body>
</html>
