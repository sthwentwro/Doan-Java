<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cảm ơn</title>
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
   <div class="jumbotron text-center">
  <h1 class="display-3">Cảm ơn quý khách đã mua hàng!</h1>
  <hr>
  <p>
    Có vấn đề ? <a href="#">Liên hệ chúng tôi</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="Home" role="button">Về trang chủ</a>
  </p>
</div>
 
</body>
</html>