<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
.form-div {
  margin-top: 100px;
  background: #fff;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}

.form-control:focus {
  box-shadow: none;
  border-color: #BA68C8;
}

.btn-primary {
  background-color: #BA68C8;
  border-color: #BA68C8;
}

.btn-primary:hover {
  background-color: #8E24AA;
  border-color: #8E24AA;
}


</style>

</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-4 offset-md-4 form-div">
        <form action="/login" method="post">
          <h3 class="text-center">Login</h3>

          <div class="form-group">
            <label for="username">Username or Email</label>
            <input type="text" name="username" class="form-control form-control-lg" required>
          </div>

          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control form-control-lg" required>
          </div>

          <div class="form-group">
            <button type="submit" name="login-btn" class="btn btn-primary btn-block btn-lg">Login</button>
          </div>

        </form>
      </div>
    </div>
  </div>
</body>
</html>