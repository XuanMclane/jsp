<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:150px; border:1px solid black;}
</style>
<script>
window.onload=function()
{	
	var oTxt=document.getElementById('txt1');
	var oBtn=document.getElementById('btn1');
	var oDiv=document.getElementById('div1');
	
	oBtn.onclick=function()
	{
		oDiv.innerHTML=oTxt.value;
	}
}
</script>
</head>
<body>
<input id="txt1" type="text" />
<input id="btn1" type="button" value="set" />
<div id="div1">
</div>

</body>
</html>