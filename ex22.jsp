<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function getByClass(oParent, sClass)
{
	var aEle=oParent.getElementsByTagName('*');
	var aResult=[];
	for(var i=0;i<aELe.length;i++)
		{
			if(aELe[i].className==sClass)
				{
					aResult.push(aEle[i]);
				}
		}
	return aResult;
}
window.onload=function()
{
	var oUl=document.getElementById('ul1');
	var aLi=document.getElementsByTagName('li');
	//alert(oUl.childNodes.length);
	//alert(oUl.children.length);
	//alert(oUl.parentNode);
	var aA=document.getElementsByTagName('a');
	for(var i=0;i<aA.length;i++)
		{
			aA[i].onclick=function()
			{
				this.parentNode.style.display='none';
			}
		}
	oUl.firstElementChild.style.background='yellow';
	/*for (var i=0;i<oUl.children.length;i++)
		{
			//alert(oUl.childNodes[i].length);
			//alert(oUl.childNodes[i].nodeType);
			oUl.children[i].style.background='red';
					
		}*/
	var aBox=getByClass(oUl, 'box');
	for(var i=0;i<aBox.length;i++)
		{
			aBox[i].style.background='red';
		}
	
}
</script>
</head>
<body>
<ul id="ul1">	
	<li>11111 <a href="javascript:;">Hide</a></li>
	<li class="box">22222 <a href="javascript:;">Hide</a></li>
	<li>33333 <a href="javascript:;">Hide</a></li>
	<li>44444 <a href="javascript:;">Hide</a></li>
	<li class="box">55555 <a href="javascript:;">Hide</a></li>
	<li>66666 <a href="javascript:;">Hide</a></li>
</ul>
</body>
</html>