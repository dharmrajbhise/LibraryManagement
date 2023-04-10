<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register | Google</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<style>
	body {
	font-family: Arial, sans-serif;
	background-color: #f1f1f1;
}

.container {
	margin-top: 50px;
}

.card {
	border: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

.card-body {
	padding: 40px;
}

.form-group {
	margin-bottom: 20px;
}

label {
	font-weight: bold;
}

.btn-primary {
	background-color: #4285f4;
	border-color: #4285f4;
}

.btn-primary:hover {
	background-color: #357ae8;
	border-color: #357ae8;
}

.btn-block {
	display: block;
	width: 100%;
}

.text-center {
	text-align: center;
}

hr {
	border: none;
	border-top: 1px solid #f1f1f1;
	margin: 20px 0;
}

	</style>
	
	
	
	
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h1 class="text-center">Create your Account</h1>
						<form action="/success" method="post">
							<div class="form-group">
								<label for="fullname">Full name</label>
								<input type="text" class="form-control" id="fullname" name="full_name" required>
							</div>
							<div class="form-group">
								<label for="username">Username</label>
								<input type="text" class="form-control" id="email" name="username" required>
							</div>
							<div class="form-group">
								<label for="password">Password</label>
								<input type="password" class="form-control" id="password" name="password" required>
							</div>
							<label for="role">Role:</label>
        						<select id="role" name="role">
            					<option value="ADMIN">Admin</option>
            					<option value="USER">User</option>
       	 						</select>
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Create account</button>
							</div>
						</form>
						<hr>
						<p class="text-center">Already have an account? <a href="#">Sign in</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>