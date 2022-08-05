<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet" href="/ASM_JAVA4_PD04237/CSS/formdn.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.js"></script>
</head>
<body>
	<div class="nen">
		<img
			src="https://i1.wp.com/phothongcaodang.fpt.edu.vn/wp-content/uploads/Anh-co-so-dao-tao-Pho-thong-Cao-dang-FPT-Da-Nang-9.jpg?ssl=1"
			id="trangchu">
	</div>
	<div class="login">
		<img src="https://static.ybox.vn/2020/2/0/1582473564897-Poly.png"
			width="300px">
		<h2>Registration</h2>
		<form action="/ASM_JAVA4_PD04237/Registration" method="post">
			<div class="alert alert-danger" role="alert">
				<strong>${thongbao}</strong>
			</div>
			<div class="group">
				<input type="text" required name="txtfullname"
					placeholder="FullName"> <i class="fa fa-user"></i>
			</div>
			<div class="group">
				<input type="text" required name="txtUsername"
					placeholder="Username" check-null> <i class="fa fa-user"></i>
			</div>
			<div class="group">
				<input type="email" name="txtemail" placeholder="Email" poly-number>
				<i class="fa fa-user"></i>
			</div>
			<div class="group">
				<input type="password" required name="txtpass"
					placeholder="Password" maxlength="20"><i class="fa fa-lock"></i>
			</div>
			<button type="submit" style="border-radius: 50px;">
				<i class="fa fa-send"></i> Registration
			</button>
		</form>

		<p class="ss">
			I have an account: <a href="/ASM_JAVA4_PD04237/Login">Sign In</a>
		</p>
		<p class="ss">
			<a href="/ASM_JAVA4_PD04237/Index">FPT Polytechnic</a>
		</p>
	</div>
</body>
</html>