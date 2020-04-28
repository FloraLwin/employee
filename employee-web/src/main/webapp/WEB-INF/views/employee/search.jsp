<!DOCTYPE html>
<html>
<head>
<title>Search Employee</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<style type="text/css">
#header {
	height: 70px;
	background-color: #009BD9;
}

body {
	margin-top: 0;
	padding: 0;
}

#searchbtn {
	background-color: #009BD9;
	color: white;
	padding: 5px;
}
</style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<a style='float: left; margin: 20px; color: white'
				href="${pageContext.request.contextPath}/employee/create">Search
				Employee</a> <a id="homeForm"
				style='float: right; margin: 20px; color: white'
				href="${pageContext.request.contextPath}/">Home</a>
		</div>
	</div>
	<br>
	<br>
	<div>
		<form:form style='margin-left: 200px'
			action="${pageContext.request.contextPath}/employee/searching"
			method="post" modelAttribute="searchForm">
			<form:input path="searchCondition" />
			<form:button id="searchbtn" name="search">Search</form:button>
		</form:form>
		<br> <br>
		<table border="1">
			<tr>
				<th>Employee Id</th>
				<th>Name</th>
				<th>Join Date</th>
				<th>Department</th>
				<th>Position</th>
				<th>Email</th>
				<th>Ph No.</th>
				<th>Actions</th>
			</tr>
			<c:forEach items="${page.content}" var="employee" varStatus="status">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.joinDate}</td>
					<td>${employee.departmentId}</td>
					<td>${employee.position}</td>
					<td>${employee.email}</td>
					<td>${employee.phNo}</td>
					<td><a href="#">Upload</a> <a href="#">Edit</a> <a href="#">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

	</div>
	<div class="container " style="text-align: center">
		<div class="paginationPart">
			<t:pagination page="${page}" outerElementClass="pagination"
				maxDisplayCount="5" criteriaQuery="${f:query(searchForm)}" />
		</div>
		<div>
			<fmt:formatNumber value="${page.totalElements}" />
			results
		</div>
		<div>${f:h(page.number + 1) }/${f:h(page.totalPages)}Pages</div>
	</div>


</body>
</html>