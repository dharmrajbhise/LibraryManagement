<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	
	<style>
	body {
	font-family: Arial, sans-serif;
	background-color: #DDFFBB;
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
	border-color: #DDFFBB;
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
<!-- Navbar -->

<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Library Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/admin">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/addNew">Add New Book</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin/allBooks">All Books</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/logout">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Navbar End -->

	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h1 class="text-center">Add Book</h1>
						<form action="/admin/BookAdded" method="post">
							<div class="form-group">
								<label for="name">Book Name</label>
								<input type="text" class="form-control" id="name" name="name" required>
							</div>
							<div class="form-group">
								<label for="Author">Author</label>
								<input type="text" class="form-control" id="Author" name="author" required>
							</div>
							<div class="form-group">
								<label for="ISBN">ISBN</label>
								<input type="number" class="form-control" id="isbn" name="isbn" required>
							</div>
							<div class="form-group">
								<label for="year">Published Year</label>
								<input type="number" class="form-control" id="p_year" name="p_year" required>
							</div>
							<div class="form-group">
								<label for="remark">Remark</label>
								<input type="text" class="form-control" id="remark" name="remarks" required>
							</div>
					
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">ADD</button>
							</div>
						</form>
						<hr>
						<p class="text-center">Already have an account? <a href="#">Sign in</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>