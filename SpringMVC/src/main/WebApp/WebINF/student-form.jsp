<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
		First name: <form:input path="firstName" />
		
		<br><br>
	
		Last name: <form:input path="lastName" />
		
		<br><br>
		
		Country: <form:select path="country">
		<form:option value="Brazil" label="Bra"/>
		<form:option value="France" label="Fra"/>
		<form:option value="Germany" label="Ger"/>
		<form:option value="India" label="Ind"/>		
		
		</form:select>
		
		<br> <br>
	
		<input type="submit" value="Submit" />
	
	</form:form>


</body>

</html>












