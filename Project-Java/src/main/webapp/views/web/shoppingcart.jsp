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
  <section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
        <div class="cart">
          <div class="page-title">
            <h1>Shopping Cart</h1>
          </div>
          <div class="table-responsive">
            <form method="post" action="#">           
              <fieldset>
                <table class="data-table cart-table" id="shopping-cart-table">
                  <thead>
                    <tr class="first last">
                      <th rowspan="1">&nbsp;</th>
                      <th rowspan="1"><span class="nobr">Product Name</span></th>
                      <th rowspan="1" class="hidden-phone"></th>
                      <th rowspan="1" class="hidden-phone"><span class="nobr">Move to Wishlist</span></th>
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
                        <button id="empty_cart_button" class="button" title="Clear Cart" value="empty_cart" name="update_cart_action" type="submit"><span>Clear Cart</span></button></td>
                    </tr>
                  </tfoot>
                  <tbody>    
                  <c:set var="total" value="0"></c:set>
                  <c:forEach items="${sessionScope.cart }" var="item">
                  <c:if test="${ not empty item}"></c:if>
                  <c:set var="total" value="${total + item.product.giaban * item.quantity }"></c:set>
                    <tr class="first odd">
                      <td class="image"><a class="product-image" title="" href="#"><img width="75" height="75" alt="Women's Crepe Printed Black" src="${item.product.cover}"></a></td>
                      <td><h2 class="product-name"> <a href="#">${item.product.tenphukien }</a> </h2></td>
                      <td class="a-center hidden-table"><a title="Edit item parameters" class="edit-bnt" href="#"></a></td>
                      <td class="a-center hidden-table"><a class="link-wishlist1 use-ajax" href="#">Move</a></td>
                      <td class="a-center hidden-table"><span class="cart-price"> <span class="price">${item.product.giaban }</span> </span><small>VND</small>
                      </td>
                      <td class="a-center movewishlist"><input maxlength="12" class="input-text qty" title="Qty" size="4" value="${item.quantity }" name=""></td>
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
              <div class="shipping">
                <h3>Estimate Shipping and Tax</h3>
                <div class="shipping-form">
                  <form id="shipping-zip-form" method="post" action="#">
                    <p>Enter your destination to get a shipping estimate.</p>
                    <ul class="form-list">
                      <li>
                        <label class="required" for="country"><em>*</em>Country</label>
                        <div class="input-box">
                          <select title="Country" class="validate-select" id="country" name="country_id">
                            <option value=""> </option>
                            <option value="AF">Afghanistan</option>
                            <option value="AX">Åland Islands</option>
                            <option value="AL">Albania</option>
                          </select>
                        </div>
                      </li>
                      <li>
                        <label for="region_id">State/Province</label>
                        <div class="input-box">
                          <select title="State/Province" name="region_id" id="region_id">
                            <option value="">Please select region, state or province</option>
                            <option value="1" title="Alabama">Alabama</option>
                            <option value="2" title="Alaska">Alaska</option>
                          </select>
                        </div>
                      </li>
                      <li>
                        <label for="postcode">Zip/Postal Code</label>
                        <div class="input-box">
                          <input type="text" name="estimate_postcode" id="postcode" class="input-text validate-postcode">
                        </div>
                      </li>
                    </ul>
                    <div class="buttons-set11">
                      <button class="button get-quote" title="Get a Quote" type="button"><span>Get a Quote</span></button>
                    </div>
                    <!--buttons-set11-->
                  </form>
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="discount">
                <h3>Địa chỉ giao hàng</h3>
                <form method="post" action="#" id="discount-coupon-form">
                  <label for="coupon_code">Họ tên</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" name="coupon_code" id="coupon_code" class="input-text fullwidth" value="${loginedUser.fullname }">
                  <label for="coupon_code">Số điện thoại</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" name="coupon_code" id="coupon_code" class="input-text fullwidth" value="${loginedUser.sdt }" >
                  <label for="coupon_code">Địa chỉ</label>
                  <input type="hidden" value="0" id="remove-coupone" name="remove">
                  <input type="text" name="coupon_code" id="coupon_code" class="input-text fullwidth" value="${loginedUser.diachi }">
                  <button value="Apply Coupon" class="button coupon " title="Apply Coupon" type="button"><span>Cập nhật </span></button>
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
                      <button class="button btn-proceed-checkout" title="Proceed to Checkout" type="button"><span>Tiến hành thanh toán</span></button>
                    </li>
                  </ul>
                </div>
              </div>
              <!--inner--> 
              
            </div>
          </div>
          
          <!--cart-collaterals--> 
          
        </div>
      </div>
    </div>
  </section>
</body>
</html>