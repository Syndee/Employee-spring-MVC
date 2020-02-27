<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
		<title>Employee | Management</title>
	</head>
	<body>
		<h1>Employee Management Application</h1>
		<h4>List of Employee Coming Soon</h4>
		
		<table>
			<tr>
				<th>Firstname</th>
				<th>Lastname</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Actions</th>
			</tr>
			
			<!-- Loop over and print our employees -->
			<c:forEach var="tempEmployee" items="${employeeList}">
			
			<tr>
				<td>${tempEmployee.firstName}</td>
				<td>${tempEmployee.lastName}</td>
				<td>${tempEmployee.email}</td>
				<td>${tempEmployee.phoneNumber}</td>
				<td><a href="">Update</a> </td>
			</tr>
			
			</c:forEach>
			
			
		</table>
		
		<br /> <br />
		<form:form method="Get"  action="${pageContext.request.contextPath}/add">
			<input type="submit" value="Add New Employee">
		</form:form>
	</body>
</html>