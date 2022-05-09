<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">

	<form method="post">
	
		Name: 		<input type="text" name = "name"/>
		Password: 	<input type="password" name = "password"/>
			 		<input type="Submit"/>

	</form>
	
	<font Color=Red> ${errorMessage}</font>

</div>

<%@ include file="common/footer.jspf" %>
