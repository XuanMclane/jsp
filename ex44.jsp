<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:100px;height:100px; background:red; filter:alpha(opacity:30);opacity:0.3;}
</style>
<script src="move2.jsp"></script>
<script>
window.onload=function()
{
	var oDiv=document.getElementById('div1');
	var oBtn=document.getElementById('btn1');
	
	oBtn.onclick=function()
	{
		startMove(oDiv,{width:120, height:300, opacity:100});
	}
}
</script>
</head>
<body>
<input id="btn1" type="button" value="move" />
<div id="div1"></div>
</body>
</html>