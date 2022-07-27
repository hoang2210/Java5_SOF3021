<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon"
	href="${ pageContext.request.contextPath }/karma-master/img/fav.png">
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
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/linearicons.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/themify-icons.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/bootstrap.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/owl.carousel.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/nice-select.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/nouislider.min.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/ion.rangeSlider.css" />
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/ion.rangeSlider.skinFlat.css" />
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/magnific-popup.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/karma-master/css/main.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title .btn-group {
	float: right;
}

.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
/* table.table tr th:first-child {
	width: 60px;
} */
table.table tr th:last-child {
	width: 100px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #F44336;
}

table.table td i {
	font-size: 19px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
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
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}

.custom-checkbox input[type="checkbox"] {
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}

.custom-checkbox label:before {
	width: 18px;
	height: 18px;
}

.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 700px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}
</style>
<script>
	$(document).ready(function() {
		// Activate tooltip
		$('[data-toggle="tooltip"]').tooltip();

		// Select/Deselect checkboxes
		var checkbox = $('table tbody input[type="checkbox"]');
		$("#selectAll").click(function() {
			if (this.checked) {
				checkbox.each(function() {
					this.checked = true;
				});
			} else {
				checkbox.each(function() {
					this.checked = false;
				});
			}
		});
		checkbox.click(function() {
			if (!this.checked) {
				$("#selectAll").prop("checked", false);
			}
		});
	});
</script>
</head>


