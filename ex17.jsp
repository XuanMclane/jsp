<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
function show()
{
	alert('a');	
}
window.onload=function()
{
	var oBtn1=document.getElementById('btn1');
	var oBtn2=document.getElementById('btn2');
	var timer=null;
	oBtn1.onclick=function()
	{
		timer=setInterval(function()
				{alert('a')},2000)
	}
	oBtn2.onclick=function()
	{
		clearInterval(timer);
	}
}
//setInterval(show,1000);
//setTimeout(show,2000);

</script>
<body>
<input id="btn1" type="button" value="open" />
<input id="btn2" type="button" value="close" />
</body>
</html>