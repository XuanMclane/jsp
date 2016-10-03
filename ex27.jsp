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
	var oldColor='';
	
	var oBtn=document.getElementById('btn1');
	var oName=document.getElementById('name');
	var oAge=document.getElementById('age');
	
	
	//alert(oTab.getElementsByTagName('tbody')[0].getElementsByTagName
			//('tr')[1].getElementsByTagName('td')[1].innerHTML);
	alert(oTab.tBodies[0].rows[1].cells[1].innerHTML);
	for(var i=0;i<oTab.tBodies[0].rows.length;i++)
		{
			oTab.tBodies[0].rows[i].onmouseover=function()
			{
				oldColor=this.style.background;
				this.style.background='red';
			}
			oTab.tBodies[0].rows[i].onmouseout=function()
			{
				this.style.background=oldColor;
			}
			
			if(i%2)
				{
				oTab.tBodies[0].rows[i].style.background='#CCC';
				}
			else
				{
				oTab.tBodies[0].rows[i].style.background='';
				}
		}
	
	
}
</script>
</head>
<body>
Name:<input id="name" type="text" />
Age:<input id="age" type="text" />
<input id="btn1" type="button" value="Add" />
<table id="tab1" border="1" width="500">
	<thead>
		<td>ID</td>
		<td>Name</td>
		<td>Age</td>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
		    <td>Blue</td>
		    <td>27</td>
		</tr>
		<tr>
			<td>2</td>
		    <td>ZhangSan</td>
		    <td>23</td>
		</tr>
		<tr>
			<td>3</td>
		    <td>LiSi</td>
		    <td>25</td>
		</tr>
		<tr>
			<td>4</td>
		    <td>WangWu</td>
		    <td>28</td>
		</tr>
		<tr>
			<td>5</td>
		    <td>ZhangWei</td>
		    <td>24</td>
		</tr>
	</tbody>
</table>
</body>
</html>