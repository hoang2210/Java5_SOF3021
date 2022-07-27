<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="${ pageContext.request.contextPath }/karma-master/img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Karma Shop</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/linearicons.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/font-awesome.min.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/themify-icons.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/bootstrap.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/owl.carousel.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/nice-select.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/nouislider.min.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/magnific-popup.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/karma-master/css/main.css">

<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}


</style>
</head>


	<body id="category">
	
	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.html"><img src="${ pageContext.request.contextPath }/karma-master/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/product">Shop</a></li>
							<li class="nav-item"><a class="nav-link" href="/product/crud">Product</a></li>
							<li class="nav-item"><a class="nav-link" href="/shop/order">Order</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="/shop/cart" class="cart"><span class="ti-bag"></span></a></li>
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form:form action="/product/name/${productName}" method="GET" modelAttribute="product" class="d-flex justify-content-between">
					<form:input path="productName" class="form-control" id="search_input" placeholder="Search Here"></form:input>
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form:form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Shop Page</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row">
			<c:if test="${ !empty sessionScope.errorSearch }">
				<div class="col-xl-12 col-lg-11 col-md-10 text-center" style="margin-bottom: 80px">
					<h3 style="font-family: Times New Roman; font-weight: bold">${ sessionScope.errorSearch }</h3>
					<span>${ sessionScope.errorSearch2 }</span>
				</div>
			</c:if>
			<c:if test="${ !empty sessionScope.messageSearch }">
				<div class="col-xl-12 col-lg-11 col-md-10">
					<span>${ sessionScope.messageSearch }</span>
				</div>
			</c:if>
			<div class="col-xl-12 col-lg-11 col-md-10">
				<c:if test="${ empty sessionScope.errorSearch }">
				<c:if test="${ empty sessionScope.messageSearch }">
				<!-- Start Filter Bar -->
				<div class="clearfix">
					<div class="hint-text">
							Showing <b>6</b> out of <b>${ sumProduct }</b> products
					</div>
					<ul class="pagination">
						<c:if test="${page.getNumber() > 0 }">
							<li class="page-item" style="min-width: 65px"><a href="/product?pageNumber=${page.getNumber() - 1}"
								style="min-width: 65px" class="page-link">Previous</a></li>
						</c:if>
						<li class="page-item"><a href="#" class="page-link">${ page.getNumber() + 1} / ${page.getTotalPages()}</a></li>
						<c:if test="${page.getNumber() < page.getTotalPages() - 1}">
							<li class="page-item"><a href="/product?pageNumber=${page.getNumber() + 1}" class="page-link">Next</a></li>
						</c:if>
					</ul>
				</div>
				
				<!-- End Filter Bar -->
				</c:if>
				</c:if>
				<c:if test="${ !empty sessionScope.messageSearch }">
					<div class="clearfix">
						<div class="hint-text">
							Found <b>${ sumProduct }</b> products
						</div>
					</div>
					
					<section class="lattest-product-area pb-40 category-list">
					<div class="row">
					<c:forEach items="${products}" var="product">
					<%-- <c:forEach items="${products}" var="product"> --%>
						<!-- single product -->
						<div class="col-lg-4 col-md-6">
							<div class="single-product">
								<a href="/product/${product.productId}"><img class="img-fluid" src="${ pageContext.request.contextPath }/images/${product.productImg}" alt=""></a>
								<div class="product-details">
									<a href="/product/${product.productId}">
									<h6 style="font-family: Arial">${product.productName}</h6></a>
									<div class="price">
										<h6 style="color: red">${product.price}</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
									<div class="prd-bottom">
										<a href="/shop/cart/${product.productId}" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">add to bag</p>
										</a>
										<a href="/product/${product.productId}" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">view more</p>
										</a>
									</div>
								</div>
							</div>
						</div>
						<%-- </c:forEach> --%>
						</c:forEach>
					</div>
				</section>
				</c:if>
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
					<div class="row">
					<c:forEach items="${page.getContent()}" var="product">
					<%-- <c:forEach items="${products}" var="product"> --%>
						<!-- single product -->
						<div class="col-lg-4 col-md-6">
							<div class="single-product">
								<a href="/product/${product.productId}"><img class="img-fluid" src="${ pageContext.request.contextPath }/images/${product.productImg}" alt=""></a>
								<div class="product-details">
									<a href="/product/${product.productId}">
									<h6 style="font-family: Arial">${product.productName}</h6></a>
									<div class="price">
										<h6 style="color: red">${product.price}</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
									<div class="prd-bottom">
										<a href="/shop/cart/${product.productId}" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">add to cart</p>
										</a>
										<a href="/product/${product.productId}" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">view more</p>
										</a>
									</div>
								</div>
							</div>
						</div>
						<%-- </c:forEach> --%>
						</c:forEach>
					</div>
				</section>
				<!-- End Best Seller -->
				
			</div>
		</div>
	</div>

	<c:if test="${ !empty sessionScope.errorSearch }">
		<c:remove var="errorSearch" scope="session"/>
		<c:remove var="errorSearch2" scope="session"/>
	</c:if>
	<c:if test="${ !empty sessionScope.messageSearch }">
		<c:remove var="messageSearch" scope="session"/>
	</c:if>
	<!-- start footer Area -->
	<footer class="footer-area section_gap" style="margin-top: 100px">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Us</h6>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
							ut labore dolore
							magna aliqua.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>Stay update with our latest</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL" placeholder="Enter Email"
										onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
										required="" type="email">


									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right"
											aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
											type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
													<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
												</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="img/i1.jpg" alt=""></li>
							<li><img src="img/i2.jpg" alt=""></li>
							<li><img src="img/i3.jpg" alt=""></li>
							<li><img src="img/i4.jpg" alt=""></li>
							<li><img src="img/i5.jpg" alt=""></li>
							<li><img src="img/i6.jpg" alt=""></li>
							<li><img src="img/i7.jpg" alt=""></li>
							<li><img src="img/i8.jpg" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is
					made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com"
						target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	
	<!-- End footer Area -->

	<script src="${ pageContext.request.contextPath }/karma-master/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/vendor/bootstrap.min.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/jquery.ajaxchimp.min.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/jquery.nice-select.min.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/jquery.sticky.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/nouislider.min.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/countdown.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/jquery.magnific-popup.min.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/gmaps.min.js"></script>
	<script src="${ pageContext.request.contextPath }/karma-master/js/main.js"></script>
</body>

</html>