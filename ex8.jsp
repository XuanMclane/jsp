<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:200px; background:red}
</style>
<script>
function setStyle(name,value)
{
	var oDiv=document.getElementById('div1');
	oDiv.style[name]=value;
}
</script>
</head>
<body>
<input type="button" value="wider" onclick="setStyle('width','400px')"/>
<input type="button" value="higher" onclick="setStyle('height','400px')"/>
<input type="button" value="green" onclick="setStyle('background','green')"/>
<div id="div1">
</div>
</body>
</html>