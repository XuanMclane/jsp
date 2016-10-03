<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link id="l1" rel="stylesheet" type="text/css" href="css1.css" />
</head>
<script>
function toSkin1()
{
	var oL=document.getElementById('l1');
	oL.href="css1.css";
}
function toSkin2()
{
	var oL=document.getElementById('l1');
	oL.href="css2.css";
}
</script>
<body>
<input type="button" value="skin1" onclick="toSkin1()"/>
<input type="button" value="skin2" onclick="toSkin2()"/>
</body>
</html>