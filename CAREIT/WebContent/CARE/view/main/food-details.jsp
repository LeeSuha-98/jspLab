<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jspf"%>




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*"%>


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Food Bingo - Bootstrap Template</title>

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
				<li class="nav-item"><a href="/login/login.jsp"
					class="nav-link">Login &amp; Register</a></li>
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
						<a href="/login/login.jsp" class="dropdown-item"><i
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
<!-- Main Container Starts -->
<div class="main-container container">
	<!-- Heading Starts -->
	<h4 class="main-heading-1 text-xs-center text-sm-center text-md-left">
		안녕카페

		<ul
			class="list-unstyled list-inline grid-box-ratings float-lg-right text-lg-right">
			<li class="list-inline-item star-rating"><i class="fa fa-star"
				onclick="wishList();"> </i></li>


		</ul>
	</h4>


	<!-- Heading Ends -->
	<!-- Main Banner Starts -->
	<div class="banner-area"></div>
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
					<li class="nav-item"><a href="#menu" class="nav-link active"
						data-toggle="tab">Menu</a></li>
					<li class="nav-item"><a href="#information" class="nav-link"
						data-toggle="tab">매장 정보</a></li>
					<li class="nav-item"><a href="#gallery" class="nav-link"
						data-toggle="tab">매장 사진첩</a></li>
					<li class="nav-item"><a href="#reviews" class="nav-link"
						data-toggle="tab">리뷰</a></li>
					<li class="nav-item"><a href="#reachus" class="nav-link"
						data-toggle="tab">찾아오시는 길</a></li>
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
								<script>
							
									function wishList1() {

										/*  let answer;
										    let YesUrl="/viewLike.jsp"; 
										   
										    


										    let NoUrl="./food-details.jsp"; */

										let answer = confirm("로그인이 필요합니다.");

										if (answer == true) {
											location.href = "/CAREIT/login.do";
										} else if (answer != true) {
											location.href = "/login/login.jsp";
										}

									}
								</script>
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
									<p class="text-center"></p>
									<!-- Order Menu List #1 Starts -->
									
									1.메뉴 이름: ${menuinfo.menu } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-가격: ${menuinfo.price } <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-사진: ${menuinfo.menupic }<br><br>
									
									
									
									2.메뉴 이름: ${menuinfo.menu } &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-가격: ${menuinfo.price } <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									-사진: ${menuinfo.menupic }<br>


									<div class="spacer"></div>
									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<div class="order-menu-item clearfix"></div>
									<div class="order-menu-item clearfix"></div>
									<div class="order-menu-item clearfix"></div>
									<!-- Order Menu List #1 Ends -->
									<!-- Spacer Starts -->
									<div class="spacer big"></div>
									<!-- Spacer Ends -->
									<!-- Order Menu List #2 Starts -->

									<div class="order-menu-item clearfix"></div>
									<div class="order-menu-item clearfix"></div>
									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<!-- Order Menu List #2 Ends -->
									<!-- Spacer Starts -->
									<div class="spacer big"></div>
									<!-- Spacer Ends -->
									<!-- Order Menu List #3 Starts -->

									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<div class="order-menu-item clearfix">
										<div class="float-left"></div>
										<div class="float-right"></div>
									</div>
									<!-- Order Menu List #3 Ends -->
								</div>
								<!-- Order Menu Tab Pane Ends -->
								<!-- Pagination Starts -->
								<div class="pagination-block clearfix"></div>
								<!-- Pagination Ends -->
								<!-- Banners Starts -->
								<div class="row text-center">
									<div class="col-6"></div>
									<div class="col-6"></div>
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
									<p class="text-center"></p>
									<!-- Spacer Starts -->
									<div class="spacer big"></div>
									<!-- Spacer Ends -->

									<!-- Delivery Hours Starts -->


									<!-- Delivery Hours Ends -->

									<!-- Takeway Hours Starts -->

									<!-- Takeway Hours Ends -->


							
							가게주소: ${storeinfo.address }<br>
							영업시간: ${storeinfo.time }<br>
					        쉬는 날: ${storeinfo.closeddays }<br>
							전화번호: ${storeinfo.callnumber }<br>



									<!-- Spacer Starts -->
									<div class="spacer"></div>
									<!-- Spacer Ends -->
									<!-- Banners Starts -->
									<div class="row text-center">
										<div class="col-6"></div>
										<div class="col-6"></div>
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

									<div class="overlay animation"></div>
								</div>
							</li>
							<!-- Gallery Image #1 Ends -->
							<!-- Gallery Image #2 Starts -->
							<li class="col-md-4 col-sm-6">
								<div class="hover-content text-center">

									<div class="overlay animation"></div>
								</div>
							</li>
							<!-- Gallery Image #2 Ends -->
							<!-- Gallery Image #3 Starts -->
							<li class="col-md-4 col-sm-6">
								<div class="hover-content text-center">


									<div class="overlay animation"></div>
								</div>
							</li>
							<!-- Gallery Image #3 Ends -->
							<!-- Gallery Image #4 Starts -->
							<li class="col-md-4 col-sm-6">
								<div class="hover-content text-center">
									<div class="overlay animation"></div>
								</div>
							</li>
							<!-- Gallery Image #4 Ends -->
							<!-- Gallery Image #5 Starts -->
							<li class="col-md-4 col-sm-6">
								<div class="hover-content text-center">


									<div class="overlay animation"></div>
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
											class="btn btn-link zoom"><i class="fa fa-search-plus"></i></a>
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
											class="btn btn-link zoom"><i class="fa fa-search-plus"></i></a>
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
											class="btn btn-link zoom"><i class="fa fa-search-plus"></i></a>
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
											class="btn btn-link zoom"><i class="fa fa-search-plus"></i></a>
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
												<ul class="list-unstyled list-inline rating-star float-left">
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
												</ul>
												
												<%-- <c:if test="${sessionScope.sessionID !=null}"> --%>
														
															
												<c:when test="${sessionScope.sessionID !=null}">	
												
												
														
															
																<input type="hidden" name="reviewinfo"
																	value="${reviewinfo.reviewno}"> <input type="hidden"
																	name="userno" value="${sessionScope.sessionID}"
																	class="btn btn-black animation text-uppercase float-right" onclick="wishList1();">
												</c:when>
												<c:otherwise>
												</c:otherwise>
												
												
												
												
											







											</div>
										</form>
									</div>
									<!-- Reviews Form Box Ends -->
									<!-- Reviews List Starts -->
										<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool"
						data-widget="collapse" data-toggle="tooltip" title="Collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"
						data-toggle="tooltip" title="Remove">
						<i class="fa fa-times"></i>
					</button>
				</div>
			</div>
			<div class="box-body">




			

									
									<div class="reviews-box">

										<style type="text/css">
