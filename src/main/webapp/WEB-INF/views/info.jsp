

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>THE CULTURE</title>



<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/culture/resources/assets/vendor/aos/aos.css"
	rel="stylesheet">
<link
	href="/culture/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/culture/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="/culture/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="/culture/resources/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link
	href="/culture/resources/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/culture/resources/assets/css/style.css?ver=1"
	rel="stylesheet">

<!-- =======================================================
  * Template Name: BizLand
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<script>
	function classToggle() {
		var el = document.querySelector('.icon-cards__content');
		el.classList.toggle('step-animation');
	}
	
	
	function search() {
		//조회 카테고리 검색
		let search = document.getElementById("search").value;

		//검색어 조회
		let search_text = document.getElementById("search_text").value.trim();

		//카테고리가 전체보기(all)로 지정되어 있지않은 경우라면 반드시 검색어가 입력되어있어야한다.

		if (search != 'all' && search_text == "") {
			alert("검색어를 입력하세요");
			return;
		}

		location.href = "info.do?search=" + search + "&search_text="
				+ encodeURIComponent(search_text);
	}
	
	
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
					<span>${login.user_name}님<span> <a href="#"
							onclick="location.href='logout.do'">로그아웃</a> <a href="#">고객센터</a>
							<a href="#">마이페이지</a>
				</c:if>

			</div>
		</div>
	</section>

	<!-- ======= Header ======= -->
	<header id="header" class="d-flex align-items-center">
		<div
			class="container d-flex align-items-center justify-content-between">
			<a href="#" onclick="location.href='culture.do'" class="logo"><img
				src="/culture/resources/assets/img/logo.png" alt="" width="130px"></a>
			<nav id="navbar" class="navbar">
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-primary" type="submit">Search</button>
				</form>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
		</div>
	</header>
	<!-- End Header -->


	<div id="menubar" class="navbar container justify-content-left">
		<nav id="navbar" class="navbar">
			<ul>
				<li><a class="nav-link scrollto" href="#"
					onclick="location.href='info.do?genrenm=연극'">연극</a></li>
				<li><a class="nav-link scrollto" href="#"
					onclick="location.href='info.do?genrenm=뮤지컬'">뮤지컬</a></li>
				<li class="dropdown"><a href="#"
					onclick="location.href='info.do?genrenm=음악'"><span>음악</span> <i
						class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a href="#"
							onclick="location.href='info.do?genrenm=서양음악(클래식)'">서양음악(클래식)</a></li>
						<li><a href="#"
							onclick="location.href='info.do?genrenm=한국음악(국악)'">한국음악(국악)</a></li>
						<li><a href="#"
							onclick="location.href='info.do?genrenm=대중음악'">대중음악</a></li>
					</ul></li>
				<li><a class="nav-link scrollto" href="#"
					onclick="location.href='info.do?genrenm=무용'">무용</a></li>
				<li><a class="nav-link scrollto" href="#services"
					onclick="location.href='info.do?genrenm=서커스/마술'">서커스/마술</a></li>
				<li><a class="nav-link scrollto" href="#services"
					onclick="location.href='info.do?genrenm=복합'">복합</a></li>

			</ul>

		</nav>

	</div>




	<main class="container ">
		<div class="row justify-content-center">
			<p id="up">${genrenm}</p>
			
				<!-- <div class="card col-2" style= "margin: 10px 10px;">
							<img src="..." class="card-img-top" alt="...">
							
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
									<p class="card-text">Some quick example text to build on
										the card title and make up the bulk of the card's content.</p>
								</div>
						
						</div> -->

				<div class="wrapper row justify-content-center">
				<c:forEach var="vo" items="${ select }">
					<div class="card col-3">
						<img
							src="${vo.play_poster}" />
						<div class="info">
							<span>${vo.play_prfnm}<span>
							<p></p>
							<p>장소 : ${vo.play_locnm}</p>
							<p>시작날짜 : ${vo.play_from}</p>
							<p>종료날짜 : ${vo.play_to}</p>
							<p>상태 : ${vo.play_prfstate}</p>
							
						</div>
					</div>
					</c:forEach>
					
					<div align="center" style="font-size: 20px;">
					${ pageMenu }
					</div>


			
				</div>
			
		</div>
	</main>






	<!-- ======= Footer ======= -->
	<footer id="footer">

		<!--     <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div> -->

		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>
							THE CULTURE<span>.</span>
						</h3>


						<div class="container py-4">
							<div class="copyright">
								&copy; Copyright <strong><span>THE CULTURE</span></strong>. All
								Rights Reserved
							</div>
							<div class="credits">
								<!-- All the links in the footer should remain intact. -->
								<!-- You can delete the links only if you purchased the pro version. -->
								<!-- Licensing information: https://bootstrapmade.com/license/ -->
								<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
								Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
							</div>
						</div>
	</footer>
	<!-- End Footer -->




	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="/culture/resources/assets/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="/culture/resources/assets/vendor/aos/aos.js"></script>

	<script
		src="/culture/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="/culture/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script
		src="/culture/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="/culture/resources/assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script
		src="/culture/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/culture/resources/assets/js/main.js"></script>
</body>

</html>
