<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="<c:url value="/resources/asset/css/root.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/resources/asset/css/grip.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/resources/asset/css/main.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/resources/asset/css/responsive.css"/>"/>
<link rel="stylesheet"
	href="<c:url value="/resources/font/fontawesome-free-6.1.2-web/css/all.min.css"/> ">
<link rel="stylesheet"
	href="<c:url value="/resources/asset/themify-icons/themify-icons.css"/>">
<link href='https://fonts.googleapis.com/css?family=Quicksand'
	rel='stylesheet'>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>

<title>DEGREY - DEGREY VIET NAM</title>
<style>
body {
	font-family: 'Quicksand', Arial, Helvetica, sans-serif;
	font-size: 62.5%;
}
</style>
</head>

<body>
	<div class="nav">
		<div class="logo">
			<img
				src="<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"/>"
				alt="">
		</div>
		<div class="nav__bar">
			<div class="nav__bar-item">
				<p>Trang chủ</p>
			</div>
			<a href="product" style="text-decoration: none;"><div class="nav__bar-item" style="height: 100%">
				<p>Sản phẩm</p>
			</div></a>
			<a href="store" style="text-decoration: none;">
			<div class="nav__bar-item" style="height: 100%">
				<p>Store</p>
			</div></a>
			<a href="intro" style="text-decoration: none;">
			<div class="nav__bar-item" style="height: 100%">
				<p>Giới thiệu</p>
			</div></a>
			

		</div>
		<div class="header__info">
			<div class="header__info-search">
				<div class="header__info-search__icon">
					<i class="fa-solid fa-magnifying-glass"></i>
				</div>
				<div class="header__info-search__descrition">Tìm kiếm sản phẩm</div>
			</div>
			<div class="header__info-item__adder">

				<i class="ti-shopping-cart"></i>
				<div class="a">Giỏ hàng</div>

			</div>
		</div>
		<div class="header__info-items-lists hidden">
			<div class="header-header__info-items-lists">GIỎ HÀNG</div>
			<div class="lists-item-header__info-items-lists">
				<div class="item-header__info-items-lists">
					<div class="item-cart__img">
						<img
							src="<c:url value="/resources/asset/image/Screenshot (203).png"></c:url>"
							alt="">
					</div>
					<div class="item-cart__sort-discrition">
						<div class="left-item-cart__sort-discrition">
							<a href="">Áo Xoài YangHo - AXYH</a>
							<p>L</p>
							<div class="control-quantity">
								<i class="fa-solid fa-circle-minus"></i>
								<p>1</p>
								<i class="fa-solid fa-circle-plus"></i>
							</div>
						</div>
						<div class="right-item-cart__sort-discrition">
							<i class="fa-solid fa-xmark"></i>
							<p>
								250,000 <a href="">đ</a>
							</p>
						</div>
					</div>
				</div>
				<div class="lists-item-header__info-items-lists">
					<div class="item-header__info-items-lists">
						<div class="item-cart__img">
							<img
								src="<c:url value="/resources/asset/image/e0ab08191d77df298666_ccc23b5c69e44776bcca81f1a164ada8_small.webp"/>"
								alt="">
						</div>
						<div class="item-cart__sort-discrition">
							<div class="left-item-cart__sort-discrition">
								<a href="">Áo Xoài YangHo - AXYH</a>
								<p>L</p>
								<div class="control-quantity">
									<i class="fa-solid fa-circle-minus"></i>
									<p>1</p>
									<i class="fa-solid fa-circle-plus"></i>
								</div>
							</div>
							<div class="right-item-cart__sort-discrition">
								<i class="fa-solid fa-xmark"></i>
								<p>
									250,000 <a href="">đ</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-header__info-items-lists">
				<div class="total-price">
					<p>TỔNG TIỀN:</p>
					<p style="margin-left: auto; color: red; font-weight: 600;">500,000₫</p>
				</div>
				<button>XEM GIỎ HÀNG</button>
			</div>
		</div>
		<div class="img-nav__bar"></div>
		<div class="footer__header"></div>
		<div class="search hidden">
			<div class="search-logo">
				<img
					src='<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"></c:url>'
					alt="">
			</div>
			<div class="body-search">
			
				<div class="input-search">
				  <form action="search" method="get" class="form">
				     <button type="submit" style="width: 5%; height: 100%; border: none; text-align: center; background-color: white; margin-left: 5px;"><i class="fa-solid fa-magnifying-glass" style="text-align: center; font-size: 1.5rem; background-color: white; color: #c5cee0;"></i></button>
				     <input type="text" name="keyword" class="keyword" style="height: 100%; width: 90%;  border: none; outline: none; height: 40px; font-size: 1.4rem; margin-left: 20px;" placeholder="Tìm kiếm sản phẩm...">
				  </form>
				</div>
				<div class="list-items__search">
					<h6>Gợi ý cho bạn:</h6>
					<p>ÁO | CLOTHES</p>
					<p>Áo khoác | Jacket</p>
					<p>Áo thun | Tshirt</p>
					<p>Áo tay dài | Sweater</p>
					<p>Áo trùm đầu | Hoodie</p>
					<p>Sơ mi | Shirt</p>
					<p>QUẦN | PANTS</p>
					<p>Quần dài | Pants</p>
					<p>Quần ngắn | Short</p>
					<p>PHỤ KIỆN | ACCESSORIES</p>
					<p>Ba lô | Backpacks</p>
					<p>Túi | Bag</p>
					<p>Ví | Wallet</p>
				</div>
			</div>
			<div class="button-exit">
				<i class="fa-solid fa-xmark"></i>
			</div>

		</div>
	</div>
	<div class="app">
		<div class="layer hidden"></div>
		<div class="header">

			<div class="header-main hidden">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img
								src='<c:url value="/resources/asset/image/z3501713730516_ecdca19991383a93f017b4eeba2283c7_e50ced1a6d4b413cb9161174b9cb90dd.jpg"></c:url>'
								class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img
								src="<c:url value="/resources/asset/image/z3501713739079_5820347ae57ca9e8be01b48c3c88026f_c496f49fd5154691848c34dfa0470dfc.jpg"/>"
								class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img
								src="<c:url value="/resources/asset/image/z3501713732371_1e81c79a6fbcd058c5f7bc1066c448fb_8f64de8cbe2d44ff821e1a00c8e1b994.jpg"/>"
								class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="header-footer hidden">
				<h4>ĐẶC QUYỀN CHO BẠN HÔM NAY!</h4>
				<div class="row">
					<div class="col-3">
						<div class="column">
							<h4>Degrey giao hoả tốc</h4>
							<p>Giờ đây bạn có thể nhận hàng nhanh trong ngày mà không cần
								chờ đợi tại Sài Gòn</p>
						</div>
					</div>
					<div class="col-3">
						<div class="column">
							<h4>Hà Nội Freeship</h4>
							<p>Degrey dành tặng Hà Nội mã freeship 0đ (số lượng có hạn)</p>
							<div class="copy">
								<p>Sao chép mã</p>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="column">
							<h4>Tặng 125.000đ</h4>
							<p>Áp dụng đặc biệt cho đơn hàng từ 2,5 triệu đồng.</p>
							<div class="copy">
								<p>Sao chép mã</p>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div class="column">
							<h4>Khuyến mãi đến 10%</h4>
							<p>Mã giảm 10% cho hoá đơn mua hàng trên 5 triệu đồng</p>
							<div class="copy">
								<p>Sao chép mã</p>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="container hidden">
			<div class="container-module flash-sale">
				<div class="header-container-module">
					<div class="name-title">
						<a href=""><img
							src="<c:url value="/resources/asset/image/flash-sale.webp"/>"
							alt=""></a>
					</div>
					<div class="all-items">
						<a href="">Xem tất cả</a>
					</div>
				</div>
				<div class="row-grid">
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (210).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
								<p style="font-weight: 600;">250,000₫</p>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (203).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
								<p style="font-weight: 600;">250,000₫</p>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (206).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
								<p style="font-weight: 600;">250,000₫</p>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (207).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
								<p style="font-weight: 600;">250,000₫</p>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (208).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
								<p style="font-weight: 600;">250,000₫</p>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="container-module">
			<div class="header-container-module">
					<div class="name-title">
						<a href="product/balo">BACKPACKS | BALO</a>
					</div>
					<div class="all-items">
						<a href="productByField?item=balo">Xem tất cả</a>
					</div>
				</div>
			 <div class="row-grid">
			 
			    <c:forEach varStatus="i" begin="0" end="4" items="${balos}" var="balo">
			        <div class="col-2-4">
						<div class="item">
							<div class="image-item">
								 <div>
								 <img
									src="<c:url value="/resources/asset/image/balo/balo${i.count}/balo${i.count}.webp"/>"
									alt="">
									</div>
							<div>
								<img
									src="<c:url value="/resources/asset/image/balo/balo${i.count}/balo${i.count}.jpeg"/>"
									alt="">
							</div>
							</div>
							<div class="short__descrition-item">
								<p>${balo.name}</p>
								<p style="font-weight: 600;">${balo.price}₫</p>
							</div>
						</div>
					</div>
			    </c:forEach>
			   
			 </div>
			</div>
			<div class="container-module">
			<div class="header-container-module">
					<div class="name-title">
						<a href="product/balo">TSHIRT | JACKET</a>
					</div>
					<div class="all-items">
						<a href="productByField?item=jacket">Xem tất cả</a>
					</div>
				</div>
			 <div class="row-grid">
			 
			    <c:forEach varStatus="i" begin="0" end="4" items="${jackets}" var="jacket">
			        <div class="col-2-4">
						<div class="item">
							<div class="image-item">
								 <div>
								 <img
									src="<c:url value="/resources/asset/image/jacket/jacket${i.count}/jacket${i.count}.webp"/>"
									alt="">
									</div>
							<div>
								<img
									src="<c:url value="/resources/asset/image/jacket/jacket${i.count}/jacket${i.count}.jpeg"/>"
									alt="">
							</div>
							</div>
							<div class="short__descrition-item">
								<p>${jacket.name}</p>
								<p style="font-weight: 600;">${jacket.price}₫</p>
							</div>
						</div>
					</div>
			    </c:forEach>
			   
			 </div>
			</div>
			
			<div class="container-module">
				<div class="header-container-module">
					<div class="name-title">
						<a href="">PANTS | QUẦN</a>
					</div>
					<div class="all-items">
						<a href="productByField?item=pants">Xem tất cả</a>
					</div>
				</div>
				<div class="row-grid">
					<c:forEach varStatus="i" begin="0" end="4" items="${pants}" var="pant">
			        <div class="col-2-4">
						<div class="item">
							<div class="image-item">
								 <div>
								 <img
									src="<c:url value="/resources/asset/image/pants/pants${i.count}/pants${i.count}.webp"/>"
									alt="">
									</div>
							<div>
								<img
									src="<c:url value="/resources/asset/image/pants/pants${i.count}/pants${i.count}.jpeg"/>"
									alt="">
							</div>
							</div>
							<div class="short__descrition-item">
								<p>${pant.name}</p>
								<p style="font-weight: 600;">${pant.price}₫</p>
							</div>
						</div>
					</div>
			    </c:forEach>
				
			</div>
			</div>
			<div class="container-module">
			<div class="header-container-module">
					<div class="name-title">
						<a href="product/balo">MADMONKS | ORTHERS</a>
					</div>
					<div class="all-items">
						<a href="productByField?item=madmonks">Xem tất cả</a>
					</div>
				</div>
			 <div class="row-grid">
			 
			    <c:forEach varStatus="i" begin="0" end="4" items="${madmonks}" var="madmonk">
			        <div class="col-2-4">
						<div class="item">
							<div class="image-item">
								 <div>
								 <img
									src="<c:url value="/resources/asset/image/madmonks/madmonks${i.count}/madmonks${i.count}.webp"/>"
									alt="">
									</div>
							<div>
								<img
									src="<c:url value="/resources/asset/image/madmonks/madmonks${i.count}/madmonks${i.count}.jpeg"/>"
									alt="">
							</div>
							</div>
							<div class="short__descrition-item">
								<p>${madmonk.name}</p>
								<p style="font-weight: 600;">${madmonk.price}₫</p>
							</div>
						</div>
					</div>
			    </c:forEach>
			   
			 </div>
			</div>
			<div class="container-module">
				<div class="header-container-module">
					<div class="name-title">
						<a href="">XOÀI BẾU</a>
					</div>
					<div class="all-items">
						<a href="">Xem tất cả</a>
					</div>
				</div>
				<div class="row-grid">
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (222).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Xoài Bông</p>
								<p style="font-weight: 600;">90,000₫</p>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (220).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Trà Xoài Cam Xả - TXCS</p>
								<p style="font-weight: 600;">90,000₫</p>
							</div>
						</div>
					</div>
					<div class="col-2-4">
						<div class="item">
							<div class="image-item">
								<img
									src="<c:url value="/resources/asset/image/Screenshot (221).png"/>"
									alt="">
							</div>
							<div class="short__descrition-item">
								<p>Xoài Mực - XM</p>
								<p style="font-weight: 600;">120,000₫</p>
							</div>
						</div>
					</div>

				</div>

			
			</div>
		</div>
		<!-- Trang San Pham -->
		<div class="sanpham-container hidden">
			<div class="pre__sanpham-container">
				<div class="redirect-pre__sanpham-container">
					<a href="">Trang chủ</a>
					<p>/ Tất cả sản phẩm</p>
				</div>
				<img style="width: 100%;"
					src="<c:url value="/resources/asset/image/z3533341777412_f5edd4a273a3ef5093b6567f1acd7b0f_1d288245ef874e9fab99f73c62539549.jpg"/>"
					alt="">
			</div>
			<div class="main__sanpham-container">
				<div class="main__sanpham-container-filter">
					<div class="main__sanpham-container-filter__up">
						<div class="main__sanpham-container-filter__up-title">Tất cả
							sản phẩm</div>
						<div class="main__sanpham-container-filter__up-A_Z">
							<div class="main__sanpham-container-filter__up-A_Z-left__icon">
								<i class="fa-solid fa-arrow-down-a-z"></i>
								<p>Sắp xếp</p>
							</div>


							<div class="main__sanpham-container-filter__up-A_Z-right__icon">
								<i class="fa-solid fa-sort-down"></i>
							</div>
						</div>
						<div class="main__sanpham-container-filter__up-A_Z__hover">
							<div class="">
								<i class="fa-solid fa-check" style="color: #000;"></i>
								<p>Sản phẩm nổi bật</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Giá: Tăng dần</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Giá: Giảm dần</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Tên: A-Z</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Tên: Z-A</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Cũ nhất</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Mới nhất</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Bán chạy nhất</p>
							</div>
							<div class="">
								<i class="fa-solid fa-check"></i>
								<p>Tồn kho giảm dần</p>
							</div>
						</div>
					</div>
					<div class="main__sanpham-container-filter__down">
						<div class="main__sanpham-container-filter__down-fpart">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-funnel" viewBox="0 0 16 16">
                        <path
									d="M1.5 1.5A.5.5 0 0 1 2 1h12a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.128.334L10 8.692V13.5a.5.5 0 0 1-.342.474l-3 1A.5.5 0 0 1 6 14.5V8.692L1.628 3.834A.5.5 0 0 1 1.5 3.5v-2zm1 .5v1.308l4.372 4.858A.5.5 0 0 1 7 8.5v5.306l2-.666V8.5a.5.5 0 0 1 .128-.334L13.5 3.308V2h-11z" />
                      </svg>
							<h3>BỘ LỌC</h3>
						</div>
						<div class="main__sanpham-container-filter__down-spart">
							<div class="main__sanpham-container-filter__up-A_Z">
								<div class="main__sanpham-container-filter__up-A_Z-left__icon">
									<p>Lọc giá</p>
								</div>


								<div class="main__sanpham-container-filter__up-A_Z-right__icon">
									<i class="fa-solid fa-angle-down"></i>
								</div>
							</div>
							<div class="main__sanpham-container-filter__up-A_Z__hover">
								<div class="">
									<i><input type="checkbox"></i>
									<p>Dưới 100.000₫</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>100.000₫ - 250.000₫</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>250.000₫ - 500.000₫</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>500.000₫ - 800.000₫</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>Trên 800.000₫</p>
								</div>

							</div>
						</div>
						<div class="main__sanpham-container-filter__down-spart">
							<div class="main__sanpham-container-filter__up-A_Z">
								<div class="main__sanpham-container-filter__up-A_Z-left__icon">
									<p>Màu sắc</p>
								</div>


								<div class="main__sanpham-container-filter__up-A_Z-right__icon">
									<i class="fa-solid fa-angle-down"></i>
								</div>
							</div>
							<div class="main__sanpham-container-filter__up-A_Z__hover">
								<div class="row-color" style="cursor: default;">
									<a href="">
										<div class="row-color__color"
											style="background-color: #eb11eb; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #ffff05; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #f54105; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #f23895; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #000000; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a>
								</div>
								<div class="row-color"
									style="margin-bottom: 10px; cursor: default;">
									<a href="">
										<div class="row-color__color"
											style="background-color: #cccaca; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #fffcfc; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #1757eb; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #099116; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a> <a href="">
										<div class="row-color__color"
											style="background-color: #52ff52; width: 22px; height: 22px; border-radius: 50%; margin: 3px 7px; border: 1px solid #cccaca; cursor: pointer;"></div>
									</a>
								</div>
							</div>
						</div>
						<div class="main__sanpham-container-filter__down-spart">
							<div class="main__sanpham-container-filter__up-A_Z">
								<div class="main__sanpham-container-filter__up-A_Z-left__icon">
									<p>Kích thước</p>
								</div>


								<div class="main__sanpham-container-filter__up-A_Z-right__icon">
									<i class="fa-solid fa-angle-down"></i>
								</div>
							</div>
							<div class="main__sanpham-container-filter__up-A_Z__hover">
								<div class="">
									<i><input type="checkbox"></i>
									<p>S</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>M</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>L</p>
								</div>
								<div class="">
									<i><input type="checkbox"></i>
									<p>XS</p>
								</div>


							</div>
						</div>

					</div>
				</div>
				<div class="container-module">
					<div class="row-grid">
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (211).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">390,000₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (214).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">260,000₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (215).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">320,000₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (216).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">320,000₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (217).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">260,000₫</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row-grid">
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/271487233_649768696473866_8993561813827660018_n.jpg"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">+∞₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/272080933_4631202470326117_1474952415700213100_n.jpg"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">+∞₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/ảnh đại diện.jpg"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">+∞₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4 hidden">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/ảnh đại diện.jpg"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">+∞₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4 hidden">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/ảnh đại diện.jpg"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">+∞₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (206).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">250,000₫</p>
								</div>
							</div>
						</div>
						<div class="col-2-4">
							<div class="item">
								<div class="image-item">
									<img
										src="<c:url value="/resources/asset/image/Screenshot (207).png"/>"
										alt="">
								</div>
								<div class="short__descrition-item">
									<p>Áo Xấu Lên Bờ Green - AXLB Green</p>
									<p style="font-weight: 600;">250,000₫</p>
								</div>
							</div>
						</div>

					</div>

					<div class="footer-header__info-items-lists all-items__module">
						<button>
							<a>Xem thêm sản phẩm
								<p>tất cả sản phẩm</p>
							</a>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /Trang San Pham -->
		<!--Trang Store-->
		<div class="store-container hidden">
			<div class="redirect-pre__sanpham-container">
				<a href="">Trang chủ</a>
				<p>/ HỆ THỐNG CỬA HÀNG DEGREY</p>
			</div>
			<div class="main__store-container">
				<div class="left__main__store-container">
					<div class="left__main__store-container-address">
						<h2>HỆ THỐNG CỬA HÀNG DEGREY</h2>
						<div class="left__main__store-container-detail__address">
							<h4>SÀI GÒN:</h4>
							<ul>
								<li>Q.Phú Nhuận: 43 Huỳnh Văn Bánh</li>
								<li>Q.Tân Phú: 1041 Lũy Bán Bích</li>
								<li>Q.1: 26 Lý Tự Trọng (TNP)</li>
							</ul>
						</div>
						<div class="left__main__store-container-detail__address">
							<h4>ĐÀ LẠT :</h4>
							<ul>
								<li>Phường 1: 11 Khu Hoà Bình</li>

							</ul>
						</div>
						<h5>Hotline: 0336311117</h5>
					</div>
					<div class="left__main__store-container-social__media">
						<p>
							<img
								src="<c:url value="/resources/asset/image/fb_15215b561f504b139fdb35856eaa7290_icon.webp"/>"
								alt=""> <a href="">https://www.facebook.com/degrey.saigon</a>
						</p>
						<hr>
						<p>
							<img src="<c:url value="/resources/asset/image/insta.webp"/>"
								alt=""> <a href="">https://www.instagram.com/degrey.saigon/</a>
						</p>
						<hr>
						<p>
							<img src="<c:url value="/resources/asset/image/tiktok.webp"/>"
								alt=""> <a href="">https://www.tiktok.com/@degrey.vn</a>
						</p>
						<hr>
						<p>
							<img src="<c:url value="/resources/asset/image/youtube.webp"/>"
								alt=""> <a href=""> https://www.youtube.com/degreyvn</a>
						</p>
						<hr>
						<p>
							<img src="<c:url value="/resources/asset/image/shopee.webp"/>"
								alt=""> <a href="">https://shopee.vn/degrey.vn</a>
						</p>
						<hr>
						<p>
							<img src="<c:url value="/resources/asset/image/lazada.webp"/>"
								alt=""> <a href="">
								https://www.lazada.vn/shop/degrey-vietnam/</a>
						</p>
					</div>
				</div>
				<div class="right__main__store-container">
					<div class="right__main__store-container-page">
						<h3>Danh mục page</h3>
						<hr>
						<p>
							SẢN PHẨM DEGREY <i class="fa-solid fa-plus"></i>
						</p>
						<hr>
						<p>
							STORE | CỬA HÀNG <i class="fa-solid fa-plus"></i>
						</p>
						<hr>
						<p>DEGREY | ABOUT US</p>
					</div>
					<a href=""><img
						src="<c:url value="/resources/asset/image/z3509830781478_ce69b71da0bf0aafd5d6455921bb9d4e_88f55bac63264b9c94bb5795b6a402d4.webp"/>"
						alt=""></a>
				</div>
			</div>
		</div>
		<!--Trang Store-->
		<!--Trang Gioi Thieu-->
		<div class="store-container introduction-container hidden">
			<div class="redirect-pre__sanpham-container">
				<a href="">Trang chủ</a>
				<p>/ Giới thiệu</p>
			</div>
			<div class="main__store-container main__introduction-container">
				<div
					class="left__main__store-container left__main__introduction-container">
					<div class="left__main__store-container-address">
						<h2>Giới thiệu</h2>


					</div>
					<p>
						<span>Cái tên Degrey được tạo ra rất ngẫu hứng, xuất phát
							từ <em>“Chuỗi ngày u buồn về sự nghiệp, tương lai trong quá
								khứ của chính mình”</em> – theo lời chia sẻ của Degrey’s founder. Là
							một local brand mang khuynh hướng Á Đông, kết hợp giữa hai yếu tố
							truyền thống và hiện đại, Degrey luôn cố gắng mang đến những
							thông điệp văn hoá ý nghĩa qua từng đường nét thiết kế. Tiếp theo
							đó sự sang trọng, thanh lịch cũng là những yếu tố tạo nên một
							Degrey đầy sức hút, sự lựa chọn hoàn hảo dành cho các bạn trẻ yêu
							thích phong cách hoài cổ nhưng vẫn muốn thoát xác trong những bộ
							cánh mới mẻ hơn.
						</span> <span>Thành lập từ năm 2016 và được nhiều bạn trẻ biết đến
							qua những mẫu áo truyền thông, Degrey hiện đang từng bước khẳng
							định vị trí của mình trong bản đồ streetwear Việt Nam. </span> <span>Hiện
							nay, Degrey vẫn đang tiếp tục hoàn thiện và phát triển về sản
							phẩm cũng như mở rộng nhiều phong cách thời trang.</span> <span>Degrey
							xin gửi lời cảm ơn đến tất cả những khách hàng đã, đang và sẽ ủng
							hộ Degrey cũng như Xoài thời gian qua và sắp tới. Cảm ơn rất
							nhiều !</span>
					</p>
					<div class="video-youtube">
						<p>Sơ lược lịch sử DEGREY do DOSIIN - kênh media về thời trang
							và life-style, khai thác mảng văn hóa đường phố tại Việt Nam viết
							ra:</p>
						<iframe width="100% " height="460px "
							src="https://www.youtube.com/embed/H7vcKCjX-IE "
							title="DEGREY HISTORY " frameborder="0 "
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture "
							allowfullscreen></iframe>

					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<h4>Một số dự án Degrey tham gia:</h4>
						<p style="font-weight: 600;">Degrey x Linh Ngọc Đàm</p>
						<a href="" style="font-weight: 600;">https://www.facebook.com/degrey.saigon/videos/𝐋𝐈𝐍𝐇-𝐍𝐆𝐎̣𝐂-đ𝐀̀𝐌-𝐗-𝐃𝐄𝐆𝐑𝐄𝐘-𝐗-𝐃𝐎𝐒𝐈𝐈𝐍-các-sản-phẩm-trong-bộ-sưu-tập-này-se/227980442241532/</a>
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/MY7F09rjQxE"
							title="𝐋𝐈𝐍𝐇 𝐍𝐆𝐎̣𝐂 Đ𝐀̀𝐌 𝐗 𝐃𝐄𝐆𝐑𝐄𝐘 𝐗 𝐃𝐎𝐒𝐈𝐈𝐍"
							frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span>Lndxdegreyxdosiin Ra Mắt Bộ Sản Phẩm Katcream -
							Dosi-in.com</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">

						<p style="font-weight: 600;">Degrey – Không chỉ là quần áo
							(Degrey x Koo)</p>

						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/wnZWXRpGcZ4"
							title="Degrey x Koo - KHÔNG CHỈ LÀ QUẦN ÁO" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span style="margin-top: 20px; display: block;">Không cần
							phải chạy theo xu hướng thị trường, thị hiếu của số đông. Cứ sáng
							tạo và tự do theo cách của mình muốn. Đó cũng chính là thông điệp
							của Koo và Degrey muốn gửi gắm cho các bạn thông qua sự kết hợp
							này.....</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">

						<p style="font-weight: 600;">Degrey - Sinh nhật vui vẻ Đạt G
							(Degrey x Đạt G)</p>

						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/rO92dxA-Ftc"
							title="DEGREY x ĐẠT G" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span style="margin-top: 20px; display: block;">Đánh dấu
							sinh nhật Đạt G, Degrey muốn tạo ra bst để dành cho các fan thân
							thương yêu mến Đạt G trong dịp đặc biệt này. Cũng là lời cảm ơn
							đặc biệt mà Degrey muốn gửi đến Đạt G và các bạn. Các bạn đã ủng
							hộ và chung vui cùng Đạt G....</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<p style="font-weight: 600;">Degrey – Hơi thở Việt (Degrey x
							Biti’s Hunter)</p>
						<a href="" style="font-weight: 600;">https://www.facebook.com/watch/?v=426291141383234</a>
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/O6yvqvjuIgU"
							title="DEGREY x BITIS HUNTER" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span style="margin-top: 20px; display: block;">Sản phẩm
							hợp tác hình ảnh giữa Degrey và Biti’s Hunter làm tăng hơi thở
							Việt. Sự kết hợp độc đáo giữa Degrey và Biti’s Hunter, hai thương
							hiệu Việt cùng chung tay góp phần xây dựng hình ảnh mang định
							hướng thời trang Việt Nam đến gần với các bạn trẻ ......</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<p style="font-weight: 600;">Degrey – Mang thời trang đến gần
							underground (Degrey x Blacka)</p>
						<a href="" style="font-weight: 600;">https://vnstrw.com/878-degrey-x-blacka-mang-thoi-trang-den-gan-voi-undeground-theo-cach-cua-degrey.html</a>
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/FXxF19jJwMk"
							title="[DOSIIN ISSUE] DEGREY X BLACKA" COLLAB RELEASE EVENT RECAP
							by Dosi-in.com frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>

					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/gEJKVTKAhvE"
							title="BLACKA x DEGREY" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span>Với hầu hết ý tưởng từ chàng rapper Việt - Blacka -
							chiếc áo Tee DEGREY x BLACKA với hai phiên bản màu đen truyền
							thống và xanh neon. Được thiết kế bắt nguồn từ cuộc đời và sự
							nghiệp hiphop của chính anh, chiếc áo như một dấu ấn khẳng định
							con đường rapper 10 năm của Blacka gửi đến mọi người cũng như đứa
							con tinh thần “Anh đã từng yêu” mà anh vừa cho ra mắt gửi đến các
							fan đã dõi theo Blacka từ lúc “chập chững” cho đến tận bây
							giờ....</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<p style="font-weight: 600;">Degrey – Foudation wind Jacket
							(Degrey x Dossin)</p>
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/jlLd9unvGss"
							title="Degrey x Dosiin" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span>Sản phẩm được lấy cảm hứng từ album "Foundation Vol.
							4" của rapper tài năng Basick, quán quân cuộc thi “Show Me The
							Money" mùa 4."Chúng ta luôn phải tuân theo quy luật của cuộc
							sống.Nhưng với thời trang thì KHÔNG.Chúng tôi thoải mái làm những
							điều khác biệt.VÌ VẬY CHÚNG TÔI TÌM ĐẾN NHAU".......</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<p style="font-weight: 600;">
							Degrey – Make love Not war (Degrey x Dirty Coins) <a href=""
								style="color: rgb(0, 119, 255); font-weight: 300;">https://www.facebook.com/watch/?v=754349858105316</a>
						</p>
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/hZLzbjN3yYE"
							title="MAKE LOVE NOT WAR - DEGREY x DIRTY COINS" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span>Degrey với các dự án đồng hành cùng Dirty coins không
							còn gì xa lạ đối với các bạn. Thông qua bst lần này, tụi mình
							muốn nhắn nhủ thông điệp thế giới cần tình yêu, hãy tạo yêu
							thương đừng gây chiến tranh.....</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<p style="font-weight: 600;">Degrey – Các cô gái nhà Queen
							(Degrey x The Queen Team)</p>
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/ufL1HtieaMo"
							title="The Queen Team X Degrey" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<iframe width="100%" height="460px"
							src="https://www.youtube.com/embed/0MGYT8Je7P8"
							title="Buổi chụp hình lầy lội của Queen Team x Degrey | Umi TV"
							frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						<span>Sự kết hợp cùng các cô gái nhà Queen nên Degrey đã
							lấy màu hồng làm tông chủ đạo cho dự án lần này.....</span>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<p style="font-weight: 600;">Degrey – Catch the trend (Degrey
							x Pepsi)</p>
						<a href="" style="font-weight: 600;">https://kenh14.vn/local-brands-x-pepsi-khang-dinh-thuong-hieu-viet-20180514171222596.chn</a>
						<span style="display: block;">Không còn xa lạ gì với Degrey
							– một local brand nổi tiếng với những sản phẩm phong phú về kiểu
							dáng và thiết kế lạ mắt. Chính vì thế mà những item gắn mác
							Degrey liên tục sold out trong mỗi đợt ra mắt. Với chương trình
							hợp tác cùng Pepsi, Degrey cho ra đời hai sản phẩm mới là Pepsi
							Hoodie và Pepsi Polo. Anh Nguyễn Nhật Hoàng – Founder Degrey gửi
							một thông điệp nhỏ qua bộ sưu tập: “Mình muốn pha màu sắc Á Đông
							của Degrey kết hợp cùng một thương hiệu bắt nguồn từ châu Âu. Nên
							các sản phẩm trong bộ sưu tập lần này mang trong mình một điều
							đặc biệt và mới mẻ”......</span>
					</div>
					<div class="video-youtube"
						style="margin-top: 20px; margin-bottom: 90px;">
						<p style="font-weight: 600;">Degrey x Cối Xay Gió</p>
						<a href="" style="font-weight: 600;">https://www.facebook.com/cxg.vn/posts/1228362480919583/</a>

					</div>
					<div class="video-youtube"
						style="margin-top: 20px; margin-bottom: 90px;">
						<p style="font-weight: 600;">Degrey x Thỏ 7 màu</p>
						<a href="" style="font-weight: 600;">https://www.facebook.com/ThoBayMau/posts/2176044649072834/</a>

					</div>
					<div class="video-youtube">
						<p style="font-weight: 600;">
							Degrey hợp tác cùng các brand khác : <span
								style="display: inline-block;"> Colkids, Sly, Lechat,
								Hallelooyer, ...</span>
						</p>
					</div>
					<div class="video-youtube" style="margin-top: 20px;">
						<h4>Link bài viết về Degrey:</h4>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://dantri.com.vn/giai-tri/degrey-thoi-trang-cuc-chat-tren-pho-khong-ngung-lot-xac-de-vuon-tam-20200605193026706.ht</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://kenh14.vn/degrey-thoi-trang-duong-pho-cuc-chat-khong-ngung-lot-xac-de-vuon-tam-20200604122813325.chn?fbclid=IwAR3wzE5Fc1kd624lz_SypMvnYybhodQNGZGb2BHoUTS5D4tneDWqwk3hRWk</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://kenh14.vn/degrey-xu-huong-moi-cho-thoi-trang-a-dong-20180403133034643.chn</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://kenh14.vn/cung-degrey-thoi-bung-ca-tinh-mua-he-nay-20190604233452921.chn</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://kenh14.vn/cung-degrey-chung-tay-tuyen-truyen-phong-tranh-covid-19-20200328123054299.chn</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://parttimestore.vn/diem-danh-4-mau-ao-khoac-degrey-chat-nhat-mua-dong-2019-n62030.html</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://kenh14.vn/bat-nhip-xu-huong-streetstyle-dip-cuoi-nam-voi-loat-bst-cool-ngau-ca-tinh-2019122517075416.chn</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">https://saostar.vn/thoi-trang/hot-trend/degrey-thoi-trang-cuc-chat-tren-pho-khong-ngung-lot-xac-de-vuon-tam-7584447.html</a></span>
						<span style="margin-top: 20px; display: block;"><a href=""
							style="color: rgb(0, 119, 255); font-weight: 300;">
								https://yeah1.com/style/degrey-thoi-trang-cuc-chat-tren-pho-khong-ngung-lot-xac-de-vuon-tam-M6apvMREGg.html?fbclid=IwAR1kHlr0FYHTfOBsBNmFoD6Y-mKtUowuKQKfXXBihHqFZyJUVT346-vaAN0</a></span>
					</div>
					<div class="khung-intro" style="margin-top: 60px;">
						<div>
							<p style="letter-spacing: 2px;">Hotline:</p>
							<a href="">0336311117</a>
						</div>
						<div>
							<p style="letter-spacing: 2px;">Facebook:</p>
							<a href="">https://www.facebook.com/degrey.saigon/.</a>
						</div>
						<div>
							<p style="letter-spacing: 2px;">Instagram:</p>
							<a href=""> https://www.instagram.com/degrey.saigon/ ​.</a>
						</div>
					</div>
					<div class="khung-intro" style="margin-top: 10px; height: 80px;">
						<div>
							<p style="letter-spacing: 2px; font-weight: 600;">Hệ thống
								cửa hàng:</p>

						</div>

					</div>
					<div class="khung-intro" style="margin-top: 10px; height: 40px;">
						<div>
							<p style="letter-spacing: 2px; font-weight: 600;">SÀI GÒN:</p>

						</div>

					</div>
					<ul>
						<li>
							<div class="khung-intro" style="margin-top: 10px; height: 40px;">
								<div>
									<p>Q.Phú Nhuận: 43 Huỳnh Văn Bánh</p>

								</div>

							</div>
						</li>
						<li>
							<div class="khung-intro" style="margin-top: 10px; height: 40px;">
								<div>
									<p>Q.Tân Phú: 1041 Lũy Bán Bích</p>

								</div>

							</div>
						</li>
						<li>
							<div class="khung-intro" style="margin-top: 10px; height: 40px;">
								<div>
									<p>Q.1: 26 Lý Tự Trọng (TNP)</p>

								</div>

							</div>
						</li>
					</ul>
					<div class="khung-intro" style="margin-top: 10px; height: 40px;">
						<div></div>

					</div>
					<div class="khung-intro" style="margin-top: 10px; height: 40px;">
						<div>
							<p style="letter-spacing: 2px; font-weight: 600;">ĐÀ LẠT:</p>

						</div>

					</div>
					<ul>
						<li>
							<div class="khung-intro" style="margin-top: 10px; height: 40px;">
								<div>
									<p>Phường 1: 11 Khu Hoà Bình</p>

								</div>

							</div>
						</li>
					</ul>
					<div class="khung-intro" style="margin-top: 10px; height: 40px;">
						<div></div>

					</div>
					<strong>HƯỚNG DẪN MUA HÀNG VÀ THANH TOÁN TẠI DEGREY</strong> <strong>I
						– MUA HÀNG OFFLINE – PHƯƠNG THỨC GIAO HÀNG – TRẢ TIỀN MẶT</strong>
					<p>
						– Phương thức Giao hàng – Trả tiền mặt chỉ áp dụng đối với những
						khu vực <strong>DEGREY</strong> hỗ trợ giao nhận hoặc trả tiền mua
						hàng trực tiếp tại cửa hàng <strong>DEGREY</strong>
					</p>
					<p>– Với phương thức thanh toán trực tiếp Quý khách có thể đặt
						hàng trên Website DEGREY.VN .</p>
					<p>Nhân viên chúng tôi sẽ tiến hành gọi xác nhận đơn hàng, xuất
						hàng cho Quý khách và xác nhận ngày giờ giao hàng với Quý khách
						sau khi xuất hàng.</p>
					<p>
						– Quý khách có trách nhiệm thanh toán đầy đủ toàn bộ giá trị đơn
						hàng cho Nhân viên giao nhận hoặc Nhân viên bán hàng và chăm sóc
						khách hàng của <strong>DEGREY</strong> ngay khi hoàn tất kiểm tra
						hàng hóa và nhận Phiếu giao hàng kiêm phiếu xuất kho.Hoặc có thể
						thanh toán quẹt thẻ <strong>ATM, VISA, ví MOMO</strong> trực tiếp
						tại cửa hàng <strong>DEGREY.</strong> Quý khách thanh toán đúng số
						tiền trên Phiếu đã ghi, nếu có bất cứ thắc mắc nào Quý khách gọi
						lại cho <strong>DEGREY</strong> để được thông tin cụ thể hơn.
					</p>
					<strong>II – MUA HÀNG ONLINE – PHƯƠNG THỨC THANH TOÁN
						TRƯỚC</strong> <strong> Khách hàng mua hàng online có thể lựa chọn
						các hình thức như sau:</strong>
					<p>
						– Gọi điện để được tư vấn và đặt hàng online trực tiếp với bộ phận
						chăm sóc khách hàng của <strong>DEGREY</strong> qua số <strong>0336311117</strong>
					</p>
					<p>
						– Khách hàng truy cập website: <strong>DEGREY.VN</strong> để mua
						hàng và hoàn thành thông tin đơn hàng.
					</p>
					<p>
						Chuyển tiền, chuyển khoản, thanh toán trực tiếp bằng tiền mặt hoặc
						qua thẻ tại các hệ thống ngân hàng hoặc trung tâm giao dịch của <strong>DEGREY</strong>
					</p>
					<strong>2.1 Chuyển tiền/chuyển khoản: <em>(thông tin
							tài khoản xem cuối bài viết)</em></strong>
					<p>
						-Áp dụng cho khách hàng ngoài khu vực nội thành (phạm vi giao hàng
						từ 10km đến 100km tính từ các trung tâm của <strong>DEGREY</strong>
						và khách hàng ở tỉnh thành khác có nhu cầu sử dụng phương thức
						thanh toán này. Các bước tiến hành như sau:
					</p>
					<p>
						1. Đến Ngân hàng gần nơi ở của Quý khách nhất để chuyển
						tiền/chuyển khoản theo thông tin chi tiết <strong>DEGREY</strong>
						cung cấp: Số tiền, Tên đơn vị, số tài khoản, Ngân hàng mở tài
						khoản, nội dụng chuyển tiền/chuyển khoản (Mã đơn hàng).
					</p>
					<p>
						2. Thông báo cho <strong>DEGREY</strong> (bằng điện thoại, email,
						SMS, fax, …) khi Quý khách đã thực hiện chuyển tiền/chuyển khoản.
					</p>
					<p>
						3. Hoặc Quý khách vui lòng liên hệ với Bộ phận Bán hàng trực tuyến
						của <strong>DEGREY</strong> theo số <strong>0336311117</strong>,
						để thông báo đã chuyển tiền.
					</p>
					<p>
						4. Ngay khi nhận được báo cáo xác nhận từ Ngân hàng, <strong>DEGREY</strong>
						sẽ tiến hành thông báo lại cho Quý khách đồng thời xuất hàng giao
						hàng cho Quý khách trong thời gian quy định trong mục Chính sách
						vận chuyển.
					</p>
					<p>
						– <strong>DEGREY</strong> sẽ không chịu trách nhiệm về sai sót
						trong quá trình chuyển khoản hoặc chuyển khoản sai thông tin, Quý
						khách phải làm việc với Ngân hàng để được xử lý ổn thỏa, chỉ khi
						nào tiền được chuyển đến tài khoản của <strong>DEGREY</strong>, <strong>DEGREY</strong>
						sẽ xác nhận với Quý khách. Trong một số tình huống Quý khách có
						thể nhờ phía Ngân hàng mà Quý khách thực hiện giao dịch hoặc Ngân
						hàng của <strong>DEGREY</strong> sử dụng để kiểm tra đối chứng cần
						thiết.
					</p>
					<strong>III – MUA HÀNG ONLINE – PHƯƠNG THỨC (COD) NHẬN
						HÀNG THANH TOÁN</strong>
					<p>
						Đối với tất cả các đơn hàng được đặt hàng thành công với hình thức
						<strong>COD <em>(nhận hàng thanh toán tại nhà)</em></strong> ,
						khách hàng sẽ được nhân viên của <strong>DEGREY</strong> liên hệ
						tư vấn xác nhận đơn hàng và tuỳ vào trường hợp để hướng dẫn khách
						hàng <strong>ĐẶT CỌC TRƯỚC</strong> từ 100.000đ – 500.000đ với đơn
						hàng > 02 triệu được nhân viên <strong>DEGREY</strong> thông báo
						cụ thể khi liên hệ. Giá trị đặt cọc sẽ được trừ trực tiếp vào giá
						trị sản phẩm, khi nhận hàng bạn chỉ cần thanh toán số tiền còn
						lại.
					</p>
					<p>
						Hình thức đặt cọc linh hoạt, bạn có thể chuyển khoản qua các tài
						khoản của <strong>DEGREY</strong> cuối trang này, cũng có thể
						chuyển tiền qua các ví điện tử hoặc có thể gửi mã card điện thoại
						giá trị tương ứng tới Hotline của <strong>DEGREY</strong>.
					</p>
					<p>
						Ngay sau khi <strong>DEGREY</strong> xác nhận đã nhận được đặt cọc
						của quý khách hàng thành công, nhân viên <strong>DEGREY</strong>
						sẽ lên đơn hàng, test sản phẩm đóng gói cẩn thận và chuyển tới đơn
						vị vận chuyển như Giao hàng tiết kiệm, Grab, …chuyển tới quý khách
						hàng.
					</p>
					<strong>CHÍNH SÁCH GIAO NHẬN</strong> <strong>1. DỊCH VỤ
						ÁP DỤNG :</strong>
					<p>
						Tất cả các khách hàng mua sản phẩm hàng hoá quần, áo và phụ kiện
						tại <strong>DEGREY</strong> có nhu cầu giao hàng trực tiếp tại
						nhà.
					</p>
					<strong>2. PHẠM VI ÁP DỤNG:</strong> <strong>2.1. Giao
						hàng trong nội thành :</strong>
					<p>– Thu phí 20.000đ/ đơn hàng với các quận nội thành ,</p>
					<p>
						– Đối với các đơn hàng có nhu cầu giao gấp trong ngày , nhân viên
						của <strong>DEGREY</strong> sẽ thoả thuận phí vận chuyển với khách
						hàng.
					</p>
					<strong> 2.2 . Giao hàng ngoại thành và các tỉnh :</strong>
					<p>
						– Phí vận chuyển với các quận, huyện ngoại thành nhân viên của <strong>DEGREY</strong>
						sẽ thỏa thuận với khách hàng
					</p>
					<p>– Phí vận chuyển các tỉnh sẽ tính theo cước bưu điện, cước
						dịch vụ của nhà chuyển phát.</p>
					<p>Lưu ý : Khách hàng vui lòng thanh toán chi phí đổi trả hàng
						và chi phí vận chuyển phát sinh (nếu có).</p>
					<strong>3. THỜI GIAN GIAO HÀNG :</strong>
					<p>Các đơn hàng mua thông thường ( không có ưu đãi giá) trong
						ngày trước 18h30 trong phạm vi 10 km : sẽ được xử lý đơn hàng và
						giao trong 1 - 3 ngày hoặc theo thời gian yêu cầu cụ thể của quí
						khách.</p>
					<p>Các đơn hàng mua theo giá thông thường ( không có ưu đãi
						giá), sau 19h00: sẽ được phục vụ vào ngày hôm sau hoặc tùy theo
						tình hình của nhà vận chuyển tại thời điểm đặt hàng.</p>
					<p>
						– Trong một số trường hợp khách quan <strong>DEGREY</strong> có
						thể giao hàng chậm trễ do những điều kiện bất khả kháng như thời
						tiết xấu, điều kiện giao thông không thuận lợi, xe hỏng hóc trên
						đường giao hàng, trục trặc trong quá trình xuất hàng.
					</p>
					<p>
						– Trong thời gian chờ đợi nhận hàng, Quí khách có bất cứ thắc mắc
						gì về thông tin vận chuyển xin vui lòng liên hệ tổng đài toàn chăm
						sóc khách hàng <strong>0336311117</strong> của <strong>DEGREY</strong>
						để nhận trợ giúp.
					</p>
					<strong>4. ĐÓNG GÓI GIAO HÀNG Ở XA</strong>
					<p>
						Đối với đơn hàng giao hàng ở xa thông qua dịch vụ vận chuyển thuê
						ngoài, để an toàn cho hàng hóa của quí khách, <strong>DEGREY</strong>
						sẽ đóng gói hàng hóa trong các bao bì hoặc thùng hàng chuyên dụng
						lớn hơn kích thước hàng.
					</p>
					<strong>5. TRÁCH NHIỆM VỚI HÀNG HÓA VẬN CHUYỂN .</strong>
					<p>
						– Nếu dịch vụ vận chuyển do <strong>DEGREY</strong> hoặc do chúng
						tôi chỉ định sẽ chịu trách nhiệm với hàng hóa và các rủi ro như
						mất mát hoặc hư hại của hàng hóa trong suốt quá trình vận chuyển
						hàng từ <strong>DEGREY</strong> đến quí khách.
					</p>
					<p>
						– Quí khách có trách nhiệm kiểm tra hàng hóa khi nhận hàng. Khi
						phát hiện hàng hóa bị hư hại hoặc sai hàng hóa thì ký xác nhận
						tình trạng hàng hóa với Nhân viên giao nhận và thông báo ngay cho
						Bộ phận chăm sóc khách hàng <strong>0336311117</strong>
					</p>
					<p>
						Sau khi quí khách đã ký nhận hàng mà không ghi chú hoặc có ý kiến
						về hàng hóa <strong>DEGREY</strong> không có trách nhiệm với những
						yêu cầu đổi trả vì hư hỏng, sai hàng hóa,… từ quí khách sau này.
					</p>
					<p>
						– Nếu dịch vụ vận chuyển do quí khách chỉ định và lựa chọn thì quí
						khách sẽ chịu trách nhiệm với hàng hóa và các rủi ro như mất mát
						hoặc hư hại của hàng hóa trong suốt quá trình vận chuyển hàng từ <strong>DEGREY</strong>
						đến quí khách. Khách hàng sẽ chịu trách nhiệm cước phí và tổn thất
						liên quan.
					</p>
					<strong>CHÍNH SÁCH BẢO HÀNH</strong> <strong>I. BẢO HÀNH</strong>
					<p>Bảo hành sản phẩm là: khắc phục những lỗi xảy ra do lỗi của
						DEGREY hoặc tiến hành đổi mới sản phẩm tuỳ vào từng trường hợp .</p>
					<strong>A. Quy định về bảo hành</strong>
					<p>– Sản phẩm được bảo hành miễn phí nếu sản phẩm đó chưa qua
						sử dụng, còn tag nhãn và hóa đơn mua hàng</p>
					<p>
						– Degrey hỗ trợ đổi sản phẩm trong vòng <strong>30 ngày</strong>
						kể từ ngày mua hàng hoặc nhận được hàng.
					</p>
					<strong>B. Những trường hợp không được bảo hành</strong>
					<p>
						– Sản phẩm đã hết thời hạn khi quá hạn <strong>30 ngày</strong> kể
						từ ngày mua hàng hoặc nhận được hàng.
					</p>
					<p>
						– Tự ý sử dụng các hoá chất tẩy rửa không đúng theo phiếu hướng
						dẫn sử dụng của <strong>DEGREY</strong>
					</p>
					<p>– Sản phẩm không có: Nhãn tag giấy Degrey, Hoá đơn mua hàng
						.</p>
					<p>
						– Trường hợp sản phẩm của Quý khách hàng không có hoá đơn mua hàng
						của <strong>DEGREY</strong> hay nhầm lẫn thông tin trên Phiếu mua
						hàng: Trong trường hợp này, bộ phận bảo hành sẽ đối chiếu với số
						phiếu xuất gốc lưu tại hệ thống của <strong>DEGREY</strong>, hóa
						đơn, phần mềm của <strong>DEGREY</strong>, nếu có sự sai lệch thì
						sản phẩm của Quý khách không được bảo hành. Kính mong Quý khách
						hàng thông cảm!
					</p>
					<p>– Bảo hành không bao gồm vận chuyển hàng và giao hàng.</p>
					<strong>II. ĐỊA ĐIỂM BẢO HÀNH VÀ BẢO TRÌ</strong>
					<p>
						Tất cả các sản phẩm được bảo hành tại showroom của <strong>DEGREY</strong>.
						Quý khách hàng có thể liên hệ với nhân viên bảo hành của <strong>DEGREY</strong>
						để được hướng dẫn thêm thông tin (nếu cần). 033.63.1111.7
					</p>
					<strong>IV. NHỮNG CHÍNH SÁCH CAM KẾT BẢO HÀNH, ĐỔI HÀNG</strong>
					<p>
						<strong>a. Các sản phẩm quần, áo :</strong> bán ra trong vòng 30
						ngày , nếu bị lỗi kỹ thuật do sản xuất thì sẽ được đổi sản phẩm
						mới cùng loại khác kích thước (size) theo điều kiện đổi ở bên dưới
					</p>
					<p>
						<strong>b. Các sản phẩm phụ kiện:</strong> tùy theo từng mặt
						hàng(không bao gồm sản phẩm đồ lót, vớ/tất,...), nếu bị lỗi kỹ
						thuật do sản xuất, thì sẽ được đổi sản phẩm mới cùng loại theo
						điều kiện đổi dưới đây:
					</p>
					<strong>Điều kiện đổi:</strong>
					<p>+ Không vi phạm các điều kiện bảo hành,trong vòng 30 ngày kể
						từ ngày mua hàng hoặc nhận hàng.</p>
					<p>+ Sản phẩm chưa qua sử dụng.</p>
					<p>+ Đầy đủ bao bì, còn nhãn tag đính kèm trên sản phẩm, Hóa
						đơn mua hàng.</p>
					<p>
						+ Trường hợp không đủ các điều kiện trên thì quyền quyết định đổi
						hàng thuộc về <strong>DEGREY</strong>
					</p>
					<p>
						Sau thời gian trên hoặc những trường hợp không đủ điều kiện đổi
						hàng thì tất cả các sản phẩm sẽ được bảo hành theo những quy định,
						chính sách chung của <strong>DEGREY</strong>. Trường hợp lý do nào
						đó sản phẩm chậm tiến trình đổi hàng <strong>DEGREY</strong> có
						trách nhiệm cập nhật thông tin, tình trạng, cho quý khách.
					</p>
					<p>
						+ Trả hàng: <strong>DEGREY</strong> không có chính sách trả hàng,
						nhưng hỗ trợ khách hàng nâng cấp sản phẩm nếu cảm thấy sản phẩm đã
						mua trước đó không phù hợp với nhu cầu sử dụng.
					</p>
					<strong>V. LIÊN HỆ, THẮC MẮC, KHIẾU NẠI VỀ VẤN ĐỀ ĐỔI
						HÀNG, BẢO HÀNH</strong>
					<p>
						Nếu Quý khách chưa thấy hài lòng hoặc có thắc mắc khiếu nại gì về
						vấn đề bảo hành, xin Quý khách vui lòng liên hệ tới <strong>DEGREY</strong>
						tại địa chỉ <strong>43 Huỳnh Văn Bánh P.17 Q.Phú Nhuận,
							TP.HCM</strong> , Điện thoại: 033.63.1111.7 hoặc địa chỉ email:
						degrey.cskh@gmail.com
					</p>
					<p>
						Toàn thể nhân viên <strong>DEGREY</strong> xin chân thành cám ơn
						Quý khách hàng đã mua hàng của <strong>DEGREY</strong>. Chắc chắn
						Quý khách hàng sẽ hài lòng về chất lượng dịch vụ và thái độ phục
						vụ tốt nhất từ <strong>DEGREY</strong>.
					</p>
					<p>—————————————————</p>
					<strong> THÔNG TIN TÀI KHOẢN DEGREY</strong>
					<p>- STK: 100960199999</p>
					<p>Tên TK: Lê Giáng Ngọc</p>
					<p>Ngân hàng: Vietinbank chi nhánh Lâm Đồng</p>
					<p style="margin-top: 60px;">- STK: 110884899999</p>
					<p>Tên TK: Công ty TNHH Degrey</p>
					<p>Ngân hàng: Vietinbank chi nhánh Lâm Đồng</p>
				</div>
				<div class="right__main__store-container ">
					<div class="right__main__store-container-page ">
						<h3>Danh mục page</h3>
						<hr>
						<p>
							SẢN PHẨM DEGREY <i class="fa-solid fa-plus "></i>
						</p>
						<hr>
						<p>
							STORE | CỬA HÀNG <i class="fa-solid fa-plus "></i>
						</p>
						<hr>
						<p>DEGREY | ABOUT US</p>
					</div>
					<a href=" "><img
						src="<c:url value="/resources/asset/image/z3509830781478_ce69b71da0bf0aafd5d6455921bb9d4e_88f55bac63264b9c94bb5795b6a402d4.webp"/>"
						alt=" "></a>
				</div>
			</div>
		</div>
		<!--Trang Gioi Thieu-->
		<div class="footer ">
			<div class="pre-footer hidden ">
				<h4>Set đồ gợi ý</h4>
				<div class="row ">
					<div class="col-4 ">
						<img
							src="<c:url value="/resources/asset/image/pre-footer1.webp"/>"
							alt=" ">
					</div>
					<div class="col-4 ">
						<img
							src="<c:url value="/resources/asset/image/pre-footer2.webp"/>"
							alt=" ">
					</div>
					<div class="col-4 ">
						<img
							src="<c:url value="/resources/asset/image/pre-footer3.webp"/>"
							alt=" ">
					</div>
				</div>
			</div>
			<div class="main-footer ">
				<div class="row ">
					<div class="col-3 ">
						<h4>Về DEGREY</h4>
						<p>Cái tên Degrey được tạo ra rất ngẫu hứng, xuất phát từ
							“Chuỗi ngày u buồn về sự nghiệp, tương lai trong quá khứ của
							chính mình” – theo lời chia sẻ của Degrey’s founder.</p>
						<a href=" "><img
							src="<c:url value="/resources/asset/image/bo_cong_thuong.webp"/>"
							alt=" "></a>
					</div>
					<div class="col-3 ">
						<h5>Địa chỉ</h5>
						<h5>-Sài Gòn:</h5>
						<p>43 Huỳnh Văn Bánh P.17 Q.Phú Nhuận</p>
						<p>1041 Luỹ Bán Bích P.Tân Thành Q.Tân Phú</p>
						<p>26 Lý Tự Trọng Q.1 - The New Playground</p>
						<h5>-Đà Lạt:</h5>
						<p>11 Khu Hoà Bình P.1</p>
						<div class="one-line ">
							<h5>Điện thoại:</h5>
							<p>0336311117</p>
						</div>
						<div class="one-line ">
							<h5>Email:</h5>
							<p>degrey.vn@gmail.com</p>
						</div>

					</div>
					<div class="col-3 ">
						<h4>Hỗ trợ khách hàng</h4>
						<ul>
							<li><a href=" ">Shop</a></li>
							<li><a href=" ">Hướng dẫn đặt hàng</a></li>
							<li><a href=" ">Chính sách và quy định</a></li>
							<li><a href=" ">Chính sách bảo mật</a></li>
							<li><a href=" ">Thông tin sở hữu</a></li>
						</ul>
					</div>
					<div class="col-3 ">
						<h4>Chăm sóc khách hàng</h4>
						<div class="phone-number ">
							<div class="phone-number__icon ">
								<i class="fa-solid fa-phone "></i>
							</div>
							<div class="phone-number__info ">
								<p style="font-size: 2.1rem;">0336311117</p>
								<p style="text-decoration: underline;">degrey.vn@gmail.com</p>
							</div>
						</div>
						<h4>Follow Us</h4>
						<div class="icons ">
							<div class="icon ">
								<i class="fa-brands fa-facebook-f "></i>
							</div>
							<div class="icon ">
								<i class="fa-brands fa-twitter "></i>
							</div>
							<div class="icon ">
								<i class="fa-brands fa-instagram "></i>
							</div>
							<div class="icon ">
								<i class="fa-brands fa-google-plus-g "></i>
							</div>
							<div class="icon ">
								<i class="fa-brands fa-youtube "></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright ">
			<div class=" ">
				<p>Copyright © 2022</p>
				<a href=" ">DEGREY VIETNAM. Powered by Haravan</a>
			</div>

		</div>
	</div>
	<script src='<c:url value="/resources/js/main.js"></c:url>'>
		
	</script>

</body>

</html>