#wrap {
	width: 800px;
	margin: 0 auto 0 auto;
}

#detailBoard {
	text-align: center;
}

#title {
	height: 16;
	font-family: '돋움';
	font-size: 12;
	text-align: center;
	background-color: #F7F7F7;
}

#btn {
	font-family: '돋움';
	font-size: 14;
	text-align: center;
}
</style>

										<script type="text/javascript">
											function changeView(value) {
												if (value == 0)
													location.href = 'BoardListAction.bo?page=${pageNum}';
												else if (value == 1)
													location.href = 'BoardReplyFormAction.bo?num=${board.board_num}&page=${pageNum}';
											}

											function doAction(value) {
												if (value == 0) // 수정
													location.href = "BoardUpdateFormAction.bo?num=${board.board_num}&page=${pageNum}";
												else if (value == 1) // 삭제
													location.href = "BoardDeleteAction.bo?num=${board.board_num}";
											}

											var httpRequest = null;

											// httpRequest 객체 생성
											function getXMLHttpRequest() {
												var httpRequest = null;

												if (window.ActiveXObject) {
													try {
														httpRequest = new ActiveXObject(
																"Msxml2.XMLHTTP");
													} catch (e) {
														try {
															httpRequest = new ActiveXObject(
																	"Microsoft.XMLHTTP");
														} catch (e2) {
															httpRequest = null;
														}
													}
												} else if (window.XMLHttpRequest) {
													httpRequest = new window.XMLHttpRequest();
												}
												return httpRequest;
											}

											// 댓글 등록
											function writeCmt() {
												var form = document
														.getElementById("writeCommentForm");

												var board = form.reviewinfo.value
												var id = form.userno.value
												var content = form.reviewcontents.value;

												if (!content) {
													alert("내용을 입력하세요.");
													return false;
												} else {
													var param = "reviewinfo="
															+ board
															+ "&userno="
															+ id
															+ "&reviewcontents="
															+ content;

													httpRequest = getXMLHttpRequest();
													httpRequest.onreadystatechange = checkFunc;
													httpRequest
															.open(
																	"POST",
																	"CommentWriteAction.co",
																	true);
													httpRequest
															.setRequestHeader(
																	'Content-Type',
																	'application/x-www-form-urlencoded;charset=EUC-KR');
													httpRequest.send(param);
												}
											}

											function checkFunc() {
												if (httpRequest.readyState == 4) {
													// 결과값을 가져온다.
													var resultText = httpRequest.responseText;
													if (resultText == 1) {
														document.location
																.reload(); // 상세보기 창 새로고침
													}
												}
											}
										</script>


										
													<tr align="center" valign="middle">
														<td colspan="5"><c:if
																test="${sessionScope.sessionID !=null}">
																<c:if test="${sessionScope.sessionID == board.board_id}">
																	<input type="button" value="수정" onclick="doAction(0)">
																	<input type="button" value="삭제" onclick="doAction(1)">
																</c:if>
																<input type="button" value="답글" onclick="changeView(1)">
															</c:if> <input type="button" value="목록" onclick="changeView(0)">
														</td>
														<!-- javascript:location.href='BoardListAction.bo?page=${pageNum}' -->
													</tr>
												</table>
											</div>
											<br> <br>

											<!-- 댓글 부분 -->
											<div id="comment">
												<table border="1" bordercolor="lightgray">
													<!-- 댓글 목록 -->
													<c:if test="${requestScope.commentList != null}">
														<c:forEach var="comment"
															items="${requestScope.commentList}">

															<tr>
																<!-- 아이디, 작성날짜 -->
																<td width="150">
																	<div>
																		${comment.userno}<br> <font size="2"
																			color="lightgray">${comment.reviewdate}</font>
																	</div>
																</td>
																<!-- 본문내용 -->
																<td width="550">
																	<div class="text_wrapper">
																		${comment.reviewcontents}</div>
																</td>
																<!-- 버튼 -->
																<td width="100">
																	<div id="btn" style="text-align: center;">
																		<a href="#">[답변]</a><br>
																		<!-- 댓글 작성자만 수정, 삭제 가능하도록 -->
																		<c:if
																			test="${comment.userno == sessionScope.sessionID}">
																			<a href="#">[수정]</a>
																			<br>
																			<a href="#">[삭제]</a>
																		</c:if>
																	</div>
																</td>
															</tr>

														</c:forEach>
													</c:if>

													
																<!-- 아이디-->
																
																<!-- 본문 작성-->
																<td width="550">
																	
																</td>
																<!-- 댓글 등록 버튼 -->
																<td width="100">
																	<div id="btn" style="text-align: center;">
																		
																	</div>
																</td>
															</form>
														</tr>
												

												</table>
											</div>
										</div>
										<!-- Review #1 Starts -->
										<div class="review-list">
											<div class="clearfix">
												<div class="float-left"></div>



											</div>
											<div class="review-list-content"></div>
										</div>
										<!-- Review #1 Ends -->
										<!-- Review #2 Starts -->
										<div class="review-list">
											<div class="clearfix">
												<div class="float-left"></div>

											</div>
											<div class="review-list-content"></div>
										</div>
										<!-- Review #2 Ends -->
										<!-- Review #3 Starts -->
										<div class="review-list">
											<div class="clearfix">
												<div class="float-left"></div>

											</div>
											<div class="review-list-content"></div>
										</div>
										<!-- Review #3 Ends -->
										<!-- Review #4 Starts -->
										<div class="review-list">
											<div class="clearfix">
												<div class="float-left"></div>

											</div>
											<div class="review-list-content"></div>
										</div>
										<!-- Review #4 Ends -->
									</div>
									<!-- Reviews List Ends -->
									<!-- Spacer Starts -->
									<div class="spacer-1 condensed"></div>
									<!-- Spacer Ends -->
									<!-- Banners Starts -->
									<div class="row text-center">
										<div class="col-6"></div>
										<div class="col-6"></div>
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
												<label class="sr-only" for="reachus-email">E-mail</label> <input
													type="email" class="form-control rounded-0"
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
															<label class="sr-only" for="reachus-date">Date</label> <input
																type="text"
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
												<textarea class="form-control rounded-0" id="reachus-info"
													placeholder="Your Information" rows="5"></textarea>
											</div>
											<div class="clearfix">
												<button type="submit"
													class="btn btn-prime text-uppercase animation pull-right">Submit</button>
											</div>
										</form>
									</div>
									<!-- Reach Form Ends -->
									<!-- Banners Starts -->
									<div class="row text-center"></div>
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
				<h6 class="text-center">가게 편의정보</h6>
				<!-- Heading Ends -->
				<!-- Order Content Starts -->


					총 좌석 수: <span class="float-right text-spl-color">${detailinfo.totalseat }개</span><br>
					충전기가 있는 좌석 수: <span class="float-right text-spl-color">${detailinfo.socketseat }개</span><br>
					디저트: <span class="float-right text-spl-color">${detailinfo.dessertsales }</span><br>
					테라스: <span class="float-right text-spl-color">${detailinfo.terrace }</span><br>
					루프탑: <span class="float-right text-spl-color">${detailinfo.rooftop }</span><br>
					와이파이: <span class="float-right text-spl-color">${detailinfo.wifi }</span><br>
					애견동반: <span class="float-right text-spl-color">${detailinfo.companiondog }</span><br>
					주차공간: <span class="float-right text-spl-color">${detailinfo.parkingspace }</span><br>
					노키즈존: <span class="float-right text-spl-color">${detailinfo.nokidszone }</span><br>
					흡연존: <span class="float-right text-spl-color">${detailinfo.smokingarea }</span><br>
					
				

				<div class="side-block-order-content">
					<!-- Order Item List Starts -->


				
					</ul>
					<!-- Order Item List Ends -->
					<!-- Order Item Total Starts -->

					<!-- Order Item Total Ends -->

				</div>
				<!-- Order Content Ends -->
			</div>
			<!-- Your Order Ends -->
			<!-- Sponsors Banners Starts -->


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
					<label class="sr-only" for="newsletter-city">Please Select
						Your City</label> <input type="text" class="form-control"
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
								have read &amp; accepted the terms and conditions and privacy
								policy</span>
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





<%@ include file="../include/footer.jspf"%>