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
	var oBtn=document.getElementById('btn1');
	var oUl=document.getElementById('ul1');
	var oTxt=document.getElementById('txt1')
	
	oBtn.onclick=function()
	{
		var oLi=document.createElement('li');
		var aLi=oUl.getElementsByTagName('li');
		oLi.innerHTML=oTxt.value;
		//oUl.appendChild(oLi);
		if(aLi.length>0)
		{
			oUl.insertBefore(oLi,aLi[0]);
		}
		else
		{
			oUl.appendChild(oLi);
		}
		
	}
}
</script>
</head>
<body>
<input id="txt1" type="text" />
<input id="btn1" type="button" value="Create li" />
<ul id="ul1">
</ul>
</body>
</html>