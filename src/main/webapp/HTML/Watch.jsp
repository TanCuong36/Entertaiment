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
<link rel="stylesheet" type="text/css"
	href="/ASM_JAVA4_PD04237/CSS/watch.css">
</head>
<body>
	<div class="row title" style="background-color: ghostwhite;">
		<div class="col">
			<nav class="navbar navbar-light bg-light">
				<a class="navbar-brand" href="/ASM_JAVA4_PD04237/Index"> <img
					src="https://cdn-icons-png.flaticon.com/512/1384/1384060.png"
					width="30" height="30" class="d-inline-block align-top" alt="">
					ONLINE ENTERTAINMENT
				</a>
			</nav>
		</div>
		<div class="col-6">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Tìm Kiếm"
					aria-label="Amount (to the nearest dollar)">
				<div class="input-group-append">
					<span class="input-group-text"><svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								<path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg></span>
				</div>
				<button type="button" class="btn btn-dark">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-mic" viewBox="0 0 16 16">
							<path
							d="M3.5 6.5A.5.5 0 0 1 4 7v1a4 4 0 0 0 8 0V7a.5.5 0 0 1 1 0v1a5 5 0 0 1-4.5 4.975V15h3a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1h3v-2.025A5 5 0 0 1 3 8V7a.5.5 0 0 1 .5-.5z" />
							<path
							d="M10 8a2 2 0 1 1-4 0V3a2 2 0 1 1 4 0v5zM8 0a3 3 0 0 0-3 3v5a3 3 0 0 0 6 0V3a3 3 0 0 0-3-3z" />
						</svg>
				</button>
			</div>
		</div>
		<div class="col">
			<button type="button" class="btn btn-outline-danger">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-camera-video" viewBox="0 0 16 16">
						<path fill-rule="evenodd"
						d="M0 5a2 2 0 0 1 2-2h7.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 4.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 13H2a2 2 0 0 1-2-2V5zm11.5 5.175 3.5 1.556V4.269l-3.5 1.556v4.35zM2 4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h7.5a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H2z" />
					</svg>
			</button>
			<button type="button" class="btn btn-outline-danger">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-grid-3x3-gap" viewBox="0 0 16 16">
						<path
						d="M4 2v2H2V2h2zm1 12v-2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1zm0-5V7a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1zm0-5V2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1zm5 10v-2a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1zm0-5V7a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1zm0-5V2a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1zM9 2v2H7V2h2zm5 0v2h-2V2h2zM4 7v2H2V7h2zm5 0v2H7V7h2zm5 0h-2v2h2V7zM4 12v2H2v-2h2zm5 0v2H7v-2h2zm5 0v2h-2v-2h2zM12 1a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1h-2zm-1 6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1V7zm1 4a1 1 0 0 0-1 1v2a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1h-2z" />
					</svg>
			</button>
			<button type="button" class="btn btn-outline-danger">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-bell-fill" viewBox="0 0 16 16">
						<path
						d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z" />
					</svg>
			</button>
			<c:choose>
				<c:when test="${sessionScope.check}">
					<div class="btn-group" style="margin-top: 10px">
						<button type="button" class="btn btn-danger dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							${sessionScope.username}</button>
						<div class="dropdown-menu">
							<a href="/ASM_JAVA4_PD04237/Logout" class="dropdown-item">Đăng
								Xuất</a> <a class="dropdown-item" href="#">Change Password</a> <a
								class="dropdown-item" href="#">Profile</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Xin Chào
								${sessionScope.username}</a>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="btn-group" style="margin-top: 10px">
						<button type="button" class="btn btn-danger dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Đăng Nhập</button>
						<div class="dropdown-menu">
							<a href="/ASM_JAVA4_PD04237/Login" class="dropdown-item">Đăng
								Nhập</a> <a class="dropdown-item" href="#">Forgot Password</a> <a
								class="dropdown-item" href="#">Registration</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Xin Chào
								${cookie.username.value}</a>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-8">
				<div class="card" style="width: 100%; border: none;">
					<iframe width="100%" height="462"
						src="https://www.youtube.com/embed/${Video.id}"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<div class="card-body">
						<h1 class="title">
							<strong>${Video.title}</strong>
						</h1>
						<div class="row">
							<div class="col-3">
								<h1 class="title" style="font-size: 14px;">${V}Views</h1>
								<h1 class="title" style="font-size: 14px;">20-09-2001</h1>

							</div>
							<div class="col-9">
								<button type="button" class="btn btn-light">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-scissors" viewBox="0 0 16 16">
											<path
											d="M3.5 3.5c-.614-.884-.074-1.962.858-2.5L8 7.226 11.642 1c.932.538 1.472 1.616.858 2.5L8.81 8.61l1.556 2.661a2.5 2.5 0 1 1-.794.637L8 9.73l-1.572 2.177a2.5 2.5 0 1 1-.794-.637L7.19 8.61 3.5 3.5zm2.5 10a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0zm7 0a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0z" />
										</svg>
									Tạo Video Shorts
								</button>
								<button type="button" class="btn btn-light">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-share-fill"
										viewBox="0 0 16 16">
											<path
											d="M11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5z" />
										</svg>
									Chia Sẻ
								</button>
								<button type="button" class="btn btn-light">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-heartbreak-fill"
										viewBox="0 0 16 16">
											<path fill-rule="evenodd"
											d="M8.931.586 7 3l1.5 4-2 3L8 15C22.534 5.396 13.757-2.21 8.931.586ZM7.358.77 5.5 3 7 7l-1.5 3 1.815 4.537C-6.533 4.96 2.685-2.467 7.358.77Z" />
										</svg>
									50N UnLike
								</button>
								<button type="button" class="btn btn-light">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-heart-fill"
										viewBox="0 0 16 16">
											<path fill-rule="evenodd"
											d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
										</svg>
									50N Like
								</button>
							</div>
						</div>
						<hr>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<c:forEach var="item" items="${Videos}">
					<c:if test="${item.active}">
						<div class="row" style="position: relative;">
							<div class="trai" style="width: 45%;">
								<a href="Watch?ID=${item.id}"><img src="${item.poster}"
									width="100%"></a>
							</div>
							<div class="phai" style="width: 55%;">
								<div style="height: 40%; overflow: hidden;">
									<h2 style="font-size: 14px; margin-left: 5px;">
										<strong>${item.title}</strong>
									</h2>
								</div>
								<div style="margin-left: 5px; margin-top: 5px;">
									<h1 style="font-size: 13px;">TanCuong Studio</h1>
									<h1 style="font-size: 13px; line-height: 5px;">${item.views}
										views • 20-09-2001</h1>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>