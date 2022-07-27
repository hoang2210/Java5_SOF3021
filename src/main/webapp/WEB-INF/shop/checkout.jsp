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
</head>


	<body>

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
							<li class="nav-item"><a class="nav-link" href="/product">Shop</a></li>
							<li class="nav-item"><a class="nav-link" href="/product/crud">Product</a></li>
							<li class="nav-item"><a class="nav-link" href="/shop/order">Order</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item active"><a href="/shop/cart" class="cart"><span class="ti-bag"></span></a></li>
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
				<form action="#" method="GET" class="d-flex justify-content-between">
					<input class="form-control" id="search_input" placeholder="Search Here"></input>
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Checkout</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
    
    
     <!--================Checkout Area =================-->
    <section class="checkout_area section_gap">
        <div class="container">
           
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="row contact_form">  
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h3>Shipping Details</h3>
                                    
                                </div>
                                <form action="/shop/pay">
                                <div>
                                    <input type="text" class="form-control" id="number" name="number" placeholder="Phone number">
                                </div>
                                <textarea class="form-control" id="message" rows="1"
                                    placeholder="Order Notes"></textarea>
                                    <button class="primary-btn">Proceed to Paypal</button>
                                 </form>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>Your Order</h2>
                            <ul class="list">                 	
                                <li><a href="#">Product <span>Total</span></a></li>
                                <c:forEach items="${carts}"  var="cart">
                                	<li>
                                		<a href="/product/${cart.value.product.productId}">
                                			<img src="${ pageContext.request.contextPath }/images/${cart.value.product.productImg}" style="max-width: 40px" alt=""> 
                                			<span class="middle">x ${cart.value.quantity}</span> 
                                			<span class="last">$${cart.value.price * cart.value.quantity}</span>
                                		</a>
                                	</li>
                                
                                </c:forEach>
                            </ul>
                            <ul class="list list_2">
                                <li><a href="#">Subtotal <span>$${ total }</span></a></li>
                                <li><a href="#">Shipping <span>Flat rate: $00.00</span></a></li>
                                <li><a href="#">Total <span>$${ total }</span></a></li>
                            </ul>
                                                   
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Checkout Area =================-->
    
    
     <!-- start footer Area -->
	<footer class="footer-area section_gap" style="margin-top: 100px">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Us</h6>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore dolore magna aliqua.</p>
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

									<input class="form-control" name="EMAIL"
										placeholder="Enter Email" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Email '" required=""
										type="email">


									<button class="click-btn btn btn-default">
										<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
									</button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a"
											tabindex="-1" value="" type="text">
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
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i1.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i2.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i3.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i4.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i5.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i6.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i7.jpg"
								alt=""></li>
							<li><img
								src="${ pageContext.request.contextPath }/karma-master/img/i8.jpg"
								alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-dribbble"></i></a> <a href="#"><i
								class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div
				class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<script
		src="${ pageContext.request.contextPath }/karma-master/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/vendor/bootstrap.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/jquery.nice-select.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/jquery.sticky.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/nouislider.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/countdown.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/gmaps.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/karma-master/js/main.js"></script>
</body>

</html>
    