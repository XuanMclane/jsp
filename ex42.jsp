<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="move.jsp"></script>
<script>
function getByClass(oParent, sClass)
{
	var aEle=oParent.getElementsByTagName('*');
	var aResult=[];
	
	for(var i=0;i<aEle.length;i++)
		{
			if(aEle[i].className==sClass)
				{
					aResult.push(aEle[i]);
				}
		}
	return aResutl;
}

window.onload=function()
{
	var oDiv=document.getElementById('playimages');
	var oBtnPrev=getByClass(oDiv, 'prev')[0];
	var oBtnNext=getByClass(oDiv, 'next')[0];
	var oMarkLeft=getByClass(oDiv, 'mark_left')[0];
	var oMarkRight=getByClass(oDiv, 'mark_right')[0];
	
	oBtnPrev.onmouseover=oMarkLeft.onmouseover=function()
	{
		startMove(oBtnPrev,100,'opacity');
	}
	oBtnPrev.onmouseout=oMarkLeft.onmouseout=function()
	{
		startMove(oBtnPrev,0,'opacity');
	}
	oBtnNext.onmouseover=oMarkRight.onmouseover=function()
	{
		startMove(oBtnNext,100,'opacity');
	}
	oBtnNext.onmouseout=oMarkRight.onmouseout=function()
	{
		startMove(oBtnNext,0,'opacity');
	}
	
	
	var oDivSmall=getByClass(oDiv, 'small_pic')[0];
	var oUlSmall=oDivsmal.getElemntsByTagName('li')[0];
	var aLiSmall=oDivSmall.getElementsByTagName('li');
	var oUlBig=getByClass(oDiv, 'big_pic')[0];
	var aLiBig=oUlBig.getElementsByTagName('li');
	
	var nowZIndex=2;
	var now=0;
	oUlSmall.sytle.width=aLiSmall.length*aLiSmall[0].offsetWidth+'px';
	
	for(var i=0;i<aLiSmall.length;i++)
	{
		aLiSmall[i].index=i;
		aLiSmall[i].onclick=function()
		{
			if(this.index==now) return;
			now=this.index;
			tab();
			
		}
		aLiSmall[i].onmouseover=function()
		{
			startMove(this,100,'opacity');
		}
		aLiSmall[i].onmouseout=function()
		{
			if(this.index!=now)
			{startMove(this,60,'opacity');}
		}
	}
	
function tab()
{
	aLiBig[now].style.zIndex=nowZIndex++;
	for(var j=0; j<aLiSmall.length;j++)
	{
		startMove(aLiSmall[j],60,'opacity');
	}
	startMove(aLiSmall[now],100,'opacity');
	aLiBig[this.index].style.height=0;
	startMove(aLiBig[now],320,'height');
	
	if(now==0)
	{
		startMove(oUlSamll,0,'left')
	}
	else if(now==aLiSmall.length-1)
	{
		startMove(oUlSamll,-(now-2)*aLiSmall[0].offsetWidth,'left')
	}
	else
	{
		startMove(oUlSmall,-(now-1)*aLiSmall[0].offsetWidth,'left');
	}
	
}
	
	oBtnPrev.onlcick=function()
	{
		now--;
		if(now==-1)
		{
			now=aLiSmall.length-1;
		}
		tab();
	}
	oBtnNext.onlcick=function()
	{
		now++;
		if(now==aLiSmall.length)
			{now=0;}
		tab();
	}
	
	var timer=setInterval(oBtnNext.onlcick,2000);
	
	oDiv.onmouseover=function()
	{
		clearInterval(timer);
	}
	oDiv.onmouseover=function()
	{
		timer=setInterval(oBtnNext.onlcick,2000);
	}
	
	
	
}
</script>
</head>
<body>
<div id="playimages" class="play">
	<ul class="big_pic">
		<div class="prev"></div>
		<div class="next"></div>
		
		<div class="text">Loading</div>
		<div class="length">Calculatin</div>
		
		<a class="mark_left" href="javascript:;"></a>
		<a class="mark_right" href="javascript:;"></a>
		<div id="bg"></div>
		
		<li style="z-index:1"><img src="imges/1.jpg" /></li>
		<li><img src="imges/2.jpg" /></li>
		<li><img src="imges/3.jpg" /></li>
		<li><img src="imges/4.jpg" /></li>
		<li><img src="imges/5.jpg" /></li>
		<li><img src="imges/6.jpg" /></li>
	</ul>
		
		<div class="small_pic">
			<ul style="width:390px">
				<li style="filter:100; opacity:1;"><img scr="imges/1.jpg" /></li>
				<li><img src="imges/2.jpg" /></li>
				<li><img src="imges/3.jpg" /></li>
				<li><img src="imges/4.jpg" /></li>
				<li><img src="imges/5.jpg" /></li>
				<li><img src="imges/6.jpg" /></li>
			</ul>
		</div>
		
		
		
	</ul>
</div>
</body>
</html>