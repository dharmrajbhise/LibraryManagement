<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<title>All books</title>
<style>

body{
	background-color: #DDFFBB;
}
.table{
	margin-top: 50px;
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
<table class="table table-warning">
  <thead>
    <tr>
      <th class="table-danger" scope="col">Id</th>
      <th class="table-danger" scope="col">Book Name</th>
      <th class="table-danger" scope="col">Author</th>
      <th class="table-danger" scope="col">ISBN</th>
      <th class="table-danger" scope="col">Published Year</th>
      <th class="table-danger" scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach var="e" items="${book }">
    <tr>
      <th>${e.id }</th>
      <td>${e.name }</td>
      <td>${e.author }</td>
      <td>${e.isbn }</td>
      <td>${e.p_year }</td>
      <td>
      <a href="/admin/deleteBook${e.id }" class="btn btn-danger">Delete</a>
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>