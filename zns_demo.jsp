<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="zns_style.css" rel="stylesheet" type="text/css"/>
<script>
window.onload=function()
{
	var arr=['1','2','3','4','5','6','7','8','9','10','11','12'];
	var oDiv=document.getElementById('tab');
	var aLi=oDiv.getElementsByTagName('li');
	var oTxt=oDiv.getElementsByTagName('div')[0];
	
	for (var i=0;i<a.Li.length;i++)
	{
		aLi[i].index=i;
		aLi[i].onmouseover=function()
		{
			for(var i=0;i<aLi.length;i++)
			{
				aLi[i].className='';
			}
			this.className='active';
		}
		oTxt.innerHTML='<h2>'+(this.index+1)+' yue huo dong</h2><p>'+arr[this.index]+'</p>';
	}
}
</script>
</head>
<body>
<div id='tab' class="calendar">
	<ul>
		<li class="active"><h2>1</h2><p>JAN</p></li>
		<li><h2>2</h2><p>FER</p></li>
		<li><h2>3</h2><p>MAR</p></li>
		<li><h2>4</h2><p>APR</p></li>
		<li><h2>5</h2><p>MAY</p></li>
		<li><h2>6</h2><p>JUN</p></li>
		<li><h2>7</h2><p>JUL</p></li>
		<li><h2>8</h2><p>AUG</p></li>
		<li><h2>9</h2><p>SEP</p></li>
		<li><h2>10</h2><p>OCT</p></li>
		<li><h2>11</h2><p>NOV</p></li>
		<li><h2>12</h2><p>DEC</p></li>
		
	</ul>
	<div class="text">
		<h2>1 yue huo dong</h2>
		<p>1</p>
	</div>
</div>
</body>
</html>