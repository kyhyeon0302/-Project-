<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<c:set var="loginOutLink"
	value="${sessionScope.id==null ? '/login/login' : '/login/logout'}" />
<c:set var="loginOut"
	value="${sessionScope.id==null ? 'Login' : 'Logout'}" />

<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<html>

<head>
<meta charset="UTF-8">
<title>Yonsei University Team6</title>
<link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
</head>
<body>
	<div id="menu">
		<ul>
			<li id="logo">Yonsei University</li>
			<li><a href="<c:url value='/'/>">Home</a></li>
			<li><a href="<c:url value='/board/list'/>">Board</a></li>
			<li><a href="<c:url value='${loginOutLink}'/>">${loginOut}</a></li>
			<li><a href="<c:url value='/register/add'/>">Sign in</a></li>
			<li><a href=""><i class="fas fa-search small"></i></a></li>
		</ul>
	</div>
</body>





<head>
<title>사회기반시스템종합설계 Project</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />

</head>


<body class="homepage is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<!-- Logo -->
			<h1>
				<a href="index.html">Civil Engineering Projects Using Artificial
					Intelligence</a>
			</h1>

			<!-- Banner -->
			<section id="banner">
				<header>
					<h2>Concrete Crack Detection & Crack Map</h2>
					<p>YOLO5 & CNN & ContextCapture</p>
				</header>
			</section>

			<!-- Main -->
			<section id="main">
				<div class="container">
					<div class="row">
						<div class="col-12">

							<!-- Portfolio -->
							<section>
								<header class="major">
									<h2>Our Project</h2>
								</header>
								<div class="row">
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/YOLO1.png" alt="" /></a>
											<header>
												<h3>YOLO5을 이용한 Concrete Crack Detection</h3>
											</header>
											<p>YOLO : 단일 신경망 모델을 사용하여 단 한번의 이미지 해석을 통해 물체를 탐지하며 다양한
												이미지 분류에 사용되는 딥러닝 기반의 객체 탐지 알고리즘 중 하나</p>
											<footer>
												<form method="post" enctype="multipart/form-data">
													<div>
														<a href="#" target="_blank" class="button alt"> Input
															image <label for="chooseFile"> </label>
														</a> <input type="file" id="chooseFile" name="chooseFile"
															accept="image/*" onchange="loadFile(this)">
													</div>
												</form>

											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/CNN1.png" alt="" /></a>
											<header>
												<h3>CNN을 이용한 Concrete Crack Detection</h3>
											</header>
											<p>CNN : 심층 신경망 모델을 사용하여 이미지의 일정 지역의 특성과 지역 간의 패턴을 분석해
												물체를 탐지하는 딥러닝 기반 객체 탐지 알고리즘 중 하나</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">Input Image</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/cap1.png" alt="" /></a>
											<header>
												<h3>ContextCapture를 이용한 균열 지도</h3>
											</header>
											<p>Crack Map : 콘크리트 균열의 위치와 특징을 3차원 모델을 통해 한 눈에 파악할 수 있는
												균열 중심 3D 지도이며 기존의 기술보다 구조물 균열 파악 및 관리 용이</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">Find out more</a></li>
												</ul>
											</footer>
										</section>
									</div>


								</div>
								<div class="col-12">

									<!-- Blog -->
									<section>
										<header class="major">
											<h2>The Blog</h2>
										</header>
										<div class="row">
											<div class="col-6 col-12-small">
												<section class="box">
													<a href="#" class="image featured"><img
														src="images/pic08.jpg" alt="" /></a>
													<header>
														<h3>Magna tempus consequat</h3>
														<p>Posted 45 minutes ago</p>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed et
														blandit consequat sed veroeros lorem et blandit adipiscing
														feugiat phasellus tempus hendrerit, tortor vitae mattis
														tempor, sapien sem feugiat sapien, id suscipit magna felis
														nec elit. Class aptent taciti sociosqu ad litora torquent
														per conubia nostra, per inceptos lorem ipsum dolor sit
														amet.</p>
													<footer>
														<ul class="actions">
															<li><a href="#"
																class="button icon solid fa-file-alt">Continue
																	Reading</a></li>
															<li><a href="#"
																class="button alt icon solid fa-comment">33 comments</a></li>
														</ul>
													</footer>
												</section>
											</div>
											<div class="col-6 col-12-small">
												<section class="box">
													<a href="#" class="image featured"><img
														src="images/pic09.jpg" alt="" /></a>
													<header>
														<h3>Aptent veroeros aliquam</h3>
														<p>Posted 45 minutes ago</p>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed et
														blandit consequat sed veroeros lorem et blandit adipiscing
														feugiat phasellus tempus hendrerit, tortor vitae mattis
														tempor, sapien sem feugiat sapien, id suscipit magna felis
														nec elit. Class aptent taciti sociosqu ad litora torquent
														per conubia nostra, per inceptos lorem ipsum dolor sit
														amet.</p>
													<footer>
														<ul class="actions">
															<li><a href="#"
																class="button icon solid fa-file-alt">Continue
																	Reading</a></li>
															<li><a href="#"
																class="button alt icon solid fa-comment">33 comments</a></li>
														</ul>
													</footer>
												</section>
											</div>
										</div>
									</section>

								</div>
						</div>
					</div>
			</section>

			<!-- Footer -->
			<section id="footer">
				<div class="container">
					<div class="row">
						<div class="col-8 col-12-medium">
							<section>
								<header>
									<h2>Blandit nisl adipiscing</h2>
								</header>
								<ul class="dates">
									<li><span class="date">Jan <strong>27</strong></span>
										<h3>
											<a href="#">Lorem dolor sit amet veroeros</a>
										</h3>
										<p>Ipsum dolor sit amet veroeros consequat blandit ipsum
											phasellus lorem consequat etiam.</p></li>
									<li><span class="date">Jan <strong>23</strong></span>
										<h3>
											<a href="#">Ipsum sed blandit nisl consequat</a>
										</h3>
										<p>Blandit phasellus lorem ipsum dolor tempor sapien
											tortor hendrerit adipiscing feugiat lorem.</p></li>
									<li><span class="date">Jan <strong>15</strong></span>
										<h3>
											<a href="#">Magna tempus lorem feugiat</a>
										</h3>
										<p>Dolore consequat sed phasellus lorem sed etiam nullam
											dolor etiam sed amet sit consequat.</p></li>
									<li><span class="date">Jan <strong>12</strong></span>
										<h3>
											<a href="#">Dolore tempus ipsum feugiat nulla</a>
										</h3>
										<p>Feugiat lorem dolor sed nullam tempus lorem ipsum dolor
											sit amet nullam consequat.</p></li>
									<li><span class="date">Jan <strong>10</strong></span>
										<h3>
											<a href="#">Blandit tempus aliquam?</a>
										</h3>
										<p>Feugiat sed tempus blandit tempus adipiscing nisl lorem
											ipsum dolor sit amet dolore.</p></li>
								</ul>
							</section>
						</div>
						<div class="col-4 col-12-medium">
							<section>
								<header>
									<h2>What's this all about?</h2>
								</header>
								<a href="#" class="image featured"><img
									src="images/pic10.jpg" alt="" /></a>
								<p>
									This is <strong>Dopetrope</strong> a free, fully responsive
									HTML5 site template by <a href="http://twitter.com/ajlkn">AJ</a>
									for <a href="http://html5up.net/">HTML5 UP</a> It's released
									for free under the <a href="http://html5up.net/license/">Creative
										Commons Attribution</a> license so feel free to use it for any
									personal or commercial project &ndash; just don't forget to
									credit us!
								</p>
								<footer>
									<ul class="actions">
										<li><a href="#" class="button">Find out more</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section>
								<header>
									<h2>Tempus consequat</h2>
								</header>
								<ul class="divided">
									<li><a href="#">Lorem ipsum dolor sit amet sit
											veroeros</a></li>
									<li><a href="#">Sed et blandit consequat sed tlorem
											blandit</a></li>
									<li><a href="#">Adipiscing feugiat phasellus sed
											tempus</a></li>
									<li><a href="#">Hendrerit tortor vitae mattis tempor
											sapien</a></li>
									<li><a href="#">Sem feugiat sapien id suscipit magna
											felis nec</a></li>
									<li><a href="#">Elit class aptent taciti sociosqu ad
											litora</a></li>
								</ul>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section>
								<header>
									<h2>Ipsum et phasellus</h2>
								</header>
								<ul class="divided">
									<li><a href="#">Lorem ipsum dolor sit amet sit
											veroeros</a></li>
									<li><a href="#">Sed et blandit consequat sed tlorem
											blandit</a></li>
									<li><a href="#">Adipiscing feugiat phasellus sed
											tempus</a></li>
									<li><a href="#">Hendrerit tortor vitae mattis tempor
											sapien</a></li>
									<li><a href="#">Sem feugiat sapien id suscipit magna
											felis nec</a></li>
									<li><a href="#">Elit class aptent taciti sociosqu ad
											litora</a></li>
								</ul>
							</section>
						</div>
						<div class="col-4 col-12-medium">
							<section>
								<header>
									<h2>Vitae tempor lorem</h2>
								</header>
								<ul class="social">
									<li><a class="icon brands fa-facebook-f" href="#"><span
											class="label">Facebook</span></a></li>
									<li><a class="icon brands fa-twitter" href="#"><span
											class="label">Twitter</span></a></li>
									<li><a class="icon brands fa-dribbble" href="#"><span
											class="label">Dribbble</span></a></li>
									<li><a class="icon brands fa-tumblr" href="#"><span
											class="label">Tumblr</span></a></li>
									<li><a class="icon brands fa-linkedin-in" href="#"><span
											class="label">LinkedIn</span></a></li>
								</ul>
								<ul class="contact">
									<li>
										<h3>Address</h3>
										<p>
											Untitled Incorporated<br /> 1234 Somewhere Road Suite<br />
											Nashville, TN 00000-0000
										</p>
									</li>
									<li>
										<h3>Mail</h3>
										<p>
											<a href="#">someone@untitled.tld</a>
										</p>
									</li>
									<li>
										<h3>Phone</h3>
										<p>(800) 000-0000</p>
									</li>
								</ul>
							</section>
						</div>
						<div class="col-12">

							<!-- Copyright -->
							<div id="copyright">
								<ul class="links">
									<li>&copy; Untitled. All rights reserved.</li>
									<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
