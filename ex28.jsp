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
	var oName=document.getElementById('name');
	var oAge=document.getElementById('age');
	var id=oTab.tBodies[0].rows.length+1;

	oBtn.onclick=function()
	{
		var oTr=document.createElement('tr');
		
		var oTd=document.createElement('td');
		oTd.innerHTML=id++;
		oTr.appendChild(oTd);
		
		var oTd=document.createElement('td');
		oTd.innerHTML=oName.value
		oTr.appendChild(oTd);
		
		var oTd=document.createElement('td');
		oTd.innerHTML=oAge.value;
		oTr.appendChild(oTd);
		
		var oTd=document.createElement('td');
		oTd.innerHTML='<a href="javascript:;">Delete</a>';
		oTr.appendChild(oTd);
		
		oTd.getElementsByTagName('a')[0].onclick=function()
		{
			oTab.tBodies[0].removeChild(this.parentNode.parentNode);
		}
		
		oTab.tBodies[0].appendChild(oTr);
		
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
	</tbody>
</table>
</body>
</html>