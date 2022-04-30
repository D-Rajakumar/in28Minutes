<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
	
		<title> My First Web Application </title>
	
	</head>
	<body>
		<H1> Your Todo's</H1>
		<table>
		
			<caption> Your Todo's are </caption>
			<thead> 
				<tr> 
					
					<th>Description </th>
					<th>Target Date </th>
					<th>Is it done </th>
				</tr>
			</thead>
			
			<tbody>
			
			
				<c:forEach items = "${todos}" var = "item">
					<tr> 
						
						<td>${item.desc} </td>
						<td>${item.targetDate} </td>
						<td>${item.done} </td>	
					</tr>
				
				</c:forEach>
			
			
			</tbody>			
		
		</table>

		<BR/>
		<a href="/add-todo"> Add a Todo </a>
	</body>

</html>