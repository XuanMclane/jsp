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
	var aLi=document.getElementsByTagName('li');
	for(var i=0;i<aLi.length;i++)
		{
			if(i%3==0)
				{
					aLi[i].style.background='green';
				}
			else if(i%3==1)
				{
					aLi[i].style.background='yellow';
				}
			else
			{
				aLi[i].style.background='red';
			}
		}
}
</script>
</head>
<body>
<ul>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	<li></li>
	
</ul>
</body>
</html>