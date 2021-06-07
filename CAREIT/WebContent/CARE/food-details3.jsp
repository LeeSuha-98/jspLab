<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%-- <% 
if(request.getParameter("level").equals("admin"))
response.sendRedirect("reviewpage.jsp"); %> --%>


<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>상세페이지</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Google Web Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic"
	rel="stylesheet" type="text/css">

<!-- Template CSS Files  -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="js/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="js/plugins/owl-carousel/owl.transitions.css"
	rel="stylesheet">
<link href="js/plugins/owl-carousel/owl.theme.css" rel="stylesheet">
<link href="js/plugins/magnific-popup/magnific-popup.css"
	rel="stylesheet">
<link href="js/plugins/datepicker/datepicker.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">


<!-- Header Starts -->
<header class="main-header">
	<!-- Nested Container Starts -->
	<div class="container text-xs-center text-sm-center text-lg-left">
		<!-- Nested Row Starts -->
		<div class="row">
			<div class="col-md-4 col-sm-12">
				<!-- Logo Starts -->
				<img src="images/logo.png" alt="CAREITSIR" class="logo img-fluid">
				<!-- Logo Ends -->
			</div>
			<div class="col-md-8 col-sm-12">
				<!-- Top Links Starts -->
				<ul
					class="list-unstyled list-inline top-links text-md-right text-weight-bold">
					<li class="list-inline-item"><a href="#">Help</a></li>
					<li class="list-inline-item"><a href="#">Request Call Back</a></li>
					<li class="list-inline-item"><a href="login.html">Register</a></li>
					<li class="list-inline-item"><a href="login.html">Login</a></li>
				</ul>
				<!-- Top Links Ends -->
				<!-- Starts -->
				<ul class="list-unstyled list-inline text-md-right order-info">
					<li class="list-inline-item lead"><i class="fa fa-phone"></i>
						Call : 001 9876 543 210</li>
					<li class="list-inline-item d-xs-none d-sm-none d-md-inline">&nbsp;</li>
					<li class="list-inline-item"><a href="#"
						class="btn btn-light animation">Order Food Online!</a></li>
				</ul>
				<!-- Ends -->
			</div>
		</div>
		<!-- Nested Row Ends -->
	</div>
	<!-- Nested Container Ends -->
</header>
<!-- Header Ends -->
<!-- Main Menu Starts -->
<nav id="nav" class="main-menu navbar navbar-expand-md rounded-0">
	<!-- Nested Container Starts -->
	<div class="container">
		<!-- Navbar Toggler Starts -->
		<button class="navbar-toggler ml-auto rounded-0" type="button"
			data-toggle="collapse" data-target=".navbar-cat-collapse"
			aria-controls=".navbar-cat-collapse" aria-expanded="false"
			aria-badge="Toggle navigation">
			<span class="navbar-toggler-icon fa fa-bars"></span>
		</button>
		<!-- Navbar Toggler Ends -->
		<!-- Navbar Cat collapse Starts -->
		<div class="collapse navbar-collapse navbar-cat-collapse">
			<ul class="nav navbar-nav text-uppercase text-weight-bold">
				<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="about.html" class="nav-link">About
						Us</a></li>
				<li class="nav-item"><a href="food-listing.html"
					class="nav-link">Food List</a></li>
				<li class="nav-item"><a href="food-grid.html" class="nav-link">Food
						Grid</a></li>
				<li class="nav-item active"><a href="food-details.html"
					class="nav-link">Food Detail</a></li>
				<li class="nav-item"><a href="login.html" class="nav-link">Login
						&amp; Register</a></li>
				<li class="nav-item"><a href="terms.html" class="nav-link">Terms</a></li>
				<li class="nav-item"><a href="policy.html" class="nav-link">Policy</a></li>
				<li class="nav-item"><a href="contact.html" class="nav-link">Contact
						Us</a></li>
				<li class="nav-item dropdown"><a href="#"
					class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
					<ul class="dropdown-menu rounded-0 float-md-right">
						<a href="index.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Home</a>
						<a href="about.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> About Us</a>
						<a href="food-listing.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Food List</a>
						<a href="food-grid.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Food Grid</a>
						<a href="food-details.html" class="dropdown-item active"><i
							class="fa fa-angle-right"></i> Food Detail</a>
						<a href="login.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Login &amp; Register</a>
						<a href="terms.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Terms</a>
						<a href="policy.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Policy</a>
						<a href="contact.html" class="dropdown-item"><i
							class="fa fa-angle-right"></i> Contact Us</a>
					</ul></li>
			</ul>
		</div>
		<!-- Navbar Cat collapse Ends -->
	</div>
	<!-- Nested Container Ends -->
</nav>
<!-- Main Menu Ends -->
<!-- Search Section Starts -->
<section class="search-area condensed parallax">
	<!-- Nested Container Starts -->
	<div class="container text-center">
		<h3 class="text-weight-normal">Find the best Restaurants, Cafes
			&amp; Cuisine in Your Place</h3>
		<form class="top-search">
			<div class="input-group">
				<div class="input-group-prepend search-panel">
					<button type="button"
						class="btn btn-lg btn-default dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="fa fa-map-marker"></span> <span class="text-label">Please
							type location</span>
					</button>
					<ul class="dropdown-menu rounded-0">
						<a href="#" class="dropdown-item">All of Texas</a>
						<a href="#" class="dropdown-item lead text-uppercase">Popular
							Places</a>
						<a href="#" class="dropdown-item">Huston, Texas</a>
						<a href="#" class="dropdown-item">San Antonio, Texas</a>
						<a href="#" class="dropdown-item">Galveston, Texas</a>
						<a href="#" class="dropdown-item">Corpus Christi, Texas</a>
					</ul>
				</div>
				<input type="text" class="form-control input-lg rounded-0"
					name="search-location"
					placeholder="Search for a Restaurants, Cafes, Cuisine, etc..,">
				<button class="btn btn-lg btn-prime animation text-uppercase"
					type="button">Search</button>
			</div>
		</form>
	</div>
	<!-- Nested Container Ends -->
