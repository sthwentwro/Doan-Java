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
<title>Danh sách sản phẩm</title>
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
<!-- end nav -->
<div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul class="breadcrumb">
            <!-- <li><a href="#">Home</a></li>
            <li><a href="#">Women</a></li>
            <li><a href="#">Holiday</a></li>
            <li><a href="#">Jeans</a></li>
            <li><a href="#">Retis lapen casen</a></li> -->
          </ul>
        </div>
      </div>
    </div>
  </div>
  <section class="main-container col2-left-layout bounceInUp animated">
    <div class="container">
      <div class="row">
        <div class="col-main col-sm-9 col-sm-push-3">       
          <article class="col-main">
            <div class="page-title">
              <h1>${tenloai}</h1>
            </div>
            <div class="toolbar">
              <div class="sorter">
                <div class="view-mode"> <span title="Grid" class="button button-active button-grid">&nbsp;</span><a href="danhsachsanpham?idth=1" title="List" class="button-list">&nbsp;</a> </div>
              </div>
              <div id="sort-by">
                <label class="left">Sắp xếp theo </label>
                <ul>
                  <li><a href="#">Vị Trí<span class="right-arrow"></span></a>
                    <ul>
                    	<c:choose>
                          <c:when test="${not empty param.idcategory  }">
                    	     <li><a href="danhsachsanpham?idcategory=${param.idcategory}&sort-by=name&page=${param.page}">Tên</a></li>
                             <li><a href="danhsachsanpham?idcategory=${param.idcategory}&sort-by=price&page=${param.page}">Giá</a></li>
                          </c:when>
                         <c:otherwise>
                    	     <li><a href="danhsachsanpham?idth=${param.idth}&sort-by=name&page=${param.page}">Tên</a></li>
                             <li><a href="danhsachsanpham?idth=${param.idth}&sort-by=price&page=${param.page}">Giá</a></li>                            
                         </c:otherwise>
                        </c:choose>
                      
                    </ul>
                  </li>
                </ul>
                <a class="button-asc left" href="#" title="Set Descending Direction"><span class="top_arrow"></span></a> </div>
              <div class="pager">              
                <div class="pages">
                  <label>Page:</label>
                  <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <c:forEach begin="1" end="${endP}" var="p">
                    <c:choose>
                    <c:when test="${not empty param.idcategory  }">
                    	<li class="${tag == p ? "active":""}"><a href="danhsachsanpham?idcategory=${param.idcategory}&page=${p}">${p}</a></li>
                    </c:when>
                    <c:otherwise>
                    	<li class="${tag == p ? "active":""}"><a href="danhsachsanpham?idth=${param.idth}&page=${p}">${p}</a></li>
                    </c:otherwise>
                    </c:choose>
                    </c:forEach>                                      
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="category-products">
            <c:choose>
            	<c:when test="${empty listP}">
            		<h2>Không tìm thấy sản phẩm nào</h2>
            	</c:when>
            	<c:otherwise>
		            	<ul class="products-grid">                       
		                <c:forEach items="${listP}" var="i">  
		                <li class="item col-lg-4 col-md-3 col-sm-4 col-xs-6">
		                  <div class="item-inner">
		                    <div class="item-img">
		                      <div class="item-img-info"><a href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}" title="${i.tenphukien}" class="product-image"><img src="${i.cover}" alt="image"></a>
		                        <div class="new-label new-top-left">New</div>
		                        <div class="actions">
		                          <div class="quick-view-btn"><a href="#" data-toggle="tooltip" data-placement="right" title="" data-original-title="Quick View"> <span>Quick View</span></a></div>
		                          <div class="add_cart">
		                            <a href="${pageContext.request.contextPath }/cart?action=buy&qty=1&id=${i.IDPhukien }"><button class="button btn-cart" type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Add to Cart"><span>Add to Cart</span></button></a>
		                          </div>
		                        </div>
		                        <div class="rating">
		                          <div class="ratings">
		                            <div class="rating-box">
		                              <div class="rating" style="width:80%"></div>
		                            </div>
		                            <p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		                    <div class="item-info">
		                      <div class="info-inner">
		                        <div class="item-title"><a href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}" title="${i.tenphukien}">${i.tenphukien}</a> </div>
		                        <div class="item-content">
		                          <div class="item-price">
		                            <div class="price-box"><span class="regular-price"><span class="price"><fmt:formatNumber value="${i.giaban}" type="number" maxFractionDigits="3"/></span> </span><small>VND</small>
		                             </div>
		                          </div>
		                        </div>
		                      </div>
		                    </div>
		                  </div>
		                </li>  
		                </c:forEach>  
		              </ul>
            	</c:otherwise>
            </c:choose>                 
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="col-left sidebar">
            <div class="side-nav-categories">
              <div class="block-title"> Loại sản phẩm  </div>
			 <div class="box-content box-category">
                <ul>
          		<c:forEach items= "${listc }" var="item">
                  <li> <a href="danhsachsanpham?idcategory=${item.idcategory}">${item.tenloai }</a> </li>
                </c:forEach>
                </ul>             
              </div>
            </div> 
          </aside>
        </div>
        <div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="col-left sidebar">
            <div class="side-nav-categories">
              <div class="block-title"> Thương hiệu sản phẩm </div>
			 <div class="box-content box-category">
                <ul>                
                  <li> <a href="danhsachsanpham?idth=1">Thương Hiệu</a> <span class="subDropdown plus"></span>
                    <ul class="level0_455" style="display:none">
                    <c:forEach items="${thuonghieu }" var="item">
                      <li> <a href="danhsachsanpham?idth=${item.IDThuongHieu }"> ${item.tenThuongHieu } </a> 
                      </li>  
                     </c:forEach> 
                    </ul>                   
                  </li> 
                </ul>
              </div>
            </div> 
          </aside>
        </div>
      </div>
    </div>
  </section>
</body>
</html>