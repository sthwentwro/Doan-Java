<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header -->
  <header>
    <div class="header-container">
      <div class="header-top">
        <div class="container">
          <div class="row"> 
            <!-- Header Language -->
            <div class="col-xs-7 col-sm-6">
           
              <div class="welcome-msg hidden-xs">Welcome to our website</div>
            </div>
            <div class="col-xs-5 col-sm-6"> 
              
              <div class="top-cart-contain pull-right"> 
            <!-- Top Cart -->
            <div class="mini-cart">
              <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"><a href="#">  Giỏ hàng <span class="cart_count">${sessionScope.cart.size() }</span></a></div>
              <div>
                <div class="top-cart-content" style="display: none;">
                  <div class="actions">
                    <a href="${pageContext.request.contextPath}/thanhtoan"><button class="btn-checkout" title="Checkout" type="button"><span>Thanh toán</span></button></a>
                    <a href="${pageContext.request.contextPath }/cart" class="view-cart" ><span>Xem giỏ hàng</span></a> </div>
                  <!--block-subtitle-->
                  
                  <ul class="mini-products-list" id="cart-sidebar">
                  <c:set var="total" value="0"></c:set>
                  <c:forEach items="${sessionScope.cart }" var="item">
                  <c:if test="${ not empty item}"></c:if>
                  <c:set var="total" value="${total + item.product.giaban * item.quantity }"></c:set>
                    <li class="item first">
                      <div class="item-inner"><a class="product-image" title="${item.product.tenphukien }" href="#l"><img alt="timi &amp; leslie Sophia Diaper Bag, Lemon Yellow/Shadow White" src="${item.product.cover}"></a>
                        <div class="product-details">
                          <!--access--> <strong>${item.quantity }</strong> x <span class="price">${item.product.giaban }</span><small>VND</small>
                          <p class="product-name"><a href="DetaiProduct?pid=${item.product.IDPhukien}">${item.product.tenphukien }</a></p>
                        </div>
                      </div>
                    </li>
                    </c:forEach>
                  </ul>
                  <!--actions--> 
                </div>
              </div>
            </div>           
            <!-- Top Cart -->
            <div id="ajaxconfig_info" style="display:none"><a href="#/"></a>
              <input value="" type="hidden">
              <input id="enable_module" value="1" type="hidden">
              <input class="effect_to_cart" value="1" type="hidden">
              <input class="title_shopping_cart" value="Go to shopping cart" type="hidden">
            </div>
          </div>
          <div class="top-search">
            <div class="block-icon pull-right"> <a data-target=".bs-example-modal-lg" data-toggle="modal" class="search-focus dropdown-toggle links"> <i class="fa fa-search"></i> </a>
              <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button aria-label="Close" data-dismiss="modal" class="close" type="button"><img src="template/web/images/interstitial-close.png" alt="close"> </button>
                    </div>
                    <div class="modal-body">
                     <form action="search" method="get" class="search" >
                        <div id="search">
                          <div class="input-group">
                            <input name="txt" placeholder="Search" class="form-control" type="text">
                            <button type="submit" class="btn-search"><i class="fa fa-search"></i></button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
              <!-- Header Top Links -->
              <div class="toplinks">
                <div class="links">
                  <div class="myaccount"><a title="My Account" href="#"><span class="hidden-xs">My Account</span></a></div>
                  <div class="check"><a title="Checkout" href="#"><span class="hidden-xs">Checkout</span></a></div>
                  <div class="demo"><a title="Blog" href="#"><span class="hidden-xs">Blog</span></a></div>
                  <!-- Header Company -->
                  <c:choose>
	                  <c:when test="${not empty loginedUser.username}">
	                  <div class="login"><a href="#"><span class="hidden-xs">Hello! ${loginedUser.username}</span></a></div>
	                  <div class="login"><a href="${pageContext.request.contextPath}/dangxuat"><span class="hidden-xs">Log Out</span></a></div>
	                  </c:when>
	                  <c:otherwise>
	                  <div class="login"><a href="${pageContext.request.contextPath}/dangnhap"><span class="hidden-xs">Log In</span></a></div>
	                  </c:otherwise>
                  </c:choose> 					
                  <!-- End Header Company -->                                   
                </div>
              </div>
              <!-- End Header Top Links -->              
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- end header --> 