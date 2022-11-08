<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <link rel="stylesheet" href='<c:url value="/resources/asset/css/root.css"></c:url>'/>
    <link rel="stylesheet" href='<c:url value="/resources/asset/css/grip.css"></c:url>' />
    <link rel="stylesheet" href='<c:url value="/resources/asset/css/main.css"></c:url>' />
    <link rel="stylesheet" href='<c:url value="/resources/asset/css/responsive.css"></c:url>' />
    <link rel="stylesheet" href='<c:url value="/resources/asset/css/payment.css"></c:url>'>
    <link
      rel="stylesheet"
      href="./font/fontawesome-free-6.1.2-web/css/all.min.css"
    />
    <link rel="stylesheet" href="./asset/themify-icons/themify-icons.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <link rel="stylesheet" href='<c:url value="/resources/asset/css/detailproduct.css"></c:url>' />
    <link
      href="https://fonts.googleapis.com/css?family=Quicksand"
      rel="stylesheet"
    />
    <!-- CSS only -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
      crossorigin="anonymous"
    />
    <!-- JavaScript Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
      crossorigin="anonymous"
    ></script>

    <title>Degrey</title>
    <style>
      body {
        font-family: "Quicksand", Arial, Helvetica, sans-serif;
        font-size: 62.5%;
      }
    </style>
