<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<style>
#btn {
	background-color: #009BD9;
	color: white;
	padding: 10px;
}
</style>
</head>
<body>
	<h2>Successfully Register</h2>
	<form:form modelAttribute="employeeForm"
		action="${pageContext.request.contextPath}/employee/create">
		<form:button id="btn" name="register">Finish</form:button>
	</form:form>
</body>
</html>