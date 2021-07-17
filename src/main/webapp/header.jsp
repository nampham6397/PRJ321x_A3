<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2">
			<h2>PRJ321x</h2>
			<h6>Welcome to my Website</h6>
		</div>
		<div class="col-md-10">
			<form class="input-group mt-3" action="${pageContext.servletContext.contextPath}/Search" method="get">
				<div class="w-auto">
					<select name="type" class="custom-select">
						<option selected>Categories</option>
						<option value="Smart phone">Iphone</option>
						<option value="Laptop">Samsung</option>
						<option value="Accessories">LG</option>
					</select>
				</div>
				<input type="text" name="s" placeholder="What are you looking for?"
					class="form-control" aria-label="Text input with dropdown button">
				<div class="input-group-append">
					<button type="submit" class="btn btn-link text-warning">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<div class="col-md-12 mt-2">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!--left menu-->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="${pageContext.servletContext.contextPath}">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="infoProduct.jsp">Product</a></li>
			<li class="nav-item"><a class="nav-link" href="#">About us</a></li>
		</ul>
		<!--right menu-->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Register</a></li>
		</ul>
	</nav>
</div>
</body>
</html>