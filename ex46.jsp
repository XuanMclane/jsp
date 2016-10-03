<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {margin:0; padding:0}
#ul1 {width:400px; height:400px; border:1px solid black; margin:10px auto; overflow:hidden}
#ul1 li {border-bottom:1px #999 dashed; padding:4px; 
list-style:none; overflow:hidden; filter:alpha(opacity:0); opacity:0;}
</style>
<script src="move2.jsp"></script>
<script>
window.onload=function()
{
	var oBtn=document.getElementById('btn1');
	var oUl=document.getElementById('ul1');
	var oTxt=document.getElementById('txt1');
	
	oBtn.onclick=function()
	{
		var oLi=document.createElement('li');
		oLi.innerHTML=oTxt.value;
		oTxt.value='';
		if(oUl.children.length>0)
		{
			oUl.insertBefore(oLi,oUl.children[0]);
		}
		else
		{
			oUl.appendChild(oLi);
		}
		
		var iHeight=oLi.offsetHeight;
		oLi.style.height='0';
		
		startMove(oLi,{height:iHeight},function(){
			startMove(oLi,{opacity:100});
		});
		//alert(iHeight);
	}
}
</script>
</head>
<body>
<textarea id="txt1" rows="4" cols="40"></textarea>
<input id="btn1" type="button" value="Send" />
<ul id="ul1">

</ul>
</body>
</html>