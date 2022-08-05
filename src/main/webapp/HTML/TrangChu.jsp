<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ONLINE ENTERTAINMENT</title>
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
	href="/ASM_JAVA4_PD04237/CSS/index.css">

</head>
<body>
	<div class="row title" style="background-color: ghostwhite;">
		<div class="col">
			<nav class="navbar navbar-light bg-light">
				<a class="navbar-brand" href="/ASM_JAVA4_PD04237/Index"><img
					src="https://cdn-icons-png.flaticon.com/512/1384/1384060.png"
					width="30" height="30" class="d-inline-block align-top" alt="">
					ONLINE ENTERTAINMENT </a>
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
			<!-- Example single danger button -->
			<c:choose>
				<c:when test="${sessionScope.check}">
					<div class="btn-group" style="margin-top: 10px">
						<button type="button" class="btn btn-danger dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							${sessionScope.username}</button>
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
						<button type="button" class="btn btn-danger dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Đăng Nhập</button>
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
		</div>
	</div>
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
									class="form-control" name="id" value="${sessionScope.username}"
									readonly>
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
	<div class="row">
		<aside class="col-2">
			<ul class="list-group">
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; height: 25; float: left;">
						<g class="style-scope yt-icon">
						<path d="M4,10V21h6V15h4v6h6V10L12,3Z" class="style-scope yt-icon"></path></g></svg>
					<a href="#" class="click_aside" style="text-decoration: none;">Trang
						Chủ</a></li>
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path
							d="M9.8,9.8l-3.83,8.23l8.23-3.83l3.83-8.23L9.8,9.8z M13.08,12.77c-0.21,0.29-0.51,0.48-0.86,0.54 c-0.07,0.01-0.15,0.02-0.22,0.02c-0.28,0-0.54-0.08-0.77-0.25c-0.29-0.21-0.48-0.51-0.54-0.86c-0.06-0.35,0.02-0.71,0.23-0.99 c0.21-0.29,0.51-0.48,0.86-0.54c0.35-0.06,0.7,0.02,0.99,0.23c0.29,0.21,0.48,0.51,0.54,0.86C13.37,12.13,13.29,12.48,13.08,12.77z M12,3c4.96,0,9,4.04,9,9s-4.04,9-9,9s-9-4.04-9-9S7.04,3,12,3 M12,2C6.48,2,2,6.48,2,12s4.48,10,10,10s10-4.48,10-10S17.52,2,12,2 L12,2z"
							class="style-scope yt-icon"></path></g></svg> <a href="#"
					class="click_aside" style="text-decoration: none;">Khám Phá</a></li>
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; 25;">
						<g height="24" viewBox="0 0 24 24" width="24"
							class="style-scope yt-icon">
						<path
							d="M10 14.65v-5.3L15 12l-5 2.65zm7.77-4.33c-.77-.32-1.2-.5-1.2-.5L18 9.06c1.84-.96 2.53-3.23 1.56-5.06s-3.24-2.53-5.07-1.56L6 6.94c-1.29.68-2.07 2.04-2 3.49.07 1.42.93 2.67 2.22 3.25.03.01 1.2.5 1.2.5L6 14.93c-1.83.97-2.53 3.24-1.56 5.07.97 1.83 3.24 2.53 5.07 1.56l8.5-4.5c1.29-.68 2.06-2.04 1.99-3.49-.07-1.42-.94-2.68-2.23-3.25zm-.23 5.86l-8.5 4.5c-1.34.71-3.01.2-3.72-1.14-.71-1.34-.2-3.01 1.14-3.72l2.04-1.08v-1.21l-.69-.28-1.11-.46c-.99-.41-1.65-1.35-1.7-2.41-.05-1.06.52-2.06 1.46-2.56l8.5-4.5c1.34-.71 3.01-.2 3.72 1.14.71 1.34.2 3.01-1.14 3.72L15.5 9.26v1.21l1.8.74c.99.41 1.65 1.35 1.7 2.41.05 1.06-.52 2.06-1.46 2.56z"
							class="style-scope yt-icon"></path></g></svg> <a href="#"
					class="click_aside" style="text-decoration: none;">Shorts</a></li>
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path
							d="M10,18v-6l5,3L10,18z M17,3H7v1h10V3z M20,6H4v1h16V6z M22,9H2v12h20V9z M3,10h18v10H3V10z"
							class="style-scope yt-icon"></path></g></svg> <a href="#"
					class="click_aside" style="text-decoration: none;">Kênh Đăng Ký</a></li>
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path
							d="M11,7l6,3.5L11,14V7L11,7z M18,20H4V6H3v15h15V20z M21,18H6V3h15V18z M7,17h13V4H7V17z"
							class="style-scope yt-icon"></path></g></svg> <a href="#"
					class="click_aside" style="text-decoration: none;">Thư Viện</a></li>
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path d="M10,8l6,4l-6,4V8L10,8z M21,3v18H3V3H21z M20,4H4v16h16V4z"
							class="style-scope yt-icon"></path></g></svg> <a href="#"
					class="click_aside" style="text-decoration: none;">Video Của
						Bạn</a></li>
				<li class="list-group-item"><svg viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet" focusable="false"
						class="style-scope yt-icon"
						style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path
							d="M14.97,16.95L10,13.87V7h2v5.76l4.03,2.49L14.97,16.95z M12,3c-4.96,0-9,4.04-9,9s4.04,9,9,9s9-4.04,9-9S16.96,3,12,3 M12,2c5.52,0,10,4.48,10,10s-4.48,10-10,10S2,17.52,2,12S6.48,2,12,2L12,2z"
							class="style-scope yt-icon"></path></g></svg> <a href="#"
					class="click_aside" style="text-decoration: none;">Xem Sau</a></li>
				<c:if test="${sessionScope.check}">
					<li class="list-group-item"><svg viewBox="0 0 24 24"
							preserveAspectRatio="xMidYMid meet" focusable="false"
							class="style-scope yt-icon"
							style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path
								d="M14.97,16.95L10,13.87V7h2v5.76l4.03,2.49L14.97,16.95z M22,12c0,5.51-4.49,10-10,10S2,17.51,2,12h1c0,4.96,4.04,9,9,9 s9-4.04,9-9s-4.04-9-9-9C8.81,3,5.92,4.64,4.28,7.38C4.17,7.56,4.06,7.75,3.97,7.94C3.96,7.96,3.95,7.98,3.94,8H8v1H1.96V3h1v4.74 C3,7.65,3.03,7.57,3.07,7.49C3.18,7.27,3.3,7.07,3.42,6.86C5.22,3.86,8.51,2,12,2C17.51,2,22,6.49,22,12z"
								class="style-scope yt-icon"></path></g></svg> <a href="#"
						class="click_aside" style="text-decoration: none;">Video Đã
							Xem</a></li>
					<li class="list-group-item"><svg viewBox="0 0 24 24"
							preserveAspectRatio="xMidYMid meet" focusable="false"
							class="style-scope yt-icon"
							style="pointer-events: none; width: 25; height: 25;">
						<g class="style-scope yt-icon">
						<path
								d="M18.77,11h-4.23l1.52-4.94C16.38,5.03,15.54,4,14.38,4c-0.58,0-1.14,0.24-1.52,0.65L7,11H3v10h4h1h9.43 c1.06,0,1.98-0.67,2.19-1.61l1.34-6C21.23,12.15,20.18,11,18.77,11z M7,20H4v-8h3V20z M19.98,13.17l-1.34,6 C18.54,19.65,18.03,20,17.43,20H8v-8.61l5.6-6.06C13.79,5.12,14.08,5,14.38,5c0.26,0,0.5,0.11,0.63,0.3 c0.07,0.1,0.15,0.26,0.09,0.47l-1.52,4.94L13.18,12h1.35h4.23c0.41,0,0.8,0.17,1.03,0.46C19.92,12.61,20.05,12.86,19.98,13.17z"
								class="style-scope yt-icon"></path></g></svg> <a
						href="/ASM_JAVA4_PD04237/Index/Favorite" class="click_aside"
						style="text-decoration: none;">Video Đã Thích</a></li>
				</c:if>
			</ul>
		</aside>
		<article class="card col-10">
			<div>
				<div class="card-header">
					<button type="button" class="btn btn-outline-dark">Tất Cả</button>
					<button type="button" class="btn btn-outline-dark">Âm Nhạc</button>
					<button type="button" class="btn btn-outline-dark">Danh
						Sách Kết Hợp</button>
					<button type="button" class="btn btn-outline-dark">Đọc Rap</button>
					<button type="button" class="btn btn-outline-dark">Trò
						Chơi</button>
					<button type="button" class="btn btn-outline-dark">Hoạt
						Hình</button>
					<button type="button" class="btn btn-outline-dark">Trực
						Tiếp</button>
					<button type="button" class="btn btn-outline-dark">Bóng Đá</button>
					<button type="button" class="btn btn-outline-dark">Trò
						Chơi Hàng Động Phiêu Lưu</button>
				</div>
				<c:choose>
					<c:when test="${favorite}">
						<br>
						<div class="container">
							<div class="row">
								<div class="col-7">
									<c:forEach var="item" items="${list}">
										<div class="row items" style="margin-bottom: 5px;">
											<div class="col-5">
												<span class="badge badge-dark" style="position: absolute;">PD04237</span><a
													href="/ASM_JAVA4_PD04237/Watch?ID=${item.video.id}"><img
													class="card-img-top" src="${item.video.poster}"
													alt="Card image cap"></a>
											</div>
											<div class="col-7">
												<div style="height: 93px; overflow: hidden;">
													<h5 class="card-title">${item.video.title}</h5>
												</div>
												<a
													href="/ASM_JAVA4_PD04237/Index/Favorite/Unlike?idvideo=${item.video.id}"
													class="btn btn-primary">Unlike</a> <a href="#"
													class="btn btn-primary">SHARE</a>
											</div>
										</div>
									</c:forEach>
								</div>
								<div class="col-5">
									<div class="card text-white bg-success mb-3"
										style="max-width: 20rem;">
										<div class="card-header">Header</div>
										<div class="card-body">
											<h5 class="card-title">Success card title</h5>
											<c:forEach var="i" begin="1" end="5">
												Count: <c:out value="${i}"></c:out>
												<br>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>

					</c:when>
					<c:otherwise>
						<div class="row items">
							<c:forEach var="ds" items="${Videos}">
								<c:if test="${ds.active}">
									<div class="card item" style="width: 17rem;">
										<a href="/ASM_JAVA4_PD04237/Watch?ID=${ds.id}"><img class="card-img-top"
											src="${ds.poster}" alt="Card image cap"> </a><span
											style="position: absolute;" class="badge badge-dark">00:53</span>
										<div class="card-body">
											<div
												style="height: 120px; margin-bottom: 10px; overflow: hidden;">
												<h5 class="card-title" style="font-size: 15px;">${ds.title}</h5>
											</div>
											<c:choose>
												<c:when test="${sessionScope.check}">
													<c:choose>
														<c:when test="${list.video.id==ds.id}">
															<a
																href="/ASM_JAVA4_PD04237/Index/Favorite/Unlike?iduser=${sessionScope.username}&idvideo=${item.video.id}"
																class="btn btn-primary">UNLIKE</a>
														</c:when>
														<c:otherwise>
															<a
																href="/ASM_JAVA4_PD04237/Index/Like?idvideo=${ds.id}"
																class="btn btn-primary">LIKE</a>
														</c:otherwise>
													</c:choose>
													<a href="#" class="btn btn-primary">SHARE</a>
												</c:when>
											</c:choose>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item"><a class="page-link" href="#"
									tabindex="-1">First</a></li>
								<c:forEach var="i" begin="1" end="${page}">
									<li class="page-item"><a class="page-link"
										href="/ASM_JAVA4_PD04237/Index/Page?page=${i}">${i}</a></li>
								</c:forEach>
								<li class="page-item"><a class="page-link" href="#">Last</a>
								</li>
							</ul>
						</nav>
					</c:otherwise>
				</c:choose>
			</div>
		</article>
	</div>
</body>
</html>