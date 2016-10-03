<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
window.onload=function()
{
	var aA=document.getElementsByTagName('a');
	var oUl=document.getElementById('ul1');
	
	for(var i=0;i<aA.length;i++)
	{

		aA[i].onclick=function()
		{
			oUl.removeChild(this.parentNode);
		}
	}
}
</script>
</head>
<body>
<ul id="ul1">
	<li>11234<a href="javascript:;">delete</a></li>
	<li>1214<a href="javascript:;">delete</a></li>
	<li>123141234<a href="javascript:;">delete</a></li>
	<li>1241234<a href="javascript:;">delete</a></li>
	<li>12234<a href="javascript:;">delete</a></li>
</ul>
</body>
</html>