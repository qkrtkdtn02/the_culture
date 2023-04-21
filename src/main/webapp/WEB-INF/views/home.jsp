

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
	
	function info( let info ) {
		alert("info");
		
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


	


	<main id="main">
		<div class="container">
			<hr>
			<h2 >실시간 랭킹</h2>
		</div>
		<figure class="icon-cards mt-3 container">
		
		

		 <div class="icon-cards__content">
			<c:forEach var="vo" items="${ rank }" begin="0" end="4" varStatus="status">
				
				<div
				
					class="icon-cards__item d-flex align-items-center justify-content-center container">
					<div class="align-top" >${status.count}</div>
					<a href="#"><img src="${vo.play_poster}" width="250px"> </a>
				</div>
			</c:forEach>
			
			



		</div> 
		
			<%-- <div class="container">
				<div class="row">
				<div class="col-md-12 text-left">
						<h2 class="heading-section mb-5">Carousel #03</h2>
					</div>
					<div class="col">
						<div class="featured-carousel owl-carousel">
						<c:forEach var="vo" items="${ rank }" begin="0" end="4">
							<div class="item">
								<div class="work">
									<div class="img d-flex align-items-end justify-content-center" style="background-image: url(${vo.play_poster});">
										<div class="text w-100">
											<span class="cat">Web Design</span>
										</div>
									</div>
								</div>
							</div>	
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
	 --%>
	</figure>
		

		<!-- ======= Featured Services Section ======= -->
		<section id="featured-services" class="featured-services">
			<div class="container" data-aos="fade-up">
				<hr>

				<div class="row ">

					<p id="up" class="position-relative">오늘의 추천</p>
					<!-- <div class="col-3 d-flex align-items-center ">
						<div class="icon-box" data-aos="fade-up" data-aos-delay="100">
							<div class="icon d-flex justify-content-center">

								<img
									src="http://www.kopis.or.kr/upload/pfmPoster/PF_PF215281_230320_130653.gif"
									width="110px">
							</div>
							<div class="title" style="text-align: center;">신데렐라
								asdasdasdasdasdasdasdasdasdasdasdasda</div>
							<div class="description">기간 : 와아ㅗ아ㅘ와와왕</div>
							<div class="description">장소 : ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇ</div>
							<div class="description">주최 :ㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㅁ</div>
							<div class="description">장르 : 연극</div>
							<div class="description">별점 : 4.5</div>
						</div>
					</div> -->
					<!-- <div class="menu__container">
						
						<img src="http://www.kopis.or.kr/upload/pfmPoster/PF_PF209905_230117_152330.gif"/>
						<span>공연</span>
					</div>


					<div class="menu__container">
						<img src="http://www.kopis.or.kr/upload/pfmPoster/PF_PF209771_230116_102222.PNG"/>
					</div>

					<div class="menu__container">
						<img src="http://www.kopis.or.kr/upload/pfmPoster/PF_PF204650_221222_131313.jpg"/>
					</div>
					
					<div class="menu__container">
						<img src="http://www.kopis.or.kr/upload/pfmPoster/PF_PF204198_221221_165005.jpg"/>
					</div> -->

					<div class="containers">
					
					<c:forEach var="vo" items="${ today }">
						<div class="cards">
						
							<div class="Box">
								
						<c:if test="${login.user_role_id eq 2}">		
								<a href="#" onclick="location.href='update.do?play_id=${vo.play_id}'">
					    </c:if>
					    <c:if test="${login.user_role_id eq 0}">		
								<a href="#" onclick="location.href='ls.do'">
					    </c:if>
					
					<img
									src="${vo.play_poster}"></a>
							</div>
							<div class="details">
								<h2>Lorem ipsum dolor</h2>
								<p>consectetur adipiscing elit, sed do eiusmod tempor
									incididunt ut labore et dolore magna aliqua. Ut enim ad minim
									veniam, quis nostrud exercitation ullamco laboris nisi ut
									aliquip ex ea commodo consequat. Duis aute irure dolor in
									reprehenderit in voluptate velit esse cillum dolore eu fugiat
									nulla pariatur.</p>
							</div>
						</div>
						</c:forEach>


						
						
					</div>
				</div>

			</div>
		</section>
		<!-- End Featured Services Section -->



	</main>
	<!-- End #main -->

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
