<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css"> --%>
<title>New Employee</title>
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

#registerbtn {
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
			action="${pageContext.request.contextPath}/employee/confirm"
			method="post">
			<table>
				<tr>
					<td><form:label path="id">Employee ID</form:label></td>
					<td><form:input path="id" /></td>
					<td><form:label path="departmentId">Department</form:label></td>
					<td><form:select path="departmentId">
							<form:option value="" label="--Select--" />
							<form:options items="${CL_DEPARTMENT}" />
						</form:select></td>
				</tr>

				<tr>
					<td><form:label path="name">Employee Name</form:label></td>
					<td><form:input path="name" /></td>
					<td><form:label path="joinDate">Join Date</form:label></td>
					<td><form:input path="joinDate" /></td>
				</tr>

				<tr>
					<td><form:label path="birthDate">DOB</form:label></td>
					<td><form:input path="birthDate" /></td>
					<td><form:label path="position">Position</form:label></td>
					<td><form:select path="position">
							<form:option value="" label="--Select--" />
							<form:options items="${CL_POSITION}" />
						</form:select></td>
				<tr>
					<td><form:label path="gender">Gender</form:label></td>
					<td><form:radiobutton path="gender" value="Male" /> Male <form:radiobutton
							path="gender" value="Female" /> Female</td>
					<td><form:label path="email">Email</form:label></td>
					<td><form:input path="email" /></td>
				</tr>

				<tr>
					<td><form:label path="maritalStatus">Marital Status</form:label></td>
					<td><form:radiobutton path="maritalStatus" value="Single" />
						Single <form:radiobutton path="maritalStatus" value="Married" />
						Married</td>
					<td><form:label path="phNo">Phone No.</form:label></td>
					<td><form:input path="phNo" /></td>
				</tr>
				<tr>
					<td><form:label path="japanId">Japanese Level</form:label></td>
					<td><form:select path="japanId">
							<form:option value="" label="--Select--" />
							<form:options items="${CL_JAPANESELEVEL}" />
						</form:select></td>
					<td></td>
					<td><form:button id="registerbtn" name="register">Register</form:button></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>

</html>