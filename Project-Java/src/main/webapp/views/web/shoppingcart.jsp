<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Shopping cart</title>
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
              <c:forEach items="${thuonghieu}" var="item">
                <li class="level1 nav-10-2"> <a href="danhsachsanpham?idth=${item.IDThuongHieu}"> <span>${item.tenThuongHieu}</span> </a> </li>   
              </c:forEach>              
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
  <section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
      <c:if test="${ sessionScope.cart.size()>0}">
        <div class="cart">
          <div class="page-title">
            <h1>Shopping Cart</h1>
          </div>
          <div class="table-responsive">
            <form method="post" action="${pageContext.request.contextPath }/cart?action=updatecart">           
              <fieldset>
                <table class="data-table cart-table" id="shopping-cart-table">
                  <thead>
                    <tr class="first last">
                      <th rowspan="1">&nbsp;</th>
                      <th rowspan="1"><span class="nobr">Product Name</span></th>
                      <th colspan="1" class="a-center"><span class="nobr">Unit Price</span></th>
                      <th class="a-center " rowspan="1">Qty</th>
                      <th colspan="1" class="a-center">Subtotal</th>
                      <th class="a-center" rowspan="1">&nbsp;</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr class="first last">
                      <td class="a-right last" colspan="50">
                        <a href ="${pageContext.request.contextPath }/Home"><button onclick="#" class="button btn-continue" title="Continue Shopping" type="button" ><span>Continue Shopping</span></button></a>
                        <button class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit"><span>Update Cart</span></button>
                    </tr>
                  </tfoot>
                  <tbody>    
                  <c:set var="total" value="0"></c:set>
                  
                  <c:forEach items="${sessionScope.cart}" var="item"> 
	                  <c:set var="total" value="${total + item.product.giaban * item.quantity }"></c:set>
	                    <tr class="first odd">
	                      <td class="image"><a class="product-image" title="" href="#"><img width="75" height="75" alt="Women's Crepe Printed Black" src="${item.product.cover}"></a></td>
	                      <td><h2 class="product-name"> <a href="${pageContext.request.contextPath}/DetaiProduct?pid=${item.product.IDPhukien}">${item.product.tenphukien }</a> </h2></td>
	                      <td class="a-center hidden-table"><span class="cart-price"> <span class="price">${item.product.giaban }</span> </span><small>VND</small>
	                      </td>
	                      <td class="a-center movewishlist"><input maxlength="12" class="input-text qty" title="Qty" size="4" value="${item.quantity}" name="quantity"></td>
	                      <td class="a-center movewishlist"><span class="cart-price"> <span class="price">${item.product.giaban*item.quantity }</span> </span><small>VND</small>
	                      </td>
	                      <td class="a-center last"><a class="button remove-item" title="Remove item" href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.IDPhukien }"><span><span>Remove item</span></span></a></td>
	                    </tr>
                   </c:forEach>         
                  </tbody>
                </table>
              </fieldset>
            </form>
          </div>
          <!-- BEGIN CART COLLATERALS -->
          <div class="cart-collaterals row">
            <div class="col-sm-4"> 
            </div>
            <div class="col-sm-4">
              <div class="discount">
                <h3>Discount Codes</h3>
                <form method="post" action="#" id="discount-coupon-form">
                  <label for="coupon_code">Enter your coupon code if you have one.</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" name="coupon_code" id="coupon_code" class="input-text fullwidth">
                  <button value="Apply Coupon" class="button coupon " title="Apply Coupon" type="button"><span>Apply Coupon</span></button>
                </form>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="totals">
                <h3>Tổng cộng đơn hàng</h3>
                <div class="inner">
                  <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                    <colgroup>
                    <col>
                    <col width="1">
                    </colgroup>
                    <tfoot>
                      <tr>
                        <td colspan="1" class="a-left"><strong>Thành tiền</strong></td>
                        <td class="a-right"><strong><span class="price">${total } VND</span></strong></td>
                      </tr>
                    </tfoot>
                    <tbody>
                      <tr>
                        <td colspan="1" class="a-left"> Tạm tính </td>
                        <td class="a-right"><span class="price">${total } VND</span></td>
                      </tr>
                    </tbody>
                  </table>
                  <ul class="checkout">
                    <li>
                     <a href="CheckoutController"> <button class="button btn-proceed-checkout" title="Proceed to Checkout" type="button"><span>Tiến hành thanh toán</span></button></a>
                    </li>
                  </ul>
                </div>
              </div>
              <!--inner--> 
            </div>
          </div>
          <!--cart-collaterals--> 
        </div>
           </c:if>
           <c:if test="${sessionScope.cart.size()<=0 }">
           	<div class="text-center">
           		<img alt="" src="https://gioquanhanh.com/extension/product/img/cart-empty.png">
           		<h5 style="margin-bottom: 20px">Không có sản phẩm nào trong giỏ hàng của bạn</h5>
           		<a class="btn btn-info"  href="${pageContext.request.contextPath }/Home">Tiếp tục mua hàng</a>
           	</div>
           </c:if>
      </div>
    </div>
  </section>
</body>
</html>