
<%@page import="java.math.BigDecimal"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/root.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/grip.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/main.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/responsive.css"/>" >
    
    <link rel="stylesheet" href="<c:url value="/resources/asset/css/detailproduct.css"/>" >
    <link
      rel="stylesheet"
      href="<c:url value="/resources/font/fontawesome-free-6.1.2-web/css/all.min.css"/>"
    />
    <link rel="stylesheet" href="<c:url value="/resources/asset/themify-icons/themify-icons.css"/>" />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
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

.lists-item-header__info-items-lists::-webkit-scrollbar-track
{
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	border-radius: 10px;
	background-color: #F5F5F5;
	
}

.lists-item-header__info-items-lists::-webkit-scrollbar
{
	width: 7px;
	background-color: #F5F5F5;
	
}

.lists-item-header__info-items-lists::-webkit-scrollbar-thumb
{
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	background-color: #555;
}
      .lists-item-header__info-items-lists{
      margin-top: 0;
      }
      
    </style>
  </head>
  <body>
    <div class="nav">
      <div class="logo">
      <img src="<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"/>" src="">
      </div>
      <div class="nav__bar">
        <a href="home" style="text-decoration: none;">
			<div class="nav__bar-item" style="height: 100%">
				<p>Trang chủ</p>
			</div>
			</a> 
			<a href="product" style="text-decoration: none;">
			<div class="nav__bar-item active" style="height: 100%;">
				<p>Sản phẩm</p>
			</div>
			</a>
			
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
            src="<c:url value="/resources/asset/image/tote-1_33445b051a404bb790b6d0df0275ac8d.webp"/>"
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
    <div class="app">
      <div class="layer hidden"></div>
      <div class="detail-product">
        <div class="header__datail-product pre__sanpham-container">
          <div class="redirect-pre__sanpham-container">
            <a href="">Trang chủ</a>
            <p>/ Tất cả sản phẩm</p>
            <p>/ Balo Nắp Da Degrey - BNDD</p>
          </div>
        </div>
        <div class="info__detail-product">
          <div class="left-info__detail-product">

           <div class="left-info__detail-product__enable-fix">
           <c:if test="${item.percentSale !=0}">
            <div class="product-percent">
              <span class="pro-sale">-${item.percentSale}%<br> OFF </span>
            </div>
            </c:if>
              <div class="slick-detail__product-items-other"><svg class="icon icon--share" role="presentation" viewBox="0 0 24 24"> <g stroke="currentColor" fill="none" fill-rule="evenodd" stroke-width="1.5"> <path d="M8.6,10.2 L15.4,6.8"></path> <path d="M8.6,13.7 L15.4,17.1"></path> <circle stroke-linecap="square" cx="5" cy="12" r="4"></circle> <circle stroke-linecap="square" cx="19" cy="5" r="4"></circle> <circle stroke-linecap="square" cx="19" cy="19" r="4"></circle> </g> </svg>Ff</div>
               
              <div class="slick-detail__product">
                
                  <div class="slick-detail__product-items">
          <img src='<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}.webp"></c:url>' alt="" />
          
          <img src='<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}.jpeg" />' alt="" />
          </div>
                <c:forEach begin="1" end="${quantity-1}" var="x">
               
                <div class="slick-detail__product-items">
          <img src='<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}items${x}.webp"></c:url>' alt="" />
          
          <img src='<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}items${x}.jpeg"></c:url>' alt="" />
          </div>
                </c:forEach>
               
          
          
          
              </div>
              <div class="thumbnail_slider" style="height: 100px;">
              <div class="slick-detail__product-items">
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}.webp"/>" alt="" />
                    
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}.jpeg"/>" alt="" />
                  </div>
                <c:forEach begin="1" end="${quantity-1}" var="x">
                <div class="slick-detail__product-items">
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}items${x}.webp"/>" alt="" />
                    
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${idImage}/${type}${idImage}items${x}.jpeg"/>" alt="" />
                  </div>
                </c:forEach>
                  
                  
            </div>
           </div>
          
        </div>
        <div class="right-info__detail-product">
          <h1>Balo Nắp Da Degrey - BNDD</h1>
          <div class="product-price">
          <c:if test="${item.percentSale!=0}">
            <del>${item.price}₫</del>
            <span class="pro-price">${item.price-item.percentSale*item.price/100}₫</span>
            <span class="pro-percent">${item.percentSale}% GIẢM</span>
            </c:if>
            <c:if test="${item.percentSale==0}">
             <span class="pro-price">${item.price}₫</span>
            </c:if>
          </div>
          <div class="product-buy">
          <form action="addToCart" method="post" style="display: flex;">
            <div class="product-quantity">
              <button class="decrease">-</button>
              <input type="text" name="quantity" value="1" id="quantity" style="width: 60px; height: 45px;text-align: center;font-weight: 600;background-color: #fff;border: 1px solid #f4f4f4;color: #000;font-size: 1.6rem; padding: 0 !important;margin: 0;">
              <button class="increase">+</button>
              <input type="text" name="idproduct" value="${id}" style="display: none;">
            </div>
            
            <button type="submit" class="addToCart" style="width: 460px"><span>THÊM VÀO GIỎ</span></button>
            </form>
          </div>
          <div class="sales-voucher">
            <div class="">Freeship đơn hàng giá trị trên 1 triệu đồng</div>
            <div class="" style="position: absolute; right: 0;">Đổi hàng chưa qua sử dụng trong vòng 30 ngày</div>
          </div>
          <div class="product-description">
            <h2>THÔNG TIN SẢN PHẨM <i class="fa-solid fa-plus"></i> <i class="fa-sharp fa-solid fa-minus"></i></h2>
            <div class="description-product__detail">
              <p>- Chất liệu: Da</p>
              <p>- Hoạ tiết: Được in trực tiếp lên sản phẩm</p>
              <p>- Size: 40cm X 30cm X 12cm</p>
              <p>- Ngăn chống sốc đựng vừa laptop 15inch</p>
              <p>- Thương hiệu: Degrey</p>
              <p>- Sản xuất: Việt Nam</p>
              <p>- Màu sắc và họa tiết được thiết kế riêng bởi team design DEGREY</p>
              <p> </p>
              <p>+ HƯỚNG DẪN BẢO QUẢN SẢN PHẨM DEGREY:</p>
              <p>- Không dùng hóa chất tẩy mạnh lên sản phẩm</p>
              <p>- Không dùng vật dụng sắc, nhọn cà trực tiếp lên bề mặt Balo</p>
              <p>- Không giặt máy</p>
              <p>- Sử dụng bàn chải có lông mềm</p>
              <p>- Tuyệt đối không dùng bàn chải cước cứng sẽ gây ra các vết xước trên nền vải</p>
              <p> </p>
              <p>+ CHÍNH SÁCH ĐỔI SẢN PHẨM:</p>
              <p>1.Điều kiện đổi hàng</p>
              <p>- Bạn lưu ý giữ lại hoá đơn để đổi hàng trong vòng 30 ngày.</p>
              <p>- Đối với mặt hàng giảm giá, phụ kiện cá nhân (áo lót, khẩu trang, vớ ...) không nhận đổi hàng.</p>
              <p>- Tất cả sản phẩm đã mua sẽ không được đổi trả lại bằng tiền mặt.</p>
              <p>- Bạn có thể đổi size hoặc sản phẩm khác trong 30 ngày (Lưu ý: sản phẩm chưa qua sử dụng, còn tag nhãn và hóa đơn mua hàng.)</p>
              <p>- Bạn vui lòng gửi cho chúng mình clip đóng gói và hình ảnh của đơn hàng đổi trả của bạn, nhân viên tư vấn sẽ xác nhận và tiến hành lên đơn đổi trả cho bạn.</p>
              <p>2. Trường hợp khiếu nại</p>
              <p>- Bạn phải có video unbox hàng</p>
              <p>- Quay video rõ nét 6 mặt của gói hàng</p>
              <p>- Quay rõ: Tên người nhận, mã đơn, địa chỉ, số điện thoại.</p>
              <p>- Video không cắt ghép, chỉnh sửa</p>
              <p>- Degrey xin không tiếp nhận giải quyết các trường hợp không thỏa các điều kiện trên.</p>

            </div>
            <h2>DỊCH VỤ GIAO HÀNG<i class="fa-solid fa-plus"></i> <i class="fa-sharp fa-solid fa-minus"></i></h2>
            <div class="description-product__detail">
               <ul class="infoList-Diliverly">
                <li><img class=" lazyloaded" data-src="https://file.hstatic.net/1000397797/file/delivery-ico1_f26631929e1b41dab022d9960006297c.svg" src="https://file.hstatic.net/1000397797/file/delivery-ico1_f26631929e1b41dab022d9960006297c.svg" alt="Cam kết 100% chính hãng Degrey">
                  <span>Cam kết 100% chính hãng Degrey</span>
                </li>
                <li><img class=" lazyloaded" data-src="https://file.hstatic.net/1000397797/file/delivery-ico2_5ea2de2f279b4dbfa10fcb9b9c448b4d.svg" src="https://file.hstatic.net/1000397797/file/delivery-ico2_5ea2de2f279b4dbfa10fcb9b9c448b4d.svg" alt="Giao hàng dự kiến: 
                  Thứ 2 - Thứ 7 từ 9h00 - 17h00">
                <span>Giao hàng dự kiến:</span>
                <strong>Thứ 2 - Thứ 7 từ 9h00 - 17h00</strong>
                </li>
                <li><img class=" lazyloaded" data-src="https://file.hstatic.net/1000397797/file/delivery-ico3_dd589d9c49584441a9ef0c2f9300649f.svg" src="https://file.hstatic.net/1000397797/file/delivery-ico3_dd589d9c49584441a9ef0c2f9300649f.svg" alt="Hỗ trợ 24/7
                  Với các kênh chat, email &amp; phone">
                <span>Hỗ trợ 24/7</span>
                <strong>Với các kênh chat, email & phone</strong>
                </li>
               </ul>
            </div>
          </div>
        </div>
      </div>
      <section class="partition"></section>
      <div class="container-module">
        <h2>Sản phẩm liên quan</h2>
        <div class="row-grid">
          <c:forEach items="${relatedItems}" var="relatedItem">
             <div class="col-2-4">
                <div class="item">
                <a href="detailproduct?id=${relatedItem.key.id}" style="text-decoration: none;" class="itemLink">
                    <div class="image-item">
                    <div>
                     <img src="<c:url value="/resources/asset/image/${type}/${type}${relatedItem.value}/${type}${relatedItem.value}.webp"/>" alt="" />
                    
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${relatedItem.value}/${type}${relatedItem.value}.jpeg"/>" alt="" />
                  
                    </div>
                   
                <c:forEach begin="1" end="${relatedItem.key.sizeImage-1}" var="x">
               <div>
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${relatedItem.value}/${type}${relatedItem.value}items${x}.webp"/>" alt="" />
                    
                    <img src="<c:url value="/resources/asset/image/${type}/${type}${relatedItem.value}/${type}${relatedItem.value}items${x}.jpeg"/>" alt="" />
                 </div>
                </c:forEach>
                </div>
                <div class="short__descrition-item">
                        <p>${relatedItem.key.name}</p>
                        <p style="font-weight: 600;">${relatedItem.key.price}₫</p>
                    </div>
                    </a>
                    </div>
                    
                </div>
          
          </c:forEach>
             </div> 
  </div>
  
    </div>
      <div class="footer">
        <div class="pre-footer">
          <h4>Set đồ gợi ý</h4>
          <div class="row">
            <div class="col-4">
            <img src='<c:url value="/resources/asset/image/pre-footer1.webp"></c:url>' alt=" " />
            </div>
            <div class="col-4">
            <img src='<c:url value="/resources/asset/image/pre-footer2.webp"></c:url>' alt=" " />
            </div>
            <div class="col-4">
            
            <img src='<c:url value="/resources/asset/image/pre-footer3.webp"></c:url>' alt=" " />
            </div>
          </div>
        </div>
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
                ><img src="<c:url value="/resources/asset/image/bo_cong_thuong.webp" /> " alt=" "
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
    </div>
    
   <script type="text/javascript" src='<c:url value="/resources/js/main.js"/>'></script>
    <script type="text/javascript" src='<c:url value="/resources/js/detailproduct.js" />'> </script>
    
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-1.11.0.min.js"
    ></script>
    <script
      type="text/javascript"
      src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"
    ></script>
    <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"
    ></script>
    
     <script type="text/javascript">
     $(function () {
         $(".slick-detail__product").slick({
             infinite:false,
             slidesToShow: 1,
           slidesToScroll: 1,
           accessibility: true,
           autoplay: true,
           autoplaySpeed: 2000,
           adaptiveHeight: true,
           arrows: true,
           dots:true,
           draggable: true,
           prevArrow:
             "<button type='button' class='slick-prev pull-left'><i class='fa fa-angle-left' aria-hidden='true'></i></button>",
           nextArrow:
             "<button type='button' class='slick-next pull-right'><i class='fa fa-angle-right' aria-hidden='true'></i></button>",
           asNavFor: ".thumbnail_slider"
         });

         $(".thumbnail_slider").slick({
           slidesToShow: 6,
           slidesToScroll:1,
           asNavFor: ".slick-detail__product",
           arrows:false,
           infinite:true,
           focusOnSelect: true,
           draggable: true,
           centerMode: true
         });
         $(".row-grid").slick(
           {
             slidesToShow: 5,
             slidesToScroll:1,
             infinite:false,
             prevArrow:
             "<button type='button' class='slick-prev pull-left'><i class='fa fa-angle-left' aria-hidden='true'></i></button>",
           nextArrow:
             "<button type='button' class='slick-next pull-right'><i class='fa fa-angle-right' aria-hidden='true'></i></button>",
           asNavFor: ".thumbnail_slider"
           }
         );
         $(".image-item").slick(
           {
             slidesToShow: 1,
             slidesToScroll:1,
             infinite:true,
             prevArrow:
             "<button type='button' class='slick-prev pull-left'><i class='fa fa-angle-left' aria-hidden='true'></i></button>",
           nextArrow:
             "<button type='button' class='slick-next pull-right'><i class='fa fa-angle-right' aria-hidden='true'></i></button>",
           asNavFor: ".thumbnail_slider"
           }
         );
       })
   
  

 var exit = document.getElementsByClassName('search')[0].getElementsByClassName('button-exit')[0];
 exit.onclick = function() {
 	if (!document.getElementsByClassName('search')[0].classList.contains('hidden')) {
 		document.getElementsByClassName('search')[0].classList.add('hidden');
 		document.querySelector('.layer').classList.add('hidden')
 	} else {
 		document.getElementsByClassName('search')[0].classList.remove('hidden');
 		document.querySelector('.layer').classList.add('hidden')
 	}
 }
 var serach_input = document.querySelector('.header__info-search');
 serach_input.onclick = function() {
 	document.querySelector('.search').classList.remove('hidden');
 	document.querySelector('.layer').classList.remove('hidden')
 }
 var cart = document.querySelector('.header__info-item__adder');
 cart.onclick = function() {
 	if (document.querySelector('.header__info-items-lists').classList.contains('hidden')) {
 		document.querySelector('.header__info-items-lists').classList.remove('hidden');
 	} else {
 		document.querySelector('.header__info-items-lists').classList.add('hidden');
 	}
 }

 window.onscroll = function() {
 	if (document.documentElement.scrollTop > 50) {
 		document.querySelector('.nav').classList.add('nav-scroll')
 	} else {
 		document.querySelector('.nav').classList.remove('nav-scroll')
 	}
 }
 document.querySelector('.layer').onclick = () => {
 	document.getElementsByClassName('search')[0].classList.add('hidden');
 	document.querySelector('.layer').classList.add('hidden')
 }

     </script>
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
    