<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:100px; height:200px; background:#CCC; display:none}
</style>
<script>
function toShow()
{
	var oDiv=document.getElementById('div1');
	if(oDiv.style.display=="none")
	{
		oDiv.style.display="block";
	}
	else
	{
		oDiv.style.display="none";
	}
	
}
</script>
</head>
<body>
<input type="button" value="show" onclick="toShow()"/>
<div id="div1">
</div>
<a href="javascript:;">link</a>
</body>
</html>