<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#div1 .active {background:yellow}
#div1 div{width:400px; height:200px; background:#CCC;border:1px solid #999;
		display:none;}
#div1 input {margin:0; float:left; width:100px;}
</style>
<script>
window.onload=function()
{
	var oDiv=document.getElementById('div1');
	var aBtn=oDiv.getElementsByTagName('input');
	var aDiv=oDiv.getElementsByTagName('div');
	for (var i=0;i<aBtn.length;i++)		
		{
			aBtn[i].index=i;
			aBtn[i].onmouseover=function()
			{
				for(var i=0;i<aBtn.length;i++)
					{
						aBtn[i].className='';
						aDiv[i].style.display='none';
					}
				this.className='active';
				aDiv[this.index].style.display='block';
			}
		}
}
</script>
</head>
<body>
<div id="div1">
	<input class="active" type="button" value="Education" />
	<input type="button" value="Training" />
	<input type="button" value="Recuring" />
	<input type="button" value="Abroad" />
	<div style="display:block">11111</div>
	<div>22222</div>
	<div>33333</div>
	<div>44444</div>
</div>
</body>
</html>