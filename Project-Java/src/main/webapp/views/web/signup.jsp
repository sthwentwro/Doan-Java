<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
</head>
<body>
<!-- Navbar -->
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
  <!-- end nav --> 
  <!-- Main Container -->
  <section class="main-container col1-layout bounceInUp animated">
    <div class="main container">
      <div class="account-login">
        <div class="page-title">
          <h1>Tạo tài khoản mới</h1>
        </div>
        <fieldset class="col2-set">
          <div class="col-1 new-users"><strong>Người dùng mới</strong>
          <form method="POST" action="${pageContext.request.contextPath}/dangky">
            <div class="content">             
              <ul class="form-list">
                <li>
                <p class="text-danger">${errorname}</p>
                  <label for="email">Tên đăng nhập<span class="required">*</span></label>
                  <br>
                  <input type="text" title="" class="input-text" id="email" value="" name="username" required>
                </li>
                <li>
                  <label for="pass">Mật khẩu<span class="required" >*</span></label>
                  <br>
                  <input type="password" title="" id="pass" class="input-text" name="pass" required>
                </li>
                <li>
                  <p class="text-danger">${errorpass}</p>
                  <label for="pass">Xác nhận mật khẩu<span class="required">*</span></label>
                  <br>
                  <input type="password" title="" class="input-text" value="" name="repass" required>
                </li> 
                <li>
                    <label for="email">Họ và tên<span class="required" >*</span></label>
                    <br>
                    <input type="text" title="" class="input-text" value="" name="fullname" required>
                  </li>
                  <li>
                    <label for="email">Email</label>
                    <br>
                    <input type="text" title="" class="input-text" value="" name="email">
                  </li>
                  
                  <li>
                    <label for="email">Địa chỉ<span class="required" >*</span></label>
                    <br>
                    <input type="text" title="" class="input-text" value="" name="diachi" required>
                  </li>
                  <li>
                    <label for="email">Số điện thoại</label>
                    <br>
                    <input type="text" pattern="[0][0-9]{10}" class="input-text" value="" name="sdt">
                  </li>                
              </ul>
              <div class="buttons-set">
                <button type="submit" class="button create-account"><span>Create an Account</span></button>
              </div>
            </div>
            </form>
          </div>         
        </fieldset>
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
    </div>
  </section>
  <!-- Main Container End --> 
</body>
</html>