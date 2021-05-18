<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiet san pham</title>
</head>
<body>
<nav style="background: url('template/web/images/slide-img1.jpg') repeat top left; height: 170px;">
    <div class="container">
          <!-- Header Logo -->
          <div class="logo"><a title="Datson" href="${pageContext.request.contextPath}/Home"><img alt="Datson" src="template/web/images/logo.png"></a></div>
          <!-- End Header Logo --> 

        <div class="mm-toggle-wrap">
          <div class="mm-toggle"><i class="fa fa-reorder"></i><span class="mm-label">Menu</span> </div>
        </div>
     
          <ul class="nav hidden-xs menu-item menu-item-left">
            <li class="level0 parent drop-menu"><a href="${pageContext.request.contextPath}/Home"><span>Home</span></a>
              
            </li>
            <li class="level0 parent drop-menu"><a href="#"><span>Thương hiệu</span> </a>
              <ul class="level1" style="display: none;">
                <li class="level1 first"><a href="#"><span>OEM</span></a></li>
                <li class="level1 nav-10-2"> <a href="#"> <span>Nilkin</span> </a> </li>
                <li class="level1 nav-10-3"> <a href="#"> <span>MiPow</span> </a> </li>
                <li class="level1 nav-10-4"> <a href="#"> <span>Gor</span> </a> </li>
                <li class="level1 first parent"><a href="#"><span>Baseus</span></a> 
                  <!--sub sub category-->
                  <ul class="level2 right-sub" style="top: 0px; left: 165px; display: none;">
                    <li class="level2 nav-2-1-1 first"><a href="checkout_method.html"><span>Checkout Method</span></a></li>
                    <li class="level2 nav-2-1-5 last"><a href="checkout_billing_info.html"><span>Checkout Billing Info</span></a></li>
                  </ul>
                  <!--sub sub category--> 
                </li>               
              </ul>
            </li>
            <li class="mega-menu"><a href="#" class="level-top"><span>About Us</span></a>
            </li>           
            </ul>
            <ul class="nav hidden-xs menu-item menu-item-right">
            <c:forEach items="${listc}" var="item">
            	<c:choose>
            		<c:when test="${param.idcategory == item.idcategory}">
            			<li class="level1 first active"><a href="danhsachsanpham?idcategory=${item.idcategory}"><span>${item.tenloai}</span></a></li>
            		</c:when>
            		<c:otherwise>
            		    <li class="level1 first"><a href="danhsachsanpham?idcategory=${item.idcategory}"><span>${item.tenloai}</span></a></li>
            		</c:otherwise>
            	</c:choose>            	             
            </c:forEach>
           </ul>                       
    </div>
  </nav>
 <section class="main-container col1-layout wow bounceInUp animated">
    <div class="main container">
      <div class="col-main">
        <div class="row">
          <div class="product-view">
            <div class="product-next-prev"> <a class="product-next" href="#"><span></span></a> <a class="product-prev" href="#"><span></span></a> </div>
            <div class="product-essential">
              <form action="#" method="post" id="product_addtocart_form">
                <input name="form_key" value="6UbXroakyQlbfQzK" type="hidden">
                <div class="product-img-box col-sm-4 col-xs-12">
                  <div class="new-label new-top-left"> New </div>
                  <div class="product-image">
                    <div class="large-image"> <a href="products-images/product.jpg" class="cloud-zoom" id="zoom1"> <img src="${detail.cover }" alt="product image"> </a> </div>
                    <div class="flexslider flexslider-thumb">
                      <ul class="previews-list slides">
                        <!--<li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 1"/></a></li>
                        <li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 2"/></a></li>
                        <li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 1"/></a></li>
                        <li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 2"/></a></li>
                        <li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 2"/></a></li>
                        <li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 2"/></a></li>
                        <li><a href='products-images/product.jpg' class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: 'products-images/product.jpg' "><img src="products-images/product.jpg" alt = "Thumbnail 2"/></a></li>
                        --> 
                      </ul>
                    </div>
                  </div>
                  <!-- end: more-images --> 
                </div>
                <div class="product-shop col-sm-8 col-xs-12">
                  <div class="product-name">
                    <h1>${detail.tenphukien}</h1>
                  </div>
                  <div class="ratings">
                    <div class="rating-box">
                      <div style="width:60%" class="rating"></div>
                    </div>
                    <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Your Review</a> </p>
                  </div>
                  <div class="price-block">
                    <div class="price-box">
                      <p class="special-price"> <span class="price-label">Special Price</span> <span id="product-price-48" class="price">${detail.giaban }VNĐ </span> </p>
                      <!--<p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> ${detail.giaban } </span> </p>--> 
                    </div>
                    <p class="availability in-stock pull-right"><span>In Stock</span></p>
                  </div>
                  <div class="short-description">
                    <h2>${detail.mota }</h2>
                    
                  </div>
                  <div class="add-to-box">
                    <div class="add-to-cart">
                      <div class="pull-left">
                        <div class="custom pull-left">
                          <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
                          <input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                          <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
                        </div>
                      </div>
                      <button onClick="productAddToCartForm.submit(this)" class="button btn-cart" title="Add to Cart" type="button"><span>Add to Cart</span></button>
                    </div>
                    <div class="email-addto-box">
                      <p class="email-friend"><a href="#" class=""><span>Email to a Friend</span></a></p>
                      <ul class="add-to-links">
                        <li> <a class="link-wishlist" href="#"><span>Add to Wishlist</span></a></li>
                        <li><span class="separator">|</span> <a class="link-compare" href="#"><span>Add to Compare</span></a></li>
                      </ul>
                    </div>
                  </div>
                 </div>
              </form>
            </div>
            <div class="product-collateral col-lg-12 col-sm-12 col-xs-12 bounceInUp animated">
              <div class="add_info">
                <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
                  <li class="active"> <a href="#product_tabs_description" data-toggle="tab"> Product Description </a>
                 
                  </li>
                  
                               
                </ul> 
                 <div id="productTabContent" class="tab-content">
                  <div class="tab-pane fade in active" id="product_tabs_description">
                    <div class="std">
                      <p>${detail.mota }</p>
                     
                    </div>     
                  </div>                        
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>