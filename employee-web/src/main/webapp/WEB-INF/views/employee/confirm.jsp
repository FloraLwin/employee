<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<title>New Employee Register</title>
<style>
a {
	color: white;
}

#header {
	height: 70px;
	background-color: #009BD9;
}

#content {
	height: 1000px;
	margin-top: 20px;
}

#homeForm {
	float: right;
	margin: 20px;
}

#homebtn {
	width: 80px;
	height: 30px;
}

#confirmbtn {
	background-color: #009BD9;
	color: white;
	padding: 10px;
}

body {
	margin-top: 0;
	padding: 0;
}
</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<a style='float: left; margin: 20px'
				href="${pageContext.request.contextPath}/employee/create">New
				Employee</a>
			<form:form id="homeForm"
				action="${pageContext.request.contextPath}/emphome">
				<button id="homebtn" type="submit">Search</button>
			</form:form>
			<a id="homeForm" href="${pageContext.request.contextPath}/">Home</a>
		</div>
	</div>

	<div id="content">
		<form:form modelAttribute="employeeForm"
			action="${pageContext.request.contextPath}/employee/insert"
			method="post">
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
					<td>${f:h(employeeForm.departmentId)}</td>
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
					<td>${f:h(employeeForm.position)}</td>
				<tr>
					<td><form:label path="gender">Gender</form:label></td>
					<td>${f:h(employeeForm.gender)}</td>
					<td><form:label path="email">Email</form:label></td>
					<td>${f:h(employeeForm.email)}</td>
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
					<td><a id="confirmbtn"
						href="${pageContext.request.contextPath}/employee/create?redo">Back</a>
						&nbsp;&nbsp; <input id="confirmbtn" type="submit" value="Confirm" /></td>
				</tr>
			</table>
		</form:form>
	</div>

</body>

</html>