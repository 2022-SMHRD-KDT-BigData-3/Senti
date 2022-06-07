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
<link rel="stylesheet" href="css/vocalTest.css">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<title>Document</title>
<script>
	Swal.fire({
		title : '<strong>HTML <u>example</u></strong>',
		icon : 'info',
		html : 'You can use <b>bold text</b>, '
				+ '<a href="//sweetalert2.github.io">links</a> '
				+ 'and other HTML tags',
		showCloseButton : true,
		showCancelButton : true,
		focusConfirm : false,
		confirmButtonText : '<i class="fa fa-thumbs-up"></i> Great!',
		confirmButtonAriaLabel : 'Thumbs up, great!',
		cancelButtonText : '<i class="fa fa-thumbs-down"></i>',
		cancelButtonAriaLabel : 'Thumbs down'
	})
</script>
</head>

<body>
	<div class="p-3 mb-2" id="top">
		<h1 id="pitch">내 음역대</h1>
		<h1 id="senti">
			<img src="img/facebook.png" id="logo"> Senti
		</h1>
	</div>
	<br>
	<h1 class="display-5 fw-bold lh-1 mb-1" style="text-align: center;">음역대
		테스트</h1>
	<div class="container col-xxl-8 px-4 py-5">
		<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
			<div class="controls__btns">
				<button id="btnLow">최저 음역</button>
				<button id="btnHigh">최고 음역</button>
			</div>
			<!-- 최저음 테스트 -->
			<div class="vocalTestLow">
				<!-- 비디오  -->
				<video id="vocalTestLowVideo" src="video/low.mp4" controls></video>
			</div>
			<!-- 최고음 테스트 -->
			<div class="vocalTestHigh hidden">
				<!-- 비디오 -->
				<video id="vocalTestHighVideo" src="video/high.mp4" controls></video>
			</div>
			<form id="note-selector">
				<select id="low-note-select">
					<option style="display: none;" selected="selected">Your
						Low Note</option>
					<option value="25">C3</option>
					<option value="27">D3</option>
					<option value="29">E3</option>
					<option value="30">F3</option>
					<option value="32">G3</option>
					<option value="34">A3</option>
					<option value="36">B3</option>
					<option value="37">C4</option>
					<option value="39">D4</option>
					<option value="41">E4</option>
					<option value="42">F4</option>
					<option value="44">G4</option>
				</select><select id="high-note-select">
					<option style="display: none;" selected="selected">Your
						High Note</option>
					<option value="37">C4</option>
					<option value="39">D4</option>
					<option value="41">E4</option>
					<option value="42">F4</option>
					<option value="44">G4</option>
					<option value="46">A4</option>
					<option value="48">B4</option>
					<option value="49">C5</option>
					<option value="51">D5</option>
					<option value="53">E5</option>
					<option value="54">F5</option>
					<option value="56">G5</option>
					<option value="58">A5</option>
					<option value="60">B5</option>
					<option value="61">C6</option>
				</select>
			</form>
			<div class="col-lg-6">
				<div class="d-grid gap-2 d-md-flex justify-content-md-start">
					<button type="button" class="btn btn-primary btn-lg px-4 me-md-2">직접
						테스트</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 하단 네비게이션 -->
	<div class="nav fixed-bottom">
		<ul class="nav fixed-bottom nav-pills justify-content-center">
			<li class="nav-item"><a class="nav-link" href="playList.jsp">플레이리스트</a></li>
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="vocalTest.jsp">음역대측정</a></li>
			<li class="nav-item"><a class="nav-link" href="musicSearch.jsp">노래검색</a>
			</li>
			<li class="nav-item"><a class="nav-link">프로필</a></li>
		</ul>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="js/vocalTestIng.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>