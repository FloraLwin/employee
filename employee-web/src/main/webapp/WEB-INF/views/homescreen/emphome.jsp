<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">


<title>Insert title here</title>
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

#homeForm {
	float: right;
	margin: 20px;
}

#homebtn {
	width: 80px;
	height: 30px;
}

#emplink {
	background-color: blue;
	padding: 10px;
	color: white;
	border-radius: 5px;
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
				href="${pageContext.request.contextPath}/empHome">Search
				Employee</a>
			<form:form id="homeForm" action="${pageContext.request.contextPath}/">
				<button id="homebtn" type="submit">Home</button>
			</form:form>
		</div>
	</div>
	<hr>
	<div id="content">
		<div id="title">
			<a id="emplink"
				href="${pageContext.request.contextPath}/employee/create">Register</a>
			<a id="emplink"
				href="${pageContext.request.contextPath}/search">Search</a>
		</div>
	</div>

</body>
</html>