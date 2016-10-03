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
	var oBtn1=document.getElementById('btn1');
	var oBtn2=document.getElementById('btn2');
	var oBtn3=document.getElementById('btn3');
	var oDiv=document.getElementById('div1');
	var aCh=oDiv.getElementsByTagName('input');
	
	oBtn1.onclick=function()
	{
		for(var i=0;i<aCh.length;i++)
		{
			aCh[i].checked=true;
		}
	}
	oBtn2.onclick=function()
	{
		for(var i=0;i<aCh.length;i++)
		{
			aCh[i].checked=false;
		}
	}
	oBtn3.onclick=function()
	{
		for(var i=0;i<aCh.length;i++)
			{
				if(aCh[i].checked==false)
					{
						aCh[i].checked=true;
					}
				else
					{
						aCh[i].checked=false;
					}
			}
	}
}
</script>
</head>
<body>
<input id="btn1" type="button" value="ALL" /> <br>
<input id="btn2" type="button" value="Back" /> <br>
<input id="btn3" type="button" value="Not" /> <br>
<div id="div1">
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
	<input type="checkbox" /> <br>
</div>
</body>
</html>