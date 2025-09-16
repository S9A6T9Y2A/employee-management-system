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
	<h2 class="text-center text-secondary">Update Employee Details</h2>
	<div class="container card p-3" style="width:50rem">
	<form action="${pageContext.request.contextPath}/updateEmployee" method="post">
		<input type="hidden" name="id" placeholder="Enter id" value="${updateId.id}" required class="form-control">
		<label>Name</label>
		<input type="text" name="name" placeholder="Enter name" value="${updateId.name}" required class="form-control">
		<label>Email</label>
		<input type="email" name="email" placeholder="Enter email" value="${updateId.email}" required class="form-control">
		<label>Department</label>
		<input type="text" name="department" placeholder="Enter department" value="${updateId.department}" required class="form-control">
		<label>Salary</label>
		<input type="number" name="salary" placeholder="Enter salary" value="${updateId.salary}" required class="form-control">
		<div class="pt-3">
			<button type="submit" class="btn btn-outline-success">Update</button>
		</div>
	</form>
	</div>

</body>
</html>

