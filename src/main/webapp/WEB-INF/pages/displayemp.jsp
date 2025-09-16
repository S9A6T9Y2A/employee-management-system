<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<h2 style="color: green; text-align: center">Display Employee
		Record</h2>
	<div class="container card" style="width: 60rem;">
		<div class="bg-light">
			<div class="container py-2">
				<div class="search-wrapper">
					<div class="search-box">
						<form action="search" method="get">
							<input type="text" name="name" class="search-input form-control"
								placeholder="Search anything..."> <i
								class="fas fa-search search-icon"></i>
								<div>
								<button type="submit">Search</button>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<c:choose>
			<c:when test="${!empty EmployeeList}">
				<table class="table table-hover table table-bordered">
					<tr>
						<th>Name</th>
						<th>Email</th>
						<th>Department</th>
						<th>Salary</th>
						<th>Option</th>
					</tr>
					<c:forEach var="emp" items="${EmployeeList}">
						<tr>
							<td>${emp.name}</td>
							<td>${emp.email}</td>
							<td>${emp.department}</td>
							<td>${emp.salary}</td>
							<td><a href="edit/${emp.id}" class="btn btn-outline-primary">Edit</a>
								<a href="delete/${emp.id}" class="btn btn-outline-danger"
								onclick="return Confirm('Are you sure you want delete this id')">Delete</a>

							</td>
						</tr>
					</c:forEach>
				</table>
			</c:when>
			<c:otherwise>
				<div class="container alert alert-danger p-3" role="alert">
					<p>Employee Record not Found</p>
				</div>
			</c:otherwise>
		</c:choose>
	</div>

	<div>
		<a href="./" class="btn btn-outline-warning">Home</a>
	</div>


</body>
</html>