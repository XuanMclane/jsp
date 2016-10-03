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

	oBtn.onclick=function()
	{
		var arr=[];
		for(var i=0;i<oTab.tBodies[0].rows.length;i++)
			{
				arr[i]=oTab.tBodies[0].rows[i];
			}
		arr.sort(function(tr1,tr2)
				{
					var n1=parseInt(tr1.cells[0].innerHTML);
					var n2=parseInt(tr2.cells[0].innerHTML);
					return n1-n2;
				})
			for(var i=0;i<arr.length;i++)
				{
					oTab.tBodies[0].appendChild(arr[i]);
				}
	}
	
}
</script>
</head>
<body>
<input id="btn1" type="button" value="Order" />
<table id="tab1" border="1" width="500">
	<thead>
		<td>ID</td>
		<td>Name</td>
		<td>Age</td>
		<td>Operation</td>
	</thead>
	<tbody>
		<tr>
			<td>2</td>
		    <td>Blue</td>
		    <td>27</td>
		    <td></td>
		    
		</tr>
		<tr>
			<td>1</td>
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
			<td>6</td>
		    <td>ZhangWei</td>
		    <td>24</td>
		    <td></td>
		</tr>
		<tr>
			<td>5</td>
		    <td>WangSi</td>
		    <td>24</td>
		    <td></td>
		</tr>
	</tbody>
</table>
</body>
</html>