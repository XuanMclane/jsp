<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 {width:200px; height:200px; background:red;}
</style>
<script>
function getStyle(obj,name)
{
	if(obj.currentStyle)
		{
			return obj.currentSytle[name];
		}
	else
		{
			return getComputedStyle(obj,false)[name];
		}
}
window.onload=function()
{
	var oDiv=document.getElementById('div1');	
	
	//alert(getStyle(oDiv,'width'));
	
	var arr=[12,8,99,19,112];
	arr.sort(function(n1,n2)
			{
				return n1-n2;
			});
	alert(arr);
}
</script>

</head>
<body>
<div id="div1">
</div>
</body>
</html>