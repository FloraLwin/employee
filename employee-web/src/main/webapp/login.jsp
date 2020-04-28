<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<style>
#loginbtn {
	background-color: #009BD9;
	color: white;
	padding: 5px;
}
</style>
<body>
	<div id="wrapper">
		<!--  <h3 id="four">Login with Username and Password</h3> -->

		<c:if test="${param.containsKey('error')}">
			<t:messagesPanel messagesType="error"
				messagesAttributeName="SPRING_SECURITY_LAST_EXCEPTION" />
		</c:if>

		<form:form id="one" action="${pageContext.request.contextPath}/login"
			style="border: 1px solid #009BD9;width:370px;margin-left:30%;padding:5px">
			<table id="two">
				<tr>
					<td><label for="username">UserID:</label></td>
					<td><input type="text" id="username" name="username"
						value='demo'></td>
				</tr>
				<tr>
					<td><label for="password">Password:</label></td>
					<td><input type="password" id="password" name="password"
						value="demo" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input id="loginbtn" name="submit" type="submit"
						value="Login" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>