</head>
<body>
    <div class="nav">
        <div class="logo">
          <img
            src='<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"></c:url>'
            alt=""
          />
        </div>
       <div class="nav__bar">
			<a href="home" style="text-decoration: none;"><div class="nav__bar-item" style="height: 100%">
				<p>Trang chủ</p>
			</div></a>
			<a href="product" style="text-decoration: none;">
			<div class="nav__bar-item" style="height: 100%">
				<p>Sản phẩm</p>
			</div>
			</a> 
			<a href="store" style="text-decoration: none;"><div class="nav__bar-item" style="height: 100%">
				<p>Store</p>
			</div></a>
			<a href="intro" style="text-decoration: none;"><div class="nav__bar-item" style="height: 100%">
			  
				<p>Giới thiệu</p>
			</div>
			</a>
			

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
        <div class="header__info-items-lists hidden">
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
          <button style="height: 100%; width: 100%; background-color: #ff0000; border: none; color: #fff;"><a style="font-size: 18px;"><span>XEM GIỎ HÀNG</span></a></button> 
          </div>
         
        </div>
      </div>
        <div class="img-nav__bar"></div>
        <div class="footer__header"></div>
        <div class="search hidden">
          <div class="search-logo">
            <img
              src='<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"></c:url>'
              alt=""
            />
          </div>
          <div class="body-search">
            <div class="input-search">
              <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
  
              <input type="text" placeholder="Tìm kiếm sản phẩm..." />
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
      <div class="payment-container">
        <div class="redirect-pre__sanpham-container">
                <a href="">Trang chủ</a>
                <p>/ Giỏ hàng (${quantityOfItems})</p>
            </div>
        <div class="payment-main-container">
            <div class="payment-main-container-left">
                <h1>Giỏ hàng của bạn</h1>
                <div class="payment-items">
                    <p class="title-number-cart">Bạn đang có <strong>${quantityOfItems} sản phẩm</strong> trong giỏ hàng</p>
                </div>
                <div class="table-cart">
                <c:forEach items="${addedItems}" var="pairAddedItems">
                   <div class="line-item">
                        <a href="http://">Xóa</a>
                        <div style="width: 80px; height: 80px; margin-left: -10px;">
                         <img src="<c:url value="/resources/asset/image/${pairAddedItems.key.type}/${pairAddedItems.key.type}${pairAddedItems.key.id}/${pairAddedItems.key.type}${pairAddedItems.key.id}.webp"/>" alt="" />
                         <img src="<c:url value="/resources/asset/image/${pairAddedItems.key.type}/${pairAddedItems.key.type}${pairAddedItems.key.id}/${pairAddedItems.key.type}${pairAddedItems.key.id}.jpeg"/>" alt="" />
           
                        </div>
                        
                        <div class="media-right">
                            <a href="">
                               ${pairAddedItems.key.name}
                            </a>
                            <p>${pairAddedItems.key.price}₫</p>
                        </div>
                        <div class="media-total">
                            <span>${pairAddedItems.key.price}₫</span>
                            <div>
                                <button>-</button>
                                <input type="text" value="${pairAddedItems.value}" name="quantity">
                                <button>+</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </div>
                <div class="text">
                    <label for="text-note">Ghi chú đơn hàng</label>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                </div>
                <label for="checkbox-bill"><label for="box" style="width: 22px; height: 22px; border-radius: 50%; font-size: 1.8rem; font-weight: 600;"><i class="ti-check"></i></label><label for="" style="font-size: 1.4rem; font-weight: 600;">Xuất hoá đơn cho đơn hàng</label></label>
                <div class="form-btn">
                    <div class="form-group"><input type="text" placeholder="Tên công ty..."></div>
                    <div class="form-group"><input type="text" placeholder="Mã số thuế..."></div>
                    <div class="form-group"><input type="text" placeholder="Email..."></div>
                    <input type="text" placeholder="Địa chỉ công ty...">
                    
                    <button type="submit" class="addToCart" style="width: 170px; margin-left: 0; margin-top: 15px; margin-bottom: 50px;"><span>LƯU THÔNG TIN</span></button>
                    
                </div>
            </div>
            <div class="payment-main-container-right">
              <div class="order-summary-block">
                <h2>Thông tin đơn hàng</h2>
                <div class="summary-total">
                  <p>Tổng tiền <span> ${totalTemp}₫</span></p>
                </div>
                <div class="summary-action">
                  <p>Phí vận chuyển sẽ được tính ở trang thanh toán.</p>
                  <p>Bạn cũng có thể nhập mã giảm giá ở trang thanh toán.</p>
                  <div class="summary-button">
                    <button><a href="">THANH TOÁN</a></button>
                  </div>
                </div>
              </div>
              <div class="order-summary-notify">
                <div class="summary-warning">
                  <p><strong>Chính sách giao hàng</strong></p>
                  <p>Hiện chúng tôi chỉ áp dụng thanh toán với đơn hàng có giá trị tối thiểu <strong>150.000₫</strong> trở lên.</p>
                </div>
              </div> 
            </div>
        </div>
        
      </div>
      <div class="footer">
            
        <div class="main-footer">
          <div class="row">
            <div class="col-3">
              <h4>Về DEGREY</h4>
              <p>
                Cái tên Degrey được tạo ra rất ngẫu hứng, xuất phát từ “Chuỗi
                ngày u buồn về sự nghiệp, tương lai trong quá khứ của chính
                mình” – theo lời chia sẻ của Degrey’s founder.
              </p>
              <a href=" "
                ><img src='<c:url value="/resources/asset/image/bo_cong_thuong.webp"></c:url>' alt=" "
              /></a>
            </div>
            <div class="col-3">
              <h5>Địa chỉ</h5>
              <h5>-Sài Gòn:</h5>
              <p>43 Huỳnh Văn Bánh P.17 Q.Phú Nhuận</p>
              <p>1041 Luỹ Bán Bích P.Tân Thành Q.Tân Phú</p>
              <p>26 Lý Tự Trọng Q.1 - The New Playground</p>
              <h5>-Đà Lạt:</h5>
              <p>11 Khu Hoà Bình P.1</p>
              <div class="one-line">
                <h5>Điện thoại:</h5>
                <p>0336311117</p>
              </div>
              <div class="one-line">
                <h5>Email:</h5>
                <p>degrey.vn@gmail.com</p>
              </div>
            </div>
            <div class="col-3">
              <h4>Hỗ trợ khách hàng</h4>
              <ul>
                <li><a href=" ">Shop</a></li>
                <li><a href=" ">Hướng dẫn đặt hàng</a></li>
                <li><a href=" ">Chính sách và quy định</a></li>
                <li><a href=" ">Chính sách bảo mật</a></li>
                <li><a href=" ">Thông tin sở hữu</a></li>
              </ul>
            </div>
            <div class="col-3">
              <h4>Chăm sóc khách hàng</h4>
              <div class="phone-number">
                <div class="phone-number__icon">
                  <i class="fa-solid fa-phone"></i>
                </div>
                <div class="phone-number__info">
                  <p style="font-size: 2.1rem">0336311117</p>
                  <p style="text-decoration: underline">degrey.vn@gmail.com</p>
                </div>
              </div>
              <h4>Follow Us</h4>
              <div class="icons">
                <div class="icon"><i class="fa-brands fa-facebook-f"></i></div>
                <div class="icon"><i class="fa-brands fa-twitter"></i></div>
                <div class="icon"><i class="fa-brands fa-instagram"></i></div>
                <div class="icon">
                  <i class="fa-brands fa-google-plus-g"></i>
                </div>
                <div class="icon"><i class="fa-brands fa-youtube"></i></div>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
</html>