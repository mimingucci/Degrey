<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
        rel="stylesheet"
        type="text/css"
        href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
      />
      
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/detailproduct.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/root.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/grip.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/responsive.css"/>">
    
    <link rel="stylesheet" href="<c:url value="/resources/font/fontawesome-free-6.1.2-web/css/all.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/asset/themify-icons/themify-icons.css"/>">
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    
    <title>Degrey</title>
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
		
      <img src='<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"></c:url>' src="">
		</div>
	
		<div class="nav__bar">
			<a href="home" style="text-decoration: none;">
			<div class="nav__bar-item" style="height: 100%">
				<p>Trang chủ</p>
			</div>
			</a> 
			<div class="nav__bar-item active">
				<p>Sản phẩm</p>
			</div>
			<a href="store" style="text-decoration: none;"><div class="nav__bar-item" style="height: 100%">
				<p>Store</p>
			</div></a>
			<a href="intro" style="text-decoration: none;"><div class="nav__bar-item" style="height: 100%">
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
			 <div class="header__info-item__adder" data-content="${quantityOfItems}">
          <i class="ti-shopping-cart"></i>
          <div class="a">Giỏ hàng</div>
        </div>
      </div>
     
		</div>
		<div class="header__info-items-lists hidden" style="top: 12%; position: fixed; z-index: 100;">
        <div class="header-header__info-items-lists">GIỎ HÀNG</div>
        <div class="lists-item-header__info-items-lists" style="max-height: 270px; overflow: auto;">
       
          <c:forEach items="${addedItems}" var="pairAddedItems">
              <div class="item-header__info-items-lists" style="margin-top: 20px" id="items${pairAddedItems.key.id}">
            <div class="item-cart__img">
              <img src="<c:url value="/resources/asset/image/${pairAddedItems.key.type}/${pairAddedItems.key.type}${pairAddedItems.key.id}/${pairAddedItems.key.type}${pairAddedItems.key.id}.webp"/>" alt="" />
              <img src="<c:url value="/resources/asset/image/${pairAddedItems.key.type}/${pairAddedItems.key.type}${pairAddedItems.key.id}/${pairAddedItems.key.type}${pairAddedItems.key.id}.jpeg"/>" alt="" />
           
            </div>
            <div class="item-cart__sort-discrition">
              <div class="left-item-cart__sort-discrition">
                <a href="">${pairAddedItems.key.name}</a>
                <p>L</p>
                <div class="control-quantity">
                  <i class="fa-solid fa-circle-minus" onclick="decreaseAddedItems(${pairAddedItems.key.id}, ${pairAddedItems.key.price})" style="cursor: pointer;"></i>
                  <p> <input type="text" name="quantityAddedItems" value="${pairAddedItems.value}" id="quantityAddedItems" style="width: 30px; height: 25px;text-align: center;font-weight: 600;background-color: #fff; border-width : 0;color: #000;font-size: 1.6rem; padding: 0 !important;margin: 0;">
             </p>
                  <i class="fa-solid fa-circle-plus" onclick="increaseAddedItems(${pairAddedItems.key.id}, ${pairAddedItems.key.price})" style="cursor: pointer;"></i>
                </div>
              </div>
              <div class="right-item-cart__sort-discrition">
             
                <i class="fa-solid fa-xmark" onclick="deleteCookie(${pairAddedItems.key.id}, ${quantityOfItems}, ${pairAddedItems.key.price})" style="cursor: pointer;"></i>
                <p>${pairAddedItems.key.price} <a href="">đ</a></p>
              </div>
            </div>
          </div>
          </c:forEach>
          
        </div>
        <div class="footer-header__info-items-lists">
          <div class="total-price">
            <p>TỔNG TIỀN:</p>
            <p style="margin-left: auto; color: red; font-weight: 600" id="totalprice">
               ${totalTemp}
            </p><p>₫</p>
          </div>
          <div style="height: 40px;">
          <button style="height: 100%; width: 100%; background-color: #ff0000; border: none; color: #fff;"><a style="font-size: 18px;"><span>XEM VÀO GIỎ</span></a></button> 
          </div>
         
        </div>
      </div>
		<div class="img-nav__bar"></div>
		<div class="footer__header"></div>
		<div class="search hidden" style="z-index: 1000; position: fixed;">
			<div class="search-logo">
				<img
					src='<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"></c:url>'
					alt="">
			</div>
			<div class="body-search">
				<div class="input-search">
					<a href=""><i class="fa-solid fa-magnifying-glass"></i></a> <input
						type="text" placeholder="Tìm kiếm sản phẩm...">
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
		<div class="header">

			
			
		</div>
		
		<!-- Trang San Pham -->
		<div class="sanpham-container">
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
					
					<c:forEach varStatus="numberRow" begin="0" end="${rows}">
					  <div class="row-grid">
					    <c:forEach varStatus="position" begin="${numberRow.index*5}" end="${numberRow.index*5+4}">
					    <c:if test="${listItems[position.index].key!=null}">
					    <div class="col-2-4">
							<div class="item">
							  <a href="detailproduct?id=${listItems[position.index].key.id}" style="text-decoration: none;">
							  
							  <div class="image-item">
							  
							  <div><img
										src='
										<c:url value="/resources/asset/image/${listItems[position.index].key.type}/${listItems[position.index].key.type}${listItems[position.index].value}/${listItems[position.index].key.type}${listItems[position.index].value}.webp"/> 
										'
										alt=""></div>
									
										<div><img
										src='
										<c:url value="/resources/asset/image/${listItems[position.index].key.type}/${listItems[position.index].key.type}${listItems[position.index].value}/${listItems[position.index].key.type}${listItems[position.index].value}.jpeg"/> 
										'
										alt=""></div>
								</div>
								
								
								
								<div class="short__descrition-item">
									<p>${listItems[position.index].key.name}</p>
									<p style="font-weight: 600;">${listItems[position.index].key.price}đ</p>
								</div>
							  </a>
								
							</div>
						</div>
					   </c:if>
					       
					    </c:forEach>
					  </div>
					</c:forEach>
						
						
						
						
					
					

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
		
		<div class="footer ">
			<div class="pre-footer">
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
							src='<c:url value="/resources/asset/image/bo_cong_thuong.webp" />'
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
	
    <script type="text/javascript" src='<c:url value="/resources/js/detailproduct.js"/>'></script>
	<script type="text/javascript" src='<c:url value="/resources/js/main.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/demo.js"/>'></script>
	<script type="text/javascript">
   function deleteCookie(id, quantity, priceItem){
	   document.querySelector('.header__info-item__adder').setAttribute('data-content', quantity-1);
	   document.getElementById('items'+id).classList.add('hidden');
	   document.cookie = "items"+id+'=; Max-Age=-99999999;'; 
	   document.getElementById("totalprice").textContent=(Number(document.getElementById("totalprice").textContent)-Number(Number(priceItem)*Number(quantity)))+'.00';
		  
   }
   let elem = window.getComputedStyle(document.querySelector('.header__info-item__adder'), ':before');
   function decreaseAddedItems(id, priceItem){
	   if(document.getElementById("quantityAddedItems").value-1==0){
		   document.getElementById('items'+id).classList.add('hidden');
		   document.cookie = "items"+id+'=; Max-Age=-99999999;';
		   document.getElementById("totalprice").textContent=(Number(document.getElementById("totalprice").textContent)-Number(priceItem))+'.00';
			  
	   }else{
		   document.getElementById("quantityAddedItems").value=document.getElementById("quantityAddedItems").value-1;
		   document.cookie="items"+id+'='+document.getElementById("quantityAddedItems").value+'; Max-Age='+30*24*60*60;
		   document.getElementById("totalprice").textContent=(Number(document.getElementById("totalprice").textContent)-Number(priceItem))+'.00';
	  
	   }
	   
	    }
   function increaseAddedItems(id, priceItem){
	   document.getElementById("quantityAddedItems").value=Number(document.getElementById("quantityAddedItems").value)+Number(1);
	   document.cookie="items"+id+'='+document.getElementById("quantityAddedItems").value+'; Max-Age='+30*24*60*60;
	   document.getElementById("totalprice").textContent=(Number(document.getElementById("totalprice").textContent)+Number(priceItem))+'.00';
  
   }
   
   </script>
</body>
</html>