</section>
<!-- Search Section Ends -->
<!-- BreadCrumb Starts -->
<div class="breadcrumb rounded-0">
	<!-- Nested Container Starts -->
	<div class="container text-xs-center text-sm-center text-md-left">
		<ul class="list-unstyled list-inline">
			<li class="list-inline-item"><a href="index.html">Home</a></li>
			<li class="list-inline-item"><a href="#">Restaurants in
					Hyderabad</a></li>
			<li class="list-inline-item"><a href="#">Begumpet</a></li>
			<li class="active list-inline-item">Hyderabad Spl Food Dabha</li>
		</ul>
	</div>
	<!-- Nested Container Ends -->
</div>
<!-- BreadCrumb Ends -->

<!-- 상세페이지 시작 -->
<!-- Main Container Starts -->
<div class="main-container container">
	<!-- Heading Starts -->
	<div class="banner-area">
		<img src="images/banners/bannerex1.jpg" alt="Banner"
			class="img-fluid border-radius-4"> <img
			src="images/banners/bannerex2.jpg" alt="Banner"
			class="img-fluid border-radius-4"> <img
			src="images/banners/bannerex3.jpg" alt="Banner"
			class="img-fluid border-radius-4">
	</div>
	<h4 class="main-heading-1 text-xs-center text-sm-center text-md-left">
		꽃을 피우고</h4>

	<ul
		class="list-unstyled list-inline grid-box-ratings float-lg-right text-lg-right">
		<li class="list-inline-item star-rating"><i class="fa fa-star"
			onclick="wishList();"> </i></li>


	</ul>
	<form method="get" name="frm" id="frm" action="./view/loginForm.jsp">
		<input type="submit" value="리뷰쓰기" onclick="this.form.flag.value='D';">
	</form>








	<!-- 조회수, 리뷰수, 즐겨찾기수 추가하기 -->
	<!-- Heading Ends -->
	<!-- Main Banner Starts -->

	<!-- Main Banner Ends -->
	<!-- Nested Row Starts -->

	<div class="row">
		<!-- Mainarea Starts -->
		<div class="col-md-9 col-sm-12">
			<!-- Menu Tabs Starts -->
			<div class="menu-tabs-wrap">
				<!-- Menu Tabs List Starts -->

				<!-- Menu Tabs List Ends -->
				<!-- Menu Tabs Content Starts -->

				<div class="tab-content">
					<!-- Tab #1 Starts -->
					<div id="menu" class="tab-pane fade show active">
						<!-- Tab #1 Nested Row Starts -->
						<div class="row">
							<!-- Left Column Starts -->
							<div class="col-md-4 col-sm-12">

								<script>
									function wishList() {

										/*  let answer;
										    let YesUrl="/viewLike.jsp"; 
										   
										    


										    let NoUrl="./food-details.jsp"; */

										let answer = confirm("즐겨찾기 목록에 담겼습니다. 나의 즐겨찾기 목록을 확인할까요?");

										if (answer == true) {
											location.href = "viewLike.jsp";
										} else if (answer != true) {
											location.href = "food-details.jsp";
										}

									}
								</script>














								<!-- 리뷰 불러오기 해야함 -->

							</div>
							<!-- Nested Row Ends -->
						</div>
						<!-- Main Banner Ends -->
						<!-- Nested Row Starts -->
						<div class="row">
							<!-- Mainarea Starts -->
							<div class="col-md-9 col-sm-12">
								<!-- Menu Tabs Starts -->
								<div class="menu-tabs-wrap">
									<!-- Menu Tabs List Starts -->
									<ul
										class="nav nav-tabs nav-menu-tabs text-xs-center text-sm-center text-md-left">
										<li class="nav-item"><a href="#menu"
											class="nav-link active" data-toggle="tab">Menu</a></li>
										<li class="nav-item"><a href="#information"
											class="nav-link" data-toggle="tab">Information</a></li>
										<li class="nav-item"><a href="#gallery" class="nav-link"
											data-toggle="tab">Gallery</a></li>
										<li class="nav-item"><a href="#reviews" class="nav-link"
											data-toggle="tab">Reviews</a></li>
										<li class="nav-item"><a href="#reachus" class="nav-link"
											data-toggle="tab">Reach Us</a></li>
									</ul>
									<!-- Menu Tabs List Ends -->
									<!-- Menu Tabs Content Starts -->
									<div class="tab-content">
										<!-- Tab #1 Starts -->
										<div id="menu" class="tab-pane fade show active">
											<!-- Tab #1 Nested Row Starts -->
											<div class="row">
												<!-- Left Column Starts -->
												<div class="col-md-4 col-sm-12">
													<div class="side-block-1">
														<h6>Delivery Menu</h6>
														<ul class="list-unstyled list-style-2">
															<li>Soups</li>
															<li>Southern Grills: Veg.</li>
															<li>Southern Grills: Non-Veg.</li>
															<li>Starters</li>
															<li>Chinese Starters</li>
															<li>North Indian Main Course</li>
															<li>Traditional Telugu Maincourse</li>
															<li>Indian Breads</li>
															<li>Rice, Biryani &amp; Pulao</li>
															<li>Accompaniments</li>
															<li>Desserts &amp; Beverages</li>
														</ul>
													</div>
												</div>
												<!-- Left Column Ends -->
												<!-- Right Column Starts -->
												<div class="col-md-8 col-sm-12">
													<!-- Order Menu Tab Pane Starts -->
													<div
														class="order-menu-tab-pane text-xs-center text-sm-center text-md-left">

														<!-- Order Menu List #1 Starts -->
														<h4
															class="main-heading-1 text-xs-center text-sm-center text-md-left">
															꽃을 피우고</h4>

														<ul
															class="list-unstyled list-inline grid-box-ratings float-lg-right text-lg-right">
															<li class="list-inline-item star-rating"><i
																class="fa fa-star" onclick="wishList();"> </i></li>
															<p class="text-center"></p>
															<div class="spacer"></div>
															<div class="order-menu-item clearfix">
																<div class="float-left">
															</div>

																</div>
															</div>

																	주소: <br> 전화번호: <br> 음식 종류: <br> 주차: <br>
																	영업시간: <br> 메뉴: <br>
																	<hr>

															
															식당소개
															<hr>
															리뷰
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															
															<p>Thick sweet corn soup</p>
															<i class="fa fa-dot-circle-o veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$11.55</span> / <span
																class="price-old">$15</span> <i
																class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Kodi Mokkajonna Shorba</h6>
															<p>Thick sweet corn soup with shredded chicken</p>
															<i class="fa fa-dot-circle-o non-veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Paya Soup</h6>
															<p>Lamb trotters soup cooked in traditional spices</p>
															<i class="fa fa-dot-circle-o non-veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<!-- Order Menu List #1 Ends -->
													<!-- Spacer Starts -->
													<div class="spacer big"></div>
													<!-- Spacer Ends -->
													<!-- Order Menu List #2 Starts -->
													<h5>Southern Grills: Veg.</h5>
													<p class="text-center">
														<img src="images/banners/tab-banner-img2.png" alt="Banner"
															class="img-fluid">
													</p>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Miryala Rasam</h6>
															<p>Pepper Rasam Masala Soup</p>
															<i class="fa fa-dot-circle-o veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Mokkajonna Shorba</h6>
															<p>Thick sweet corn soup</p>
															<i class="fa fa-dot-circle-o veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$11.55</span> / <span
																class="price-old">$15</span> <i
																class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Kodi Mokkajonna Shorba</h6>
															<p>Thick sweet corn soup with shredded chicken</p>
															<i class="fa fa-dot-circle-o non-veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Paya Soup</h6>
															<p>Lamb trotters soup cooked in traditional spices</p>
															<i class="fa fa-dot-circle-o non-veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<!-- Order Menu List #2 Ends -->
													<!-- Spacer Starts -->
													<div class="spacer big"></div>
													<!-- Spacer Ends -->
													<!-- Order Menu List #3 Starts -->
													<h5>Southern Grills: Non-Veg.</h5>
													<p class="text-center">
														<img src="images/banners/tab-banner-img3.png" alt="Banner"
															class="img-fluid">
													</p>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Miryala Rasam</h6>
															<p>Pepper Rasam Masala Soup</p>
															<i class="fa fa-dot-circle-o veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Mokkajonna Shorba</h6>
															<p>Thick sweet corn soup</p>
															<i class="fa fa-dot-circle-o veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$11.55</span> / <span
																class="price-old">$15</span> <i
																class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Kodi Mokkajonna Shorba</h6>
															<p>Thick sweet corn soup with shredded chicken</p>
															<i class="fa fa-dot-circle-o non-veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<div class="order-menu-item clearfix">
														<div class="float-left">
															<h6>Paya Soup</h6>
															<p>Lamb trotters soup cooked in traditional spices</p>
															<i class="fa fa-dot-circle-o non-veg"></i>
														</div>
														<div class="float-right">
															<a href="#" class="btn btn-tertiary animation"><span
																class="price-new">$7.99</span> / <span class="price-old">$10</span>
																<i class="fa fa-plus-circle"></i></a>
														</div>
													</div>
													<!-- Order Menu List #3 Ends -->
												</div>
												<!-- Order Menu Tab Pane Ends -->
												<!-- Pagination Starts -->
												<div class="pagination-block clearfix">
													<ul class="pagination animation float-lg-right">
														<li class="page-item"><a href="#" class="page-link">&laquo;</a></li>
														<li class="page-item active"><a href="#"
															class="page-link">1</a></li>
														<li class="page-item"><a href="#" class="page-link">2</a></li>
														<li class="page-item"><a href="#" class="page-link">3</a></li>
														<li class="page-item"><a href="#" class="page-link">&raquo;</a></li>
													</ul>
												</div>
												<!-- Pagination Ends -->
												<!-- Banners Starts -->
												<div class="row text-center">
													<div class="col-6">
														<img src="images/banners/banner-img1.png" alt="Banner 1"
															class="img-fluid">
													</div>
													<div class="col-6">
														<img src="images/banners/banner-img2.png" alt="Banner 2"
															class="img-fluid">
													</div>
												</div>
												<!-- Banners Ends -->
											</div>
											<!-- Right Column Ends -->
										</div>
										<!-- Tab #1 Nested Row Ends -->
									</div>
									<!-- Tab #1 Ends -->
									<!-- Tab #2 Starts -->
									<div id="information" class="tab-pane fade">
										<!-- Tab #2 Nested Row Starts -->
										<div class="row">
											<!-- Left Column Starts -->
											<div class="col-md-4 col-sm-12">
												<div class="side-block-1">
													<h6>Delivery Menu</h6>
													<ul class="list-unstyled list-style-2">
														<li>Soups</li>
														<li>Southern Grills: Veg.</li>
														<li>Southern Grills: Non-Veg.</li>
														<li>Starters</li>
														<li>Chinese Starters</li>
														<li>North Indian Main Course</li>
														<li>Traditional Telugu Maincourse</li>
														<li>Indian Breads</li>
														<li>Rice, Biryani &amp; Pulao</li>
														<li>Accompaniments</li>
														<li>Desserts &amp; Beverages</li>
													</ul>
												</div>
											</div>
											<!-- Left Column Ends -->
											<!-- Right Column Starts -->
											<div class="col-md-8 col-sm-12">
												<!-- Information Tab Pane Starts -->
												<div class="information-tab-pane">
													<p class="text-center">
														<img src="images/banners/banner-discount.png"
															alt="Discount Banner" class="img-fluid">
													</p>
													<!-- Spacer Starts -->
													<div class="spacer big"></div>
													<!-- Spacer Ends -->
													<p>Check out the $20 menu any drink or
														snack.........Cheers.</p>
													<p>Bring your friends along &amp; party hard.</p>
													<p>Spread the word - Food and Drinks at $20 bucks!
														Between 4.00 to 8.00 pm Last order @ 7.45 pm Club rules
														apply. Dress code mandatory.</p>
													<p>Restaurants are solely responsible for the service;
														availability and quality of the events including all or
														any cancellations/ modifications/ complaints.</p>
													<hr>
													<!-- Delivery Hours Starts -->
													<h6>
														<i class="fa fa-clock-o"></i> Delivery Hours
													</h6>
													<ul class="list-unstyled timing-list">
														<li class="clearfix"><span class="float-left">Monday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Tuesday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Wednesday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Thursday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Friday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Saturday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Sunday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
													</ul>
													<!-- Delivery Hours Ends -->
													<hr>
													<!-- Takeway Hours Starts -->
													<h6>
														<i class="fa fa-clock-o"></i> Takeway Hours
													</h6>
													<ul class="list-unstyled timing-list">
														<li class="clearfix"><span class="float-left">Monday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Tuesday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Wednesday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Thursday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Friday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Saturday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
														<li class="clearfix"><span class="float-left">Sunday</span>
															<span class="float-right text-right">12:00 -
																15:30, 18:00 - 22:30</span></li>
													</ul>
													<!-- Takeway Hours Ends -->
													<hr>
													<!-- Spacer Starts -->
													<div class="spacer"></div>
													<!-- Spacer Ends -->
													<!-- Banners Starts -->
													<div class="row text-center">
														<div class="col-6">
															<img src="images/banners/banner-img1.png" alt="Banner 1"
																class="img-fluid">
														</div>
														<div class="col-6">
															<img src="images/banners/banner-img2.png" alt="Banner 2"
																class="img-fluid">
														</div>
													</div>
													<!-- Banners Ends -->
												</div>
												<!-- Information Tab Pane Ends -->
											</div>
											<!-- Right Column Ends -->
										</div>
										<!-- Tab #2 Nested Row Ends -->
									</div>
									<!-- Tab #2 Ends -->
									<!-- Tab #3 Starts -->
									<div id="gallery" class="tab-pane fade">
										<!-- Image Gallery Starts -->
										<ul class="row list-unstyled gallery-grid">
											<!-- Gallery Image #1 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img1.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img1.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #1 Ends -->
											<!-- Gallery Image #2 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img2.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img2.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #2 Ends -->
											<!-- Gallery Image #3 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img3.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img3.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #3 Ends -->
											<!-- Gallery Image #4 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img4.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img4.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #4 Ends -->
											<!-- Gallery Image #5 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img5.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img5.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #5 Ends -->
											<!-- Gallery Image #6 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img6.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img6.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #6 Ends -->
											<!-- Gallery Image #7 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img7.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img7.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #7 Ends -->
											<!-- Gallery Image #8 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img8.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img8.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #8 Ends -->
											<!-- Gallery Image #9 Starts -->
											<li class="col-md-4 col-sm-6">
												<div class="hover-content text-center">
													<img src="images/gallery/thumb/gallery-thumb-img9.jpg"
														alt="Gallery Image" class="img-fluid">
													<div class="overlay animation">
														<a href="images/gallery/big/gallery-big-img9.jpg"
															class="btn btn-link zoom"><i
															class="fa fa-search-plus"></i></a>
													</div>
												</div>
											</li>
											<!-- Gallery Image #9 Ends -->
										</ul>
										<!-- Image Gallery Ends -->
									</div>
									<!-- Tab #3 Ends -->
									<!-- Tab #4 Starts -->
									<div id="reviews" class="tab-pane fade">
										<!-- Tab #4 Nested Row Starts -->
										<div class="row">
											<!-- Left Column Starts -->
											<div class="col-md-4 col-sm-12">
												<div class="side-block-1">
													<h6>Delivery Menu</h6>
													<ul class="list-unstyled list-style-2">
														<li>Soups</li>
														<li>Southern Grills: Veg.</li>
														<li>Southern Grills: Non-Veg.</li>
														<li>Starters</li>
														<li>Chinese Starters</li>
														<li>North Indian Main Course</li>
														<li>Traditional Telugu Maincourse</li>
														<li>Indian Breads</li>
														<li>Rice, Biryani &amp; Pulao</li>
														<li>Accompaniments</li>
														<li>Desserts &amp; Beverages</li>
													</ul>
												</div>
											</div>
											<!-- Left Column Ends -->
											<!-- Right Column Starts -->
											<div class="col-md-8 col-sm-12">
												<!-- Reviews Tab Pane Starts -->
												<div class="reviews-tab-pane">
													<!-- Reviews Form Box Starts -->
													<div class="reviews-form-box">
														<h6>Write a Review</h6>
														<form>
															<textarea class="form-control" rows="4"
																placeholder="Message should be atleast 130 charecters"></textarea>
															<div class="clearfix">
																<ul
																	class="list-unstyled list-inline rating-star float-left">
																	<li class="list-inline-item"><i class="fa fa-star"></i></li>
																	<li class="list-inline-item"><i class="fa fa-star"></i></li>
																	<li class="list-inline-item"><i class="fa fa-star"></i></li>
																	<li class="list-inline-item"><i class="fa fa-star"></i></li>
																	<li class="list-inline-item"><i class="fa fa-star"></i></li>
																</ul>
																<a href="#"
																	class="btn btn-black animation text-uppercase float-right">Submit</a>
															</div>
														</form>
													</div>
													<!-- Reviews Form Box Ends -->
													<!-- Reviews List Starts -->
													<div class="reviews-box">
														<!-- Review #1 Starts -->
														<div class="review-list">
															<div class="clearfix">
																<div class="float-left">
																	<h6>
																		<i class="fa fa-calendar"></i> Mar 10, 2016
																	</h6>
																	<h6>By Sainath Chillapuram</h6>
																	<ul class="list-unstyled list-inline rating-star-list">
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																	</ul>
																</div>
																<img src="images/review-thumb-img1.png" alt="Image"
																	class="img-fluid float-right">
															</div>
															<div class="review-list-content">
																<p>The delivery guy said he will be back in 10 mins
																	with the missing items, but never came back. when I
																	called the restaurant, they took another 30 mins to
																	deliver.</p>
															</div>
														</div>
														<!-- Review #1 Ends -->
														<!-- Review #2 Starts -->
														<div class="review-list">
															<div class="clearfix">
																<div class="float-left">
																	<h6>
																		<i class="fa fa-calendar"></i> Mar 10, 2016
																	</h6>
																	<h6>By Sainath Chillapuram</h6>
																	<ul class="list-unstyled list-inline rating-star-list">
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																	</ul>
																</div>
																<img src="images/review-thumb-img1.png" alt="Image"
																	class="img-fluid float-right">
															</div>
															<div class="review-list-content">
																<p>The delivery guy said he will be back in 10 mins
																	with the missing items, but never came back. when I
																	called the restaurant, they took another 30 mins to
																	deliver.</p>
															</div>
														</div>
														<!-- Review #2 Ends -->
														<!-- Review #3 Starts -->
														<div class="review-list">
															<div class="clearfix">
																<div class="float-left">
																	<h6>
																		<i class="fa fa-calendar"></i> Mar 10, 2016
																	</h6>
																	<h6>By Sainath Chillapuram</h6>
																	<ul class="list-unstyled list-inline rating-star-list">
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																	</ul>
																</div>
																<img src="images/review-thumb-img1.png" alt="Image"
																	class="img-fluid float-right">
															</div>
															<div class="review-list-content">
																<p>The delivery guy said he will be back in 10 mins
																	with the missing items, but never came back. when I
																	called the restaurant, they took another 30 mins to
																	deliver.</p>
															</div>
														</div>
														<!-- Review #3 Ends -->
														<!-- Review #4 Starts -->
														<div class="review-list">
															<div class="clearfix">
																<div class="float-left">
																	<h6>
																		<i class="fa fa-calendar"></i> Mar 10, 2016
																	</h6>
																	<h6>By Sainath Chillapuram</h6>
																	<ul class="list-unstyled list-inline rating-star-list">
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																		<li class="list-inline-item"><i
																			class="fa fa-star-o"></i></li>
																	</ul>
																</div>
																<img src="images/review-thumb-img1.png" alt="Image"
																	class="img-fluid float-right">
															</div>
															<div class="review-list-content">
																<p>The delivery guy said he will be back in 10 mins
																	with the missing items, but never came back. when I
																	called the restaurant, they took another 30 mins to
																	deliver.</p>
															</div>
														</div>
														<!-- Review #4 Ends -->
													</div>
													<!-- Reviews List Ends -->
													<!-- Spacer Starts -->
													<div class="spacer-1 condensed"></div>
													<!-- Spacer Ends -->
													<!-- Banners Starts -->
													<div class="row text-center">
														<div class="col-6">
															<img src="images/banners/banner-img1.png" alt="Banner 1"
																class="img-fluid">
														</div>
														<div class="col-6">
															<img src="images/banners/banner-img2.png" alt="Banner 2"
																class="img-fluid">
														</div>
													</div>
													<!-- Banners Ends -->
												</div>
												<!-- Reviews Tab Pane Ends -->
											</div>
											<!-- Right Column Ends -->
										</div>
										<!-- Tab #4 Nested Row Ends -->
									</div>
									<!-- Tab #4 Ends -->
									<!-- Tab #5 Starts -->
									<div id="reachus" class="tab-pane fade">
										<!-- Tab #5 Nested Row Starts -->
										<div class="row">
											<!-- Left Column Starts -->
											<div class="col-md-4 col-sm-12">
												<div class="side-block-1">
													<h6>Delivery Menu</h6>
													<ul class="list-unstyled list-style-2">
														<li>Soups</li>
														<li>Southern Grills: Veg.</li>
														<li>Southern Grills: Non-Veg.</li>
														<li>Starters</li>
														<li>Chinese Starters</li>
														<li>North Indian Main Course</li>
														<li>Traditional Telugu Maincourse</li>
														<li>Indian Breads</li>
														<li>Rice, Biryani &amp; Pulao</li>
														<li>Accompaniments</li>
														<li>Desserts &amp; Beverages</li>
													</ul>
												</div>
											</div>
											<!-- Left Column Ends -->
											<!-- Right Column Starts -->
											<div class="col-md-8 col-sm-12">
												<!-- Reach Us Tab Pane Starts -->
												<div class="reachus-tab-pane">
													<!-- Map Starts -->
													<div class="map"></div>
													<!-- Map Ends -->
													<!-- Address Block Starts -->
													<div class="address-block">
														<h6>
															<i class="fa fa-tag"></i> Address
														</h6>
														<ul class="list-unstyled">
															<li># 201, Plot No. 39, Abids Road, Near Chirag Ali
																Lane,</li>
															<li>Hyderabad - 500 001 , Telangana, India.</li>
														</ul>
														<h6>
															<i class="fa fa-phone"></i> Phone Numbers
														</h6>
														<ul class="list-unstyled">
															<li>040-80180280, 040-22113366</li>
														</ul>
														<h6>
															<i class="fa fa-mobile"></i> Can be in touch with Watsapp
														</h6>
														<ul class="list-unstyled">
															<li>+21 998 909 9999</li>
														</ul>
													</div>
													<!-- Address Block Ends -->
													<!-- Reach Form Starts -->
													<div class="reachus-form">
														<h6>Drop us a mail for Table Reservation</h6>
														<form action="#">
															<div class="form-group">
																<label class="sr-only" for="reachus-name">Name</label> <input
																	type="text" class="form-control rounded-0"
																	id="reachus-name" placeholder="Name">
															</div>
															<div class="form-group">
																<label class="sr-only" for="reachus-email">E-mail</label>
																<input type="email" class="form-control rounded-0"
																	id="reachus-email" placeholder="e-mail">
															</div>
															<div class="form-group">
																<label class="sr-only" for="reachus-mobileno">Mobile
																	No</label> <input type="text" class="form-control rounded-0"
																	id="reachus-mobileno" placeholder="Mobile No">
															</div>
															<div class="row">
																<div class="col-6">
																	<div class="form-group">
																		<div class="input-group">
																			<label class="sr-only" for="reachus-date">Date</label>
																			<input type="text"
																				class="form-control rounded-0 datepickerInput"
																				id="reachus-date" placeholder="Date"> <span
																				class="input-group-append input-group-text rounded-0">
																				<span class="fa fa-calendar"></span>
																			</span>
																		</div>
																	</div>
																</div>
																<div class="col-6">
																	<div class="form-group">
																		<label class="sr-only" for="reachus-persons">No.of
																			Persons</label> <select class="form-control rounded-0">
																			<option>No.of Persons</option>
																			<option>1</option>
																			<option>2</option>
																			<option>3</option>
																			<option>4</option>
																			<option>5</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="form-group">
																<label class="sr-only" for="reachus-info">Your
																	Information</label>
																<textarea class="form-control rounded-0"
																	id="reachus-info" placeholder="Your Information"
																	rows="5"></textarea>
															</div>
															<div class="clearfix">
																<button type="submit"
																	class="btn btn-prime text-uppercase animation pull-right">Submit</button>
															</div>
														</form>
													</div>
													<!-- Reach Form Ends -->
													<!-- Banners Starts -->
													<div class="row text-center">
														<div class="col-6">
															<img src="images/banners/banner-img1.png" alt="Banner 1"
																class="img-fluid">
														</div>
														<div class="col-6">
															<img src="images/banners/banner-img2.png" alt="Banner 2"
																class="img-fluid">
														</div>
													</div>
													<!-- Banners Ends -->
												</div>
												<!-- Reach Us Tab Pane Ends -->
											</div>
											<!-- Right Column Ends -->
										</div>
										<!-- Tab #5 Nested Row Ends -->
									</div>
									<!-- Tab #5 Ends -->
								</div>
								<!-- Menu Tabs Content Ends -->
							</div>
							<!-- Menu Tabs Ends -->
						</div>
						<!-- Mainarea Ends -->
						<!-- Sidearea Starts -->
						<div class="col-md-3 col-sm-12">
							<!-- Spacer Starts -->
							<div class="spacer-1 medium d-xs-block d-sm-block d-md-none"></div>
							<!-- Spacer Ends -->
							<!-- Your Order Starts -->
							<div class="side-block-order border-radius-4">
								<!-- Heading Starts -->
								<h6 class="text-center">
									<i class="fa fa-shopping-basket"></i> Your Orders
								</h6>
								<!-- Heading Ends -->
								<!-- Order Content Starts -->
								<div class="side-block-order-content">
									<!-- Order Item List Starts -->
									<ul class="list-unstyled order-item-list">
										<li class="clearfix"><span class="float-left">Miryala
												Rasam</span> <span class="float-right text-spl-color">$7.99</span></li>
										<li class="clearfix"><span class="float-left">Mokkajonna
												Shorba</span> <span class="float-right text-spl-color">$8.45</span>
										</li>
										<li class="clearfix"><span class="float-left">Miryala
												Rasam</span> <span class="float-right text-spl-color">$7.99</span></li>
										<li class="clearfix"><span class="float-left">Mokkajonna
												Shorba</span> <span class="float-right text-spl-color">$8.45</span>
										</li>
									</ul>
									<!-- Order Item List Ends -->
									<!-- Order Item Total Starts -->
									<dl class="row order-item-total">
										<dt class="col-sm-8 text-weight-light text-right">Orders
											Amount :</dt>
										<dd class="col-sm-4 text-spl-color text-right">$30.45</dd>
										<dt class="col-sm-8 text-weight-light text-right">Delivery
											Charges :</dt>
										<dd class="col-sm-4 text-spl-color text-right">$5.00</dd>
										<dt class="col-sm-8 text-weight-bold text-right total">Total
											Amount :</dt>
										<dd
											class="col-sm-4 text-weight-bold text-spl-color text-right total">$35.45</dd>
									</dl>
									<!-- Order Item Total Ends -->
									<p class="text-center text-weight-light text-spl-color">Menu
										List of your Orders</p>
								</div>
								<!-- Order Content Ends -->
							</div>
							<!-- Your Order Ends -->
							<!-- Sponsors Banners Starts -->
							<p class="text-muted text-xs-center text-sm-center text-md-left">Sponsors
								for the website</p>
							<ul class="list-unstyled list-banner-style-1 text-center">
								<li><a href="#"><img
										src="images/banners/sponsors-banner-img1.png" alt="Banner 1"
										class="img-fluid"></a></li>
								<li><a href="#"><img
										src="images/banners/sponsors-banner-img2.png" alt="Banner 1"
										class="img-fluid"></a></li>
								<li><a href="#"><img
										src="images/banners/sponsors-banner-img3.png" alt="Banner 1"
										class="img-fluid"></a></li>
								<li><a href="#"><img
										src="images/banners/sponsors-banner-img4.png" alt="Banner 1"
										class="img-fluid"></a></li>
							</ul>
							<!-- Sponsors Banners Ends -->
						</div>
						<!-- Sidearea Ends -->
					</div>
					<!-- Nested Row Ends -->
				</div>
				<!-- Main Container Ends -->
				<!-- Newsletter Section Starts -->
				<section class="footer-top">
					<!-- Nested Container Starts -->
					<div class="container">
						<h3 class="text-center text-weight-bold">Subscribe to our
							Newsletter:</h3>
						<ul class="list-unstyled list-inline text-center">
							<li class="list-inline-item"><i class="fa fa-check-circle"></i>
								Receive deals from all our top restaurants via e-mail</li>
							<li class="list-inline-item"><i class="fa fa-check-circle"></i>
								Don't miss out on our great offers</li>
						</ul>
						<!-- Newsletter Form Starts -->
						<form class="newsletter-form">
							<!-- Nested Row Starts -->
							<div class="row">
								<div class="col-md-4 col-sm-12">
									<label class="sr-only" for="newsletter-city">Please
										Select Your City</label> <input type="text" class="form-control"
										id="newsletter-city" placeholder="Please Select Your City">
								</div>
								<div class="col-md-5 col-sm-12">
									<label class="sr-only" for="newsletter-email">Email</label> <input
										type="text" class="form-control" id="newsletter-email"
										placeholder="Enter Your E-mail Id">
								</div>
								<div class="col-md-3 col-sm-12">
									<button type="submit"
										class="btn btn-prime btn-block text-uppercase text-weight-bold animation">Sign
										Up Now</button>
								</div>
								<div class="col-sm-12 text-center">
									<h6 class="text-weight-bold">
										<label> <input type="checkbox"> <span>I
												have read &amp; accepted the terms and conditions and
												privacy policy</span>
										</label>
									</h6>
								</div>
							</div>
							<!-- Nested Row Ends -->
						</form>
						<!-- Newsletter Form Ends -->
					</div>
					<!-- Nested Container Ends -->
				</section>
				<!-- Newsletter Section Ends -->
				<!-- Footer Area Starts -->
				<footer class="main-footer">
					<!-- Nested Container Starts -->
					<div class="container">
						<!-- Starts -->
						<div class="row">
							<!-- Logo Starts -->
							<div
								class="col-lg-3 col-sm-12 text-xs-center text-sm-center text-lg-left">
								<img src="images/logo.png" alt="FoodBingo" class="img-fluid">
							</div>
							<!-- Logo Ends -->
							<!-- Page Links Starts -->
							<div class="col-lg-6 col-sm-12">
								<ul class="list-unstyled list-inline page-links text-center">
									<li class="list-inline-item"><a href="index.html">Home</a></li>
									<li class="list-inline-item"><a href="about.html">About
											Us</a></li>
									<li class="list-inline-item"><a href="#">Recipes</a></li>
									<li class="list-inline-item"><a href="#">Foods</a></li>
									<li class="list-inline-item"><a href="#">Catering</a></li>
									<li class="list-inline-item"><a href="contact.html">Contact
											Us</a></li>
								</ul>
							</div>
							<!-- Page Links Ends -->
							<!-- Social Media Links Starts -->
							<div class="col-lg-3 col-sm-12">
								<ul
									class="list-unstyled list-inline sm-links text-xs-center text-sm-center text-lg-right">
									<li class="list-inline-item"><a href="#"
										class="btn btn-prime animation"> <i class="fa fa-twitter"></i>
									</a></li>
									<li class="list-inline-item"><a href="#"
										class="btn btn-prime animation"> <i class="fa fa-facebook"></i>
									</a></li>
									<li class="list-inline-item"><a href="#"
										class="btn btn-prime animation"> <i class="fa fa-linkedin"></i>
									</a></li>
									<li class="list-inline-item"><a href="#"
										class="btn btn-prime animation"> <i class="fa fa-skype"></i>
									</a></li>
									<li class="list-inline-item"><a href="#"
										class="btn btn-prime animation"> <i
											class="fa fa-pinterest"></i>
									</a></li>
								</ul>
							</div>
							<!-- Social Media Links Ends -->
						</div>
						<!-- Ends -->
						<!-- Address Section Starts -->
						<section
							class="foot-address text-xs-center text-sm-center text-md-left">
							<h5 class="mt-4 mb-3">Address :</h5>
							<!-- Nested Row Starts -->
							<div class="row">
								<ul class="list-unstyled col-md-4 col-sm-12">
									<li>28 Jackson Blvd Ste 1020 Chicago</li>
									<li>IL 60604-2340</li>
								</ul>
								<ul class="list-unstyled col-md-4 col-sm-12">
									<li>Freephone: +1-800-559-1234</li>
									<li>Telephone: +1-800-603-9874</li>
								</ul>
								<ul class="list-unstyled col-md-4 col-sm-12">
									<li>FAX: +1-800-999-9898</li>
									<li>E-mail: <a href="mailto:mail@foodbingodemo.com">mail@foodbingodemo.com</a></li>
								</ul>
							</div>
							<!-- Nested Row Ends -->
						</section>
						<!-- Address Section Ends -->
						<!-- Links Section Starts -->
						<section
							class="footer-links-section text-xs-center text-sm-center text-md-left">
							<!-- Nested Row Starts -->
							<div class="row">
								<!-- Link Col #1 Starts -->
								<div class="col-lg-3 col-md-6 col-sm-12">
									<h5>Restaurants By Area</h5>
									<ul class="list-unstyled">
										<li><a href="#">Restaurants in Madhapur</a></li>
										<li><a href="#">Restaurants in Sainikpuri</a></li>
										<li><a href="#">Restaurants in Banjara Hills</a></li>
										<li><a href="#">Restaurants in Gachibowli</a></li>
										<li><a href="#">Restaurants in Jubilee Hills</a></li>
										<li><a href="#">Restaurants in Secunderabad</a></li>
										<li><a href="#">Restaurants in Hitech City</a></li>
									</ul>
								</div>
								<!-- Link Col #1 Ends -->
								<!-- Link Col #2 Starts -->
								<div class="col-lg-3 col-md-6 col-sm-12">
									<h5>Top Rated Cuisines</h5>
									<ul class="list-unstyled">
										<li><a href="#">North Indian</a></li>
										<li><a href="#">Italian</a></li>
										<li><a href="#">Bengali</a></li>
										<li><a href="#">Chinese</a></li>
										<li><a href="#">Mughlai</a></li>
										<li><a href="#">Continental</a></li>
										<li><a href="#">Hyderabadi Biriyani</a></li>
									</ul>
								</div>
								<!-- Link Col #2 Ends -->
								<!-- Link Col #3 Starts -->
								<div class="col-lg-3 col-md-6 col-sm-12">
									<h5>Popular Restaurants</h5>
									<ul class="list-unstyled">
										<li><a href="#">Hinglish Cafe</a></li>
										<li><a href="#">Mama Mia Italia</a></li>
										<li><a href="#">Khaan Saab</a></li>
										<li><a href="#">Call Of Benga</a></li>
										<li><a href="#">China By Marcopolo</a></li>
										<li><a href="#">Ulavacharu</a></li>
										<li><a href="#">Reshmi's</a></li>
									</ul>
								</div>
								<!-- Link Col #3 Ends -->
								<!-- Link Col #4 Starts -->
								<div class="col-lg-3 col-md-6 col-sm-12">
									<h5>Popular Cities</h5>
									<ul class="list-unstyled">
										<li><a href="#">Pune</a></li>
										<li><a href="#">Bangalore</a></li>
										<li><a href="#">Hyderabad</a></li>
										<li><a href="#">Chennai</a></li>
										<li><a href="#">Delhi</a></li>
										<li><a href="#">Mumbai</a></li>
										<li><a href="#">Gurgaon</a></li>
									</ul>
								</div>
								<!-- Link Col #4 Ends -->
							</div>
							<!-- Nested Row Ends -->
						</section>
						<!-- Links Section Ends -->
						<!-- Copyright Starts -->
						<p class="copyright text-center mb-0">All Rights Reserved
							&copy; 2010 - 2018 Food Bingo Service.</p>
						<!-- Copyright Ends -->
					</div>
					<!-- Nested Container Ends -->
				</footer>
				<!-- Footer Area Ends -->
				<!-- Template JS Files -->
				<script src="js/jquery-3.3.1.min.js"></script>
				<script src="js/popper.min.js"></script>
				<script src="js/bootstrap.min.js"></script>
				<script
					src="js/plugins/bootstrap-filestyle/bootstrap-filestyle.min.js"></script>
				<script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>
				<script src="js/plugins/owl-carousel/owl.carousel.js"></script>
				<script src="js/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
				<script
					src="https://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script>
				<script src="js/custom.js"></script>
				</body>
				</html>
				<script src="js/custom.js"></script>