<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
	margin: 0;
	padding: 0;
}

.registration-container {
	max-width: 400px;
	margin: 100px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

input[type="text"], input[type="password"], input[type="email"], input[type="submit"]
	{
	width: 100%;
	padding: 10px;
	margin-top: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

.error {
	color: red;
}
</style>
</head>
<body>
	<div class="registration-container">
		<h2>User Registration</h2>
		<% if (request.getAttribute("error") != null) { %>
		<p class="error"><%=request.getAttribute("error") %></p>
		<% } %>
		<form action="userRegistration" method="post">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required><br> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required><br> <label
				for="firstName">First Name:</label> <input type="text"
				id="firstName" name="firstName" required><br> <label
				for="lastName">Last Name:</label> <input type="text" id="lastName"
				name="lastName" required><br> <label for="email">Email:</label>
			<input type="email" id="email" name="email" required><br>
			<input type="submit" value="Register">
		</form>
		<div>
			<p>
				Already registered? <a href="<%=request.getContextPath()%>/login">Login
					Here</a>
			</p>
		</div>
	</div>
</body>
</html>
