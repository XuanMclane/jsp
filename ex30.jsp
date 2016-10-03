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
	var oTab=document.getElementById('tab1');
	var oBtn=document.getElementById('btn1');
	var oTxt=document.getElementById('name');
	
	oBtn.onclick=function()
	{
		for(var i=0;i<oTab.tBodies[0].rows.length;i++)
			{
				var sTab=oTab.tBodies[0].rows[i].cells[1].innerHTML.toLowerCase();
				var sTxt=oTxt.value.toLowerCase();
				var arr=sTxt.split(' ');
				
				oTab.tBodies[0].rows[i].style.display='none';
				
				for(var j=0;j<arr.length;j++)
				{
					if(sTab.search(arr[j])!=-1)
					{
					oTab.tBodies[0].rows[i].style.display='block';
					}
				
				}
			}
	}
}
</script>
</head>
<body>
Name:<input id="name" type="text" />
<input id="btn1" type="button" value="Search" />
<table id="tab1" border="1" width="500">
	<thead>
		<td>ID</td>
		<td>Name</td>
		<td>Age</td>
		<td>Operation</td>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
		    <td>Blue</td>
		    <td>27</td>
		    <td></td>
		    
		</tr>
		<tr>
			<td>2</td>
		    <td>ZhangSan</td>
		    <td>23</td>
		    <td></td>
		</tr>
		<tr>
			<td>3</td>
		    <td>LiSi</td>
		    <td>25</td>
		    <td></td>
		</tr>
		<tr>
			<td>4</td>
		    <td>WangWu</td>
		    <td>28</td>
		    <td></td>
		</tr>
		<tr>
			<td>5</td>
		    <td>ZhangWei</td>
		    <td>24</td>
		    <td></td>
		</tr>
		<tr>
			<td>6</td>
		    <td>WangSi</td>
		    <td>24</td>
		    <td></td>
		</tr>
	</tbody>
</table>
</body>
</html>