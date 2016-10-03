<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
//var oDate=new Date();
//alert(oDate.getHours());
//alert(oDate.getFullYear());
//alert(oDate.getMonth()+1);
//alert(oDate.getDay());
function toDou(n)
{
	if (n<10)
		{return '0'+n;}
	else
		{return ''+n;}
}
window.onload=function()
{
	var aImg=document.getElemntsByTagName('img');
	//var str='132134';
	function tick() 
	{
		var oDate=new Date();
		var str=toDou(oDate.getHours())+toDou(oDate.getMinutes())+toDou(oDate.getSeconds());
			
			for(var i=0;i<aImg.length;i++)
			{
				aImg[i].src='img/'+str.charAt(i)+'.png';
			}
	}
	setInterval(tick,1000);
	tick();
}
</script>
</head>
<body style="background:black; color:white; font-size:50px;">
<img src="img/0.png" />
<img src="img/0.png" />
:
<img src="img/0.png" />
<img src="img/0.png" />
:
<img src="img/0.png" />
<img src="img/0.png" />
:
</body>
</html>