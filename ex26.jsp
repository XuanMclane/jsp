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
	var oUl=document.getElementById('ul1');
	var oFrag=document.createDocumentFragment();
	for(var i=0;i<1000;i++)
	{
		var oLi=document.createElement('li');
		oFrag.appendChild(oLi);
	}
	oUl.appendChild(oFrag);
}

</script>
</head>
<body>
<ul id="ul1"></ul>
</body>
</html>