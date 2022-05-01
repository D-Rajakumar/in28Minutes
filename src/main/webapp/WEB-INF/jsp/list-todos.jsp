<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
	
		<title> Todo's for ${name} </title>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
	
	</head>
	<body>
		<div class="container">
		
		<table class="table table-striped" >
		
			<caption> Your Todo's are </caption>
			<thead> 
				<tr> 
					<th> User ID </th>
					<th>Description </th>
					<th>Target Date </th>
					<th>Is it done </th>
				</tr>
			</thead>
			
			<tbody>
			
			
				<c:forEach items = "${todos}" var = "item">
					<tr> 
						<td>${item.user}</td>
						<td>${item.desc} </td>
						<td>${item.targetDate} </td>
						<td>${item.done} </td>	
					</tr>
				
				</c:forEach>
			
			
			</tbody>			
		
		</table>

		
		<div> <a class = "button" href="/add-todo"> Add a Todo </a> </div>
		
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
	  </div>	
	</body>

</html>