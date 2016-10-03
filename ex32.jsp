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
	var oForm=document.getElementById('form1');
	
	oForm.onsubmit=function()
	{
		alert('aaa');
	}
	oForm.onreset=function()
	{
		alert('bbb');
	}
}

</script>
</head>
<body>
<form id="form1" action="http://www.zhinengshe.com">
	User:<input type="text" name="user" /><br>
	Password<input type="password" name="pass" />
	<input type="submit" />
	<input type="reset" />
</form>
</body>
</html>