<%@page import="Model.DTO"%>
<%@page import="Model.songinfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/playListDetail.css">
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<title>Document</title>
</head>

<body>
	<%
	String pname = request.getParameter("pname");
	DAO dao = new DAO();
	ArrayList<songinfoDTO> listDetail = dao.pDetail(pname);

	DTO info = (DTO) session.getAttribute("info");

	%>
	<main>
		<div class="p-3 mb-2" id="top">
			<h1 id="pitch">내 음역대</h1>
			<a href="./playList.jsp">
				<h1 id="senti">
					<img src="img/facebook.png" id="logo"> Senti
				</h1>
			</a>
		</div>
		<button type="button" class="bi bi-arrow-left fs-1" aria-label="Close"
			onclick="location.href='playList.jsp'"></button>
		<br>
		<div class="shadow p-3 mb-5 bg-body rounded" id="main">
			<img id="playListThumbNail" src="img/add.png" alt="">
			<div class="d-flex justify-content-between">
				<strong class="text-gray-dark" id="playListTitle"><%= pname %></strong>
				<!-- 재생목록 수정  -->
				<form class="playListTitleUpdate hidden" action="">
					<input id="playListTitleUpdateInput"
						class="form-control me-2 d-inline-block" type="search"
						name="search" placeholder="" aria-label="Search"> <input
						id="playListTitleUpdateSubmit" type="submit"
						class="btn btn-outline-primary d-inline-block" value="입력"></input>
				</form>
			</div>
			<div class="d-flex justify-content-between">
				<span class="d-block" id="">노래 : 0곡</span>
			</div>
			<div>
				<a id="musicPlus" href="musicSearch.jsp">
					<button type="button" class="bi bi-plus-lg fs-1" title="노래 추가"></button>
				</a>
				<button type="button" class="bi bi-pencil fs-2" id="btnUpdate"
					title="재생목록이름 수정"></button>

				<!-- 재생목록 삭제 버튼 -->
				<button type="button" class="bi bi-x-lg fs-2" data-bs-toggle="modal"
					data-bs-target="#playListDelete"></button>

				<!-- 재생목록 삭제 모달 -->
				<div class="modal fade" id="playListDelete" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">플레이리스트 삭제</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">정말로 삭제하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger">삭제</button>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<hr>
		<!-- 노래 -->
		<%
		for (int i = 0; i < listDetail.size(); i++) {
		%>
		<div id="music" class="my-1 p-1 bg-body rounded shadow-sm">
			<div class="d-flex text-muted pt-3">
				<a href=""> <img
					class="bd-placeholder-img flex-shrink-0 me-2 rounded"
					src="<%=listDetail.get(i).getAlbumimg()%>" id="musicAdd">
				</a>
				<div class="pb-3 mb-0 small lh-sm w-100">
					<div class="d-flex justify-content-between">
						<a href=""> <strong class="text-gray-dark" id="title"><%=listDetail.get(i).getTitle()%></strong>
						</a>
					</div>
					<span class="d-block" id="singer" style="float: left;"><%=listDetail.get(i).getSinger()%></span>
					<span class="d-block" id="singer" style="float: left;">&nbsp﻿·&nbsp﻿</span>
					<span class="d-block" id="times" style="float: left;">노래길이</span>
				</div>
				<div>
					<button id="musicDelete" class="bi bi-x-lg fs-1 hidden musicDelete"></button>
				</div>
			</div>
		</div>
		<% } %>
		<!-- 하단 네비게이션 -->
		<ul class="nav fixed-bottom nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="playList.jsp">플레이리스트</a></li>
			<li class="nav-item"><a class="nav-link" href="vocalTest.jsp">음역대측정</a></li>
			<li class="nav-item"><a class="nav-link" href="musicSearch.jsp">노래검색</a>
			</li>
			<li class="nav-item"><a class="nav-link">프로필</a></li>
		</ul>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/playListDetail.js"></script>
</body>

</html>