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
	var oTxt1=document.getElementById('txt1');
	var oTxt2=document.getElementById('txt1');
	var oBtn=document.getElementById('btn1');
	
	oBtn.onclick=function()
	{
		var n1=parseFloat(oTxt1.value);
		var	n2=parseFloat(oTxt2.value);
		if(isNaN(n1))
			{
				alert('First number is Wrong');
			}
		else if(isNaN(n2))
			{
				alert('Second number is wrong');
			}
		else
			{
				alert(n1+n2);
			}
	}
}
</script>
</head>
<body>
<input id="txt1" type="text" />
<input id="txt2" type="text" />
<input id="btn1" type="button" value="add"/>
</body>
</html>