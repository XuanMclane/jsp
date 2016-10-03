<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="move2.js"></script>
<script>
window.onload=function()
{
	var oDiv=document.getElementById('div1');
	var aBtn=oDiv.getElementsByTagName('ol')[0].getElementsByTagName
	('li');
	var oUl=oDiv.getElementByTagName('ul')[0];
	
	for(var i=0;i<aBtn.lengt;i++)
	{
		aBtn[i].index=i;
		aBtn[i].onclick=function()
		{
			now=this.index;
			tab();
		}
	}
	
	function tab()
	{
		for(var i=0;i<aBtn.length;i++)
		{
			aBtn[i].className='';
		}
		aBtn[now].className='active';
		//oUl.style.top=-150*this.index+'px';
		startMove(oUl,{top:-150*now});
	}
	
	function next()
	{
		now++;
		if(now==aBtn.length)
		{
			now=0;
		}
		tab();
	}
	
	var timer=setInterval(next,4000);
	
	oDiv.onmouseover=function()
	{
		clearInterval(timer);
	}
	oDiv.onmouseout=function()
	{
		timer=setInterval(next,4000);
	}
}
</script>
</head>
<body>

</body>
</html>