<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
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
}

#title {
	margin-left: 50px;
}

#logoutForm {
	float: right;
	margin: 20px;
}

#logoutbtn {
	width: 80px;
	height: 30px;
}

#emplink {
	background-color: blue;
	padding: 10px;
	color: white;
	border-radius: 5px;
}

#paylink {
	margin-top: 40px;
	margin-left: 50px;
}

body {
	margin-top: 0;
	padding: 0;
}
</style>

</head>

<sec:authentication property="principal.account" var="account" />

<body>
	<div id="wrapper">
		<div id="header">

			<a style='float: left; margin: 20px'
				href="${pageContext.request.contextPath}/">Welcome</a>
			<form:form id="logoutForm"
				action="${pageContext.request.contextPath}/logout">
				<button id="logoutbtn" type="submit">Logout</button>
			</form:form>
		</div>
	</div>
	<hr>
	<div id="content">
		<div id="title">
			<a id="emplink" href="${pageContext.request.contextPath}/emphome">Employee
				Management</a>

		</div>
		<div id="paylink">
			<a id="emplink">Payroll Management</a>
		</div>
	</div>
</body>
</html>