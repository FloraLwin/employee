<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<title>New Employee Register</title>
</head>
<body>
<div id="wrapper">
		<div id="five">
			<a id="seven" href="${pageContext.request.contextPath}/newemployee/create">New
				Employee</a>
			<form:form id="six"
				action="${pageContext.request.contextPath}/management">
				<button id="eight" type="submit">Search</button>
			</form:form>
			<a id="ten" href="${pageContext.request.contextPath}/">Home</a>
		</div>
	</div>
	<div id="regit"> 
	  
	<form:form modelAttribute="employeeForm" action="${pageContext.request.contextPath}/newemployee/insert" method="post">
		<form:hidden path="id" /> 
     	<form:hidden path="departmentId" /> 
     	<form:hidden path="name" /> 
     	<form:hidden path="joinDate" /> 
     	<form:hidden path="birthDate" /> 
     	<form:hidden path="position" /> 
     	<form:hidden path="gender" /> 
     	<form:hidden path="email" /> 
     	<form:hidden path="maritalStatus" /> 
     	<form:hidden path="phNo" /> 
     	<form:hidden path="japanId" /> 
		<table>
			<tr>
				<td><form:label path="id">Employee ID</form:label></td>
				<td>${f:h(employeeForm.id)}</td>
				<td><form:label path="departmentId">Department</form:label></td>
				<td>${f:h(employeeForm.departmentId)}
				</td>
			</tr>

			<tr>
				<td><form:label path="name">Employee Name</form:label></td>
				<td>${f:h(employeeForm.name)}</td>
				<td><form:label path="joinDate">Join Date</form:label></td>
				<td>${f:h(employeeForm.joinDate)}</td>
			</tr>

			<tr>
				<td><form:label path="birthDate">DOB</form:label></td>
				<td>${f:h(employeeForm.birthDate)}</td>
				<td><form:label path="position">Position</form:label></td>
				<td>${f:h(employeeForm.position)}
				</td>
			<tr>
				<td><form:label path="gender">Gender</form:label></td>
				<td>${f:h(employeeForm.gender)}</td>
				<td><form:label path="email">Email</form:label></td>
				<td>>${f:h(employeeForm.email)}</td>
			</tr>

			<tr>
				<td><form:label path="maritalStatus">Marital Status</form:label></td>
				<td>${f:h(employeeForm.maritalStatus)}</td>
				<td><form:label path="phNo">Phone No.</form:label></td>
				<td>${f:h(employeeForm.phNo)}</td>
			</tr>
			<tr>
				<td><form:label path="japanId">Japanese Level</form:label></td>
				<td>${f:h(employeeForm.japanId)}</td>
				<td></td>
				<td><a class="button" href="${pageContext.request.contextPath}/user/create?redo">Back</a>
     				&nbsp;&nbsp;
  					<input type="submit" value="Create" /> </td>
			</tr>
		</table>
</form:form>
	</div>

</body>

</html>