<body id="category">

	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.html"><img
						src="${ pageContext.request.contextPath }/karma-master/img/logo.png"
						alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link"
								href="/product">Shop</a></li>
							<li class="nav-item active"><a class="nav-link"
								href="/product/crud">Product</a></li>
							<li class="nav-item"><a class="nav-link" href="/shop/order">Order</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="/shop/cart" class="cart"><span
									class="ti-bag"></span></a></li>
							<li class="nav-item">
								<button class="search">
									<span class="lnr lnr-magnifier" id="search"></span>
								</button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form:form action="/product/nameReturnList/${productName}" method="GET" modelAttribute="product" class="d-flex justify-content-between">
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
			<div
				class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Product Page</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	
	<!-- Start alert area -->
	<c:if test="${ !empty sessionScope.message }">
		<div class="container-xl">
			<div class="alert alert-success" style="font-size: 16px" role="alert">
 				${ sessionScope.message }
			</div>
		</div>
		<c:remove var="message" scope="session"/>
	</c:if>
	<c:if test="${ !empty sessionScope.errorSearch }">
				<div class="col-xl-12 col-lg-11 col-md-10 text-center" style="margin-bottom: 80px">
					<h3 style="font-family: Times New Roman; font-weight: bold">${ sessionScope.errorSearch }</h3>
					<span>${ sessionScope.errorSearch2 }</span>
				</div>

			</c:if>
			
			<c:if test="${ !empty sessionScope.messageSearch }">
				<div class="container-xl">
			<div class="alert alert-success" style="font-size: 16px" role="alert">
 				${ sessionScope.messageSearch }
			</div>
		</div>
			</c:if>
	<!-- End alert area -->
	<c:if test="${ empty sessionScope.errorSearch }">
	<div class="container-xl">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-6">
							<h2 class="text-white">
								Manage <b>Products</b>
							</h2>
						</div>
						<div class="col-sm-6">
							<a href="#addEmployeeModal" class="btn btn-success"
								data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add
									New Product</span></a>
						</div>
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>Mã sản phẩm</th>
							<th>Tên sản phẩm</th>
							<th>Đơn giá</th>
							<th>Số lượng</th>
							<th>Nhà sản xuất</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${ !empty sessionScope.messageSearch }">
						<c:forEach items="${products}" var="product">
							<tr>
								<td>${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.price}</td>
								<td>${product.quantity}</td>
								<td>${product.distributor}</td>
								<td>
									<a href="#editEmployeeModal${product.productId}" class="edit" data-toggle="modal">
										<i class="material-icons"data-toggle="tooltip" title="Edit">&#xE254;</i>
									</a> 
									<!-- Edit Modal HTML -->
	<div id="editEmployeeModal${product.productId}" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form action="/product/update" method="POST"
					modelAttribute="product">
					<div class="modal-header">
						<h4 class="modal-title">Edit Product</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="row">
						<div class="form-group col-6">
							<label>Mã sản phẩm</label>
							<form:input type="hidden" path="productId" class="form-control" value="${product.productId}"></form:input>
							<input type="text" value="${product.productId}" class="form-control" disabled="disabled">
						</div>
						<div class="form-group col-6">
							<label>Tên sản phẩm</label>
							<form:input path="productName" class="form-control" value="${product.productName}"></form:input>
						</div>
						</div>
						<div class="row">
						<div class="form-group col-6">
							<label>Giá sản phẩm</label>
							<form:input path="price" class="form-control" value="${product.price}"></form:input>
						</div>
						<div class="form-group col-6">
							<label>Phân loại</label>
							<form:input path="classify" class="form-control" value="${product.classify}"></form:input>
						</div>
						</div>
						<div class="row">
						<div class="form-group col-6">
							<label>Size</label>
							<form:input path="size" class="form-control" value="${product.size}"></form:input>
						</div>
						<div class="form-group col-6">
							<label>Số lượng</label>
							<form:input path="quantity" class="form-control"  value="${product.quantity}"></form:input>
						</div>
						</div>
						<div class="row">
							<div class="form-group col-6">
							<label>Nhà sản xuất</label>
							<form:input path="distributor" class="form-control" value="${product.distributor}"></form:input>
						</div>
						<div class="form-group col-6">
							<label>Ảnh sản phẩm</label>
							<form:input type="file" name="img" path="productImg" value="${product.productImg}"></form:input>
						</div>
						</div>	
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Update">
					</div>
				</form:form>
			</div>
		</div>
	</div>
	 <a href="#deleteEmployeeModal${product.productId}"
									class="delete" data-toggle="modal"><i
										class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
									<!-- Delete Modal HTML -->
									<div id="deleteEmployeeModal${product.productId}"
										class="modal fade">
										<div class="modal-dialog" style="max-width: 500px">
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
														<div class="row">
															<img
																src="${ pageContext.request.contextPath }/images/ays.gif"
																class="img-fluid rounded-start pb-3" alt="">
														</div>
														<p>Are you sure you want to delete these Records?</p>
														<p class="text-warning">
															<small>This action cannot be undone.</small>
														</p>
													</div>
													<div class="modal-footer">
														<input type="button" class="btn btn-default"
															data-dismiss="modal" value="Cancel"> <a
															href="/product/delete/${product.productId}"
															class="btn btn-danger text-white">Delete</a>
													</div>
												</form>
											</div>
										</div>
									</div></td>
							</tr>
						</c:forEach>
					</c:if>
						<c:forEach items="${page.getContent()}" var="product">
							<tr>
								<td>${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.price}</td>
								<td>${product.quantity}</td>
								<td>${product.distributor}</td>
								<td>
									<a href="#editEmployeeModal${product.productId}" class="edit" data-toggle="modal">
										<i class="material-icons"data-toggle="tooltip" title="Edit">&#xE254;</i>
									</a> 
									<!-- Edit Modal HTML -->
	<div id="editEmployeeModal${product.productId}" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form action="/product/update" method="POST"
					modelAttribute="product">
					<div class="modal-header">
						<h4 class="modal-title">Edit Product</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="row">
						<div class="form-group col-6">
							<label>Mã sản phẩm</label>
							<form:input type="hidden" path="productId" class="form-control" value="${product.productId}"></form:input>
							<input type="text" value="${product.productId}" class="form-control" disabled="disabled">
						</div>
						<div class="form-group col-6">
							<label>Tên sản phẩm</label>
							<form:input path="productName" class="form-control" value="${product.productName}"></form:input>
						</div>
						</div>
						<div class="row">
						<div class="form-group col-6">
							<label>Giá sản phẩm</label>
							<form:input path="price" class="form-control" value="${product.price}"></form:input>
						</div>
						<div class="form-group col-6">
							<label>Phân loại</label>
							<form:input path="classify" class="form-control" value="${product.classify}"></form:input>
						</div>
						</div>
						<div class="row">
						<div class="form-group col-6">
							<label>Size</label>
							<form:input path="size" class="form-control" value="${product.size}"></form:input>
						</div>
						<div class="form-group col-6">
							<label>Số lượng</label>
							<form:input path="quantity" class="form-control"  value="${product.quantity}"></form:input>
						</div>
						</div>
						<div class="row">
							<div class="form-group col-6">
							<label>Nhà sản xuất</label>
							<form:input path="distributor" class="form-control" value="${product.distributor}"></form:input>
						</div>
						<div class="form-group col-6">
							<label>Ảnh sản phẩm</label>
							<form:input type="file" name="img" path="productImg" value="${product.productImg}"></form:input>
						</div>
						</div>	
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Update">
					</div>
				</form:form>
			</div>
		</div>
	</div>
	 								<a href="#deleteEmployeeModal${product.productId}"
									class="delete" data-toggle="modal"><i
										class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
									<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal${product.productId}"
										class="modal fade">
										<div class="modal-dialog" style="max-width: 500px">
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
														<div class="row">
															<img
																src="${ pageContext.request.contextPath }/images/ays.gif"
																class="img-fluid rounded-start pb-3" alt="">
														</div>
														<p>Are you sure you want to delete these Records?</p>
														<p class="text-warning">
															<small>This action cannot be undone.</small>
														</p>
													</div>
													<div class="modal-footer">
														<input type="button" class="btn btn-default"
															data-dismiss="modal" value="Cancel"> <a
															href="/product/delete/${product.productId}"
															class="btn btn-danger text-white">Delete</a>
													</div>
												</form>
											</div>
										</div>
									</div></td>
							</tr>
						</c:forEach>


					</tbody>
				</table>
				<c:if test="${ !empty sessionScope.messageSearch }">
					<div class="clearfix">
						<div class="hint-text">
							Found <b>${ sumProduct }</b> products
						</div>
					</div>
				</c:if>
				
				<c:if test="${ empty sessionScope.errorSearch }">
				<c:if test="${ empty sessionScope.messageSearch }">
				<!-- Start Filter Bar -->
				<div class="clearfix">
					<div class="hint-text">
							Showing <b>5</b> out of <b>${ sumProduct }</b> products
					</div>
					<ul class="pagination">
						<c:if test="${page.getNumber() > 0 }">
							<li class="page-item" style="min-width: 65px"><a href="/product/crud?pageNumber=${page.getNumber() - 1}"
								style="min-width: 65px" class="page-link">Previous</a></li>
						</c:if>
						<li class="page-item"><a href="#" class="page-link">${ page.getNumber() + 1}/${page.getTotalPages()}</a></li>
						<c:if test="${page.getNumber() < page.getTotalPages() - 1}">
							<li class="page-item"><a href="/product/crud?pageNumber=${page.getNumber() + 1}" class="page-link">Next</a></li>
						</c:if>
					</ul>
				</div>
				<!-- End Filter Bar -->
				</c:if>
				</c:if>
				
			</div>
		</div>
	</div>
	</c:if>
	<!-- Add Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form:form action="/product/new" method="POST"
					modelAttribute="product">
					<div class="modal-header">
						<h4 class="modal-title">Add Product</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="form-group col-6">
								<label>Tên sản phẩm</label>
								<form:input path="productName" class="form-control"></form:input>
							</div>
							<div class="form-group col-6">
								<label>Giá sản phẩm</label>
								<form:input path="price" class="form-control"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-6">
								<label>Phân loại</label>
								<form:input path="classify" class="form-control"></form:input>
							</div>
							<div class="form-group col-6">
								<label>Size</label>
								<form:input path="size" class="form-control"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-6">
								<label>Số lượng</label>
								<form:input path="quantity" class="form-control"></form:input>
							</div>
							<div class="form-group col-6">
								<label>Nhà sản xuất</label>
								<form:input path="distributor" class="form-control"></form:input>
							</div>
						</div>
						<div class="form-group">
							<label>Ảnh sản phẩm</label>
							<form:input type="file" path="productImg"></form:input>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Delete Employee</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to delete these Records?</p>
						<p class="text-warning">
							<small>This action cannot be undone.</small>
						</p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-danger" value="Delete">
					</div>
				</form>
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