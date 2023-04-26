<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>THE CULTURE</title>



<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="./resources/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="./resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="./resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="./resources/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="./resources/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="./resources/assets/css/style.css?ver=1" rel="stylesheet">


<!-- =======================================================
  * Template Name: BizLand
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<script>
	
</script>

</head>

<body>

	<!-- ======= Top Bar ======= -->
	<section id="topbar" class="d-flex align-items-center">
		<div class="container d-flex justify-content-end">
			<div class="social-links d-none d-md-flex align-items-end">
				<c:if test="${empty login.user_id}">
					<a href="#" onclick="location.href='login_form.do'">로그인</a>
					<a href="#">회원가입</a>
					<a href="#">고객센터</a>
					<a href="#">마이페이지</a>
				</c:if>

				<c:if test="${not empty login.user_id}">
					<span>${login.user_name}님<span> <a href="#" onclick="location.href='logout.do'">로그아웃</a> <a href="#">고객센터</a> <a href="#">마이페이지</a>
				</c:if>

			</div>
		</div>
	</section>

	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center">
		<div class="container d-flex align-items-center justify-content-between">
			<a href="#" onclick="location.href='culture.do'" class="logo"><img src="./resources/assets/img/logo.png" alt="" width="130px"></a>
			<nav class="navbar">
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
			</nav>
		</div>
	</header>
	<!-- End Header -->


	<div id="menubar" class="navbar container justify-content-left">
		<nav class="navbar">
			<ul>
				<li><a class="nav-link scrollto" href="#" onclick="location.href='info.do?genrenm=연극'">연극</a></li>
				<li><a class="nav-link scrollto" href="#" onclick="location.href='info.do?genrenm=뮤지컬'">뮤지컬</a></li>
				<li class="dropdown"><a href="#" onclick="location.href='info.do?genrenm=음악'"><span>음악</span> <i class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a href="#" onclick="location.href='info.do?genrenm=서양음악(클래식)'">서양음악(클래식)</a></li>
						<li><a href="#" onclick="location.href='info.do?genrenm=한국음악(국악)'">한국음악(국악)</a></li>
						<li><a href="#" onclick="location.href='info.do?genrenm=대중음악'">대중음악</a></li>
					</ul></li>
				<li><a class="nav-link scrollto" href="#" onclick="location.href='info.do?genrenm=무용'">무용</a></li>
				<li><a class="nav-link scrollto" href="#services" onclick="location.href='info.do?genrenm=서커스/마술'">서커스/마술</a></li>
				<li><a class="nav-link scrollto" href="#services" onclick="location.href='info.do?genrenm=복합'">복합</a></li>

			</ul>

		</nav>

	</div>

	<main class=" container ">

		<h2>${play.play_prfnm}</h2>
		<div>${play.play_genrenm}</div>
		<hr style="margin-bottom: 50px;">
		<div class=" container row d-flex justify-content-evenly " style="margin-bottom: 50px;">
			<img class="col-3  img-thumbnail rounded float-start" src="${play.play_poster}">
			<table class="col-6" border="1">
				<tr>
					<th>공연기간</th>
					<td>${play.play_from}~${play.play_to}</td>
				</tr>
				<tr>
					<th>공연장소</th>
					<td>${play.play_locnm}</td>
				</tr>
				<tr>
					<th>공연시간</th>
					<td>${info.play_styurl}</td>
				</tr>
				<tr>
					<th>관람연령</th>
					<td>${info.play_prfage}</td>
				</tr>
				<tr>
					<th>티켓가격</th>
					<td>${info.play_ticketprice}</td>
				</tr>
				<tr>
					<th>출연진</th>
					<c:if test="${fn:trim(info.play_prfcast) eq ''}">
						<td>해당사항없음</td>
					</c:if>
					<c:if test="${fn:trim(info.play_prfcast) ne ''}">
						<td>${info.play_prfcast}</td>
					</c:if>

				</tr>
				<tr>
					<th>제작진</th>
					<c:if test="${fn:trim(info.play_prfcrew) eq ''}">
						<td>해당사항없음</td>
					</c:if>
					<c:if test="${fn:trim(info.play_prfcrew) ne ''}">
						<td>${info.play_prfcrew}</td>
					</c:if>

				</tr>
				<tr>
					<th>런타임</th>
					<td>${info.play_prfruntime}</td>
				</tr>

				<tr>
					<th>공연상태</th>
					<td>${play.play_prfstate}</td>
				</tr>

			</table>

		</div>

		<div>
			<button type="button" class="btn btn-dark">목록보기</button>
		</div>


		<div class="btn-group container" role="group" aria-label="Basic radio toggle button group" style="margin-bottom: 30px;">
			<input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked> <label class="btn  btn-outline-danger"
				for="btnradio1">공연 소개</label> <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"> <label
				class="btn  btn-outline-danger" for="btnradio2">공연장 정보</label>
		</div>

		<div class="container d-flex justify-content-center" style="margin-bottom: 30px;">
			<div>
				<img src="${info.play_dtguidance}">

			</div>

		</div>
		
		${loc.loc_id}
		${loc.loc_seatscale}
		${loc.loc_la}
		${loc.loc_lo}
		${loc.loc_tel}
		${loc.loc_addr}
		${loc.loc_url}
		${loc.loc_name }
	</main>
	<!-- End #main -->



	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>
							THE CULTURE<span>.</span>
						</h3>


						<div class="container py-4">
							<div class="copyright">
								&copy; Copyright <strong><span>THE CULTURE</span></strong>. All Rights Reserved
							</div>
							<div class="credits d-flex align-item-left">
								<p>park sang soo</p>
								<p>kim dong joon</p>
								<p>kim si yoon</p>
								<p>kim yu mi</p>
								Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->


	<div id="preloader"></div>
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="./resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="./resources/assets/vendor/aos/aos.js"></script>

	<script src="./resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="./resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="./resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="./resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script src="./resources/assets/vendor/php-email-form/validate.js"></script>
	<!-- Template Main JS File -->
	<script src="./resources/assets/js/main.js"></script>


</body>

</html>
