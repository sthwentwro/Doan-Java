<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
     <%@ page import="java.util.Date" %>
       <%@ page import="java.text.SimpleDateFormat" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  
<title>Check Out</title>
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
  <section class="main-container col2-right-layout bounceInUp animated">
    <div class="main container">
      <div class="row">
        <div class="col-main col-sm-9">
          <div class="page-title">
            <h1>Thanh Toán</h1>
          </div>          
                  <c:set var="total" value="0"></c:set>
                  <div class="table-responsive">
                  <form method="post" action="#">           
              <fieldset>
                <table class="data-table cart-table" id="shopping-cart-table">
                  <thead>
                    <tr class="first last">
                      <th rowspan="1">&nbsp;</th>
                      <th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
                      <th rowspan="1" class="hidden-phone"></th>
                      <th colspan="1" class="a-center"><span class="nobr">Giá</span></th>
                      <th class="a-center " rowspan="1">Số lượng</th>
                      <th colspan="1" class="a-center">Tổng cộng</th>
                      <th class="a-center" rowspan="1">&nbsp;</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr class="first last">
                      <td class="a-right last" colspan="50">
                        <a href ="${pageContext.request.contextPath }/Home"><button onclick="#" class="button btn-continue" title="Continue Shopping" type="button" ><span>Tiếp Tục Mua Hàng</span></button></a>
                        
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
                      <td class="a-center hidden-table"><a title="Edit item parameters"></a></td>
                      <td class="a-center hidden-table"><span class="cart-price"> <span class="price"><fmt:formatNumber value="${item.product.giaban }" type="number" maxFractionDigits="3"/></span> </span><small>VND</small>
                      </td>
                      <td class="a-center movewishlist"><span>${item.quantity }</span></td>
                      <td class="a-center movewishlist"><span class="cart-price"> <span class="price"><fmt:formatNumber value="${item.product.giaban*item.quantity }" type="number" maxFractionDigits="3"/></span> </span><small>VND</small>
                      </td>
                
                    </tr>
                   
                   </c:forEach> 
                   
                  </tbody>
                  
                </table>
                    <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                    <colgroup>
                    <col>
                    <col width="1">
                    </colgroup>
                    <tfoot>
                      <tr>
                        <td colspan="1" class="a-left"><strong>Thành tiền</strong></td>
                        <td class="a-right"><strong><span class="price"><fmt:formatNumber value="${total }" type="number" maxFractionDigits="3"/> VND</span></strong></td>
                      </tr>
                    </tfoot>
                    <tbody>                     
                    </tbody>
                  </table>
              </fieldset>
            </form>
          </div>           
        </div>
        <aside class="col-right sidebar col-sm-3">
          <div class="block block-progress">
            <div class="block-title ">Thông Tin Giao Hàng</div>
           <div class="discount">
							<form method="post" action="${pageContext.request.contextPath}/PurChaseController" id="discount-coupon-form">
								<strong><label for="coupon_code">Họ tên </label></strong> <input type="hidden"
									value="0" id="remove-coupone" name="remove"> <p>
									
									 ${loginedUser.fullname }</p>
								<strong><label for="coupon_code">Số điện thoại</label></strong> <input
									type="hidden" value="0" id="remove-coupone" name="remove">
								
									<p>${loginedUser.sdt }</p>
								<strong><label for="coupon_code">Địa chỉ giao hàng</label></strong> 
								<input type="text" name="diachi" id="coupon_code" class="input-text fullwidth" value="${loginedUser.diachi}" required="required">
									
			
								<label for="coupon_code">Ngày Giao <span class="required">(Sau ngày đặt ít nhất 1 ngày)</span></label> 
									
								 <div class="form-group">
 									<fmt:formatDate var="fmtDate" value="<%=new java.util.Date()%>" pattern="yyyy-MM-dd"/>    
 									<input type="date" name="bday2" max="3000-12-31" 
       								 min="${fmtDate}" class="form-control">
       								   
									</div>																	
									 <button id="send2" name="" type="submit" class="button login"><span>Xác Nhận Thanh Toán</span></button>
							</form>
						</div>
          </div>
        </aside>
      </div>
    </div>
  </section>
</body>
</html>