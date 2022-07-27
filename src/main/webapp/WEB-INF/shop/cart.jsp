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
                    <h1>Shopping Cart</h1>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
	
	
	
    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
       		<c:if test="${ !empty sessionScope.Ealert }">
				<div class="container-xl">
					<div class="alert alert-danger text-center" style="font-size: 16px" role="alert">
 						${ sessionScope.Ealert }
					</div>
				</div>
				<c:remove var="Ealert" scope="session"/>
			</c:if>
        	<c:if test="${ empty carts }">
				<div class="container-xl">
					<div class="alert alert-secondary text-center" style="font-size: 16px" role="alert">
 						Giỏ hàng của bạn còn trống
					</div>
					<div class="text-center">
						<a class="gray_btn" href="/product">Mua ngay</a>
					</div>
				</div>
			</c:if>
			<c:if test="${ !empty carts }">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col" colspan="2">Quantity</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${carts}"  var="cart">
<%--                         <form:form action="/shop/cart/update" method="POST" modelAttribute="cart">
 --%>                        	
                        	
                            <tr>
                                <td>
                                    <div class="media" style="max-width: 550px">
                                    	<div class="d-flex">
                                    		<a href="/product/${cart.value.product.productId}">
                                           		<img src="${ pageContext.request.contextPath }/images/${cart.value.product.productImg}" style="max-width: 70px" alt="">
                                        	</a>
                                        </div>                       
                                        <div class="media-body">
                                        	<%-- <form:input type="hidden" path="productId" class="form-control" value="${cart.product}"></form:input> --%>
                                            <p>${cart.value.product.productName }</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h5>${cart.value.price }</h5>
                                </td>
                                <td>
                                		<form action="/shop/changeQuantity/${cart.key }">
                                	<%-- <h5>${cart.value.quantity }</h5> --%>
                                		<div class="row" style="margin-left: 3px">
                                			<input type="text" onchange="quantity()" class="form-control text-center mr-2" style="max-width: 50px" id="changeQuantity" name="quantity" value="${cart.value.quantity }" autocomplete="off">
                                    		<button class="btn btn-outline-warning mr-2">Update</button>
                                    		<a class="btn btn-outline-danger" href="/shop/deleteCart/${cart.key }" type="button" ><i class="fa fa-trash"></i></a>         
                                		</div>
                                    	                        								
									</form>
                                </td>
                                <td>
                                	
                                	
                                </td>
                                
                                <td>
                                    <h5>${cart.value.price * cart.value.quantity }</h5> 
                                </td>
                                
                            </tr>
<%--                             </form:form>
 --%>                            </c:forEach>
                            
                            <tr class="bottom_button">
                                <td>
                                    <a class="gray_btn" href="#delete" data-toggle="modal">Delete Cart</a>
                                </td>
    
                                <td>

                                </td>
                                
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <div class="cupon_text d-flex align-items-center">
                                        <input type="text" placeholder="Coupon Code">
                                        <a class="primary-btn" href="#">Apply</a>
                                        <a class="gray_btn" href="#">Close Coupon</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>

                                </td>
                                <td>

                                </td>
                                
                                <td>

                                </td>
                                <td>
                                    <h5>Subtotal</h5>
                                </td>
                                <td>
                         		
                   
                               <h5>$${total }</h5>
                               
                                    
                                </td>
                            </tr>                               
                            <tr class="out_button_area">
                                <td>

                                </td>
                           
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td style="min-width: 100px">
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="gray_btn" href="/product">Continue Shopping</a>
                                        <a class="primary-btn" href="/shop/checkout">Proceed to checkout</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            </c:if>
        </div>
    </section>
    <!--================End Cart Area =================-->
	<!-- Delete Modal HTML -->
									<div id="delete" class="modal fade">
										<div class="modal-dialog">
											<div class="modal-content">
												<form>
													<div class="modal-header">
														<h4 class="modal-title">
															<span class="text-warning">Warning: </span>Are u sure?
														</h4>
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">&times;</button>
													</div>
													<div class="modal-body">													
														<p>Do you want to delete this cart?</p>
														<p class="text-warning">
															<small>This action cannot be undone.</small>
														</p>
													</div>
													<div class="modal-footer">
														<input type="button" class="btn btn-default"
															data-dismiss="modal" value="Cancel"> 
														<a href="/shop/deletesCart"
															class="btn btn-danger text-white">Delete</a>
													</div>
												</form>
											</div>
										</div>
									</div>
									
									
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