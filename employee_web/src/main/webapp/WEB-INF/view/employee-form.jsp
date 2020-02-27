<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
		<title>Employee | Management</title>
	</head>
	<body>
		<h1>Add New Employee</h1>
		
		
		<br /> <br />
		<form:form action="${pageContext.request.contextPath}/save" modelAttribute="employee" method="Post">
		
		FirstName:
		<form:input type="text" path="firstName" />
		<br />
		
		LastName:
		<form:input type="text" path="lastName" />
		<br />
		
		Email:
		<form:input type="email" path="email" />
		<br />
		
		Phone-number:
		<form:input type="text" path="phoneNumber" />
		<input type="submit" value="Save">
	
		<br /> <br />
	
		
		</form:form>
	</body>
</html>