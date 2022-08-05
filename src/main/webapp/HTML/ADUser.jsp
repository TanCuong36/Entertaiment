<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#"> <img
				src="/docs/4.0/assets/brand/bootstrap-solid.svg" width="30"
				height="30" class="d-inline-block align-top" alt=""> ONLINE
				ENTERTAINMENT
			</a>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Videos
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Users<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Reports<span
							class="sr-only">(current)</span></a></li>
					<c:choose>
						<c:when test="${sessionScope.check}">
							<div class="btn-group" style="margin-top: 10px">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">${sessionScope.username}(ADMIN)</button>
								<div class="dropdown-menu">
									<a href="/ASM_JAVA4_PD04237/Logout" class="dropdown-item">Đăng
										Xuất</a> <a class="dropdown-item" href="#" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModalCenter">Change
										Password</a> <a class="dropdown-item" href="#">Profile</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Xin Chào
										${sessionScope.username}</a>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="btn-group" style="margin-top: 10px">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Đăng Nhập</button>
								<div class="dropdown-menu">
									<a href="/ASM_JAVA4_PD04237/Login" class="dropdown-item">Đăng
										Nhập</a> <a class="dropdown-item" href="#">Forgot Password</a> <a
										class="dropdown-item" href="Registration">Registration</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">ONLINE ENTERTAINMENT</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</nav>
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">CHANGE
						PASSWORD</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				
				<div class="modal-body">
					<form action="/ASM_JAVA4_PD04237/changePass" method="post">
						<div class="form-row">
							<div class="col-6">
								<strong>Username.?</strong> <input type="text"
									class="form-control" name="id" value="${sessionScope.username}" readonly>
							</div>
							<div class="col-6">
								<strong>Current password.?</strong> <input type="text"
									class="form-control" name="current">
							</div>
							<br> <br> <br> <br>
							<div class="col-6">
								<strong>New password.?</strong> <input type="text"
									class="form-control" name="new">
							</div>
							<div class="col-6">
								<strong>Confirm new password.?</strong> <input type="text"
									class="form-control" name="confirm">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save
								Password</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
		<div class="card">
			<div class="card-header">USERS</div>
			<div class="card-body">
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true">USER EDITION</a> <a
							class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
							href="#nav-profile" role="tab" aria-controls="nav-profile"
							aria-selected="false">USER LIST</a>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<form action="/ASM_JAVA4_PD04237/Admin/Users" method="post">
							<div class="container">
								<div class="row">
									<div class="col-12">
										<br>
										<div class="form-group">
											<label for="exampleInputEmail1">Username</label> <input
												type="text" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" name="iduser"
												${dis?"readonly":""} value="${user.username}" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Password</label> <input
												type="password" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" value="${user.password}"
												name="passuser" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Fullname</label> <input
												type="text" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" value="${user.fullname}"
												name="fullname" required>
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">Email</label> <input
												type="email" class="form-control" id="exampleInputEmail1"
												aria-describedby="emailHelp" value="${user.email}"
												name="email" required>
										</div>
										<div class="form-check">
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="inlineRadioOptions" readonly id="inlineRadio1"
													value="active" ${user.admin?"checked":"disabled"}>
												<label class="form-check-label" for="inlineRadio1">ADMIN</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													${!user.admin?"checked":"disabled"} readonly
													name="inlineRadioOptions" id="inlineRadio2"
													value="inactive"> <label class="form-check-label"
													for="inlineRadio2">USER</label>
											</div>
										</div>
									</div>
								</div>
								<hr>
								<input type="submit" name="btn" class="btn btn-outline-dark"
									value="UPDATE"> <input type="submit" name="btn"
									class="btn btn-outline-danger" value="DELETE">
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel"
						aria-labelledby="nav-profile-tab">
						<div class="container">
							<div class="row">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">USERNAME</th>
											<th scope="col">FULLNAME</th>
											<th scope="col">PASSWORD</th>
											<th scope="col">EMAIL</th>
											<th scope="col">ROLE</th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${Users}">
											<tr>
												<th scope="row">${item.username}</th>
												<td>${item.fullname}</td>
												<td width="10">${item.password}</td>
												<td>${item.email}</td>
												<td>${item.admin?"ADMIN":"USER"}</td>
												<td><a class="btn btn-primary"
													href="edit?btn=edit&id=${item.username}" role="button">EDIT</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>