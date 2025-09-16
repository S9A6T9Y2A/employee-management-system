<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
	crossorigin="anonymous">
</head>
<body>
	<h3
		style="color: pink; text-align: center; text-decoration: underline;">Add
		Employee</h3>

	<div class="container card p-3" style="width:60rem;">
		<form action="addstudent" method="post">
		<label>Name</label>
		<input type="text" name="name" placeholder="Enter name" required class="form-control">
		<label>Email</label>
		<input type="email" name="email" placeholder="Enter email" required class="form-control">
		<label>Department</label>
		<input type="text" name="department" placeholder="Enter department" required class="form-control">
		<label>Price</label>
		<input type="number" name="salary" placeholder="Enter price" required class="form-control">
			<div class="pt-3">
				<button type="submit" class="btn btn-outline-primary">Add</button>
			</div>
		</form>
	</div>


</body>
</html>