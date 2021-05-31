<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
</head>
<body class="cms-index-index index">
<!-- Navbar -->
  <nav>
    <div class="container">
          <!-- Header Logo -->
          <div class="logo"><a title="Datson" href="${pageContext.request.contextPath}/Home"><img alt="Datson" src="template/web/images/logo.png"></a></div>
          <!-- End Header Logo --> 

        <div class="mm-toggle-wrap">
          <div class="mm-toggle"><i class="fa fa-reorder"></i><span class="mm-label">Menu</span> </div>
        </div>
     
          <ul class="nav hidden-xs menu-item menu-item-left">
            <li class="level0 parent drop-menu active"><a href="${pageContext.request.contextPath}/Home"><span>Home</span></a>
              
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
              <li class="level1 first"><a href="danhsachsanpham?idcategory=${item.idcategory}"><span>${item.tenloai}</span></a></li>
            </c:forEach>
           </ul>                 
       
    </div>
  </nav>
  <!-- end nav --> 
<!-- Slider -->
  <div id="thm-slideshow" class="thm-slideshow">
    <div class="container">
      <div id="rev_slider_4_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="classicslider1" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;"> 
        <!-- START REVOLUTION SLIDER 5.0.7 auto mode -->
        <div id="rev_slider_4_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
          <ul>
            <!-- SLIDE  -->
            <li data-index="rs-16" data-transition="zoomout" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="template/web/images/slide-img1.jpg"  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off"  data-title="Intro" data-description=""> 
              <!-- MAIN IMAGE --> 
              <img src="https://cdn.tgdd.vn/Files/2016/11/10/911830/top-4-nguyen-nhan-khien-dien-thoai-phat-no-va-cach-khac-phuc-3.jpg" alt=""> 
              <!-- LAYERS --> 
              
              <!-- LAYER NR. 1 -->
              <div class="tp-caption NotGeneric-Title   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-16-layer-1" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
									data-lineheight="['70','70','70','50']"
									data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="1000" 
									data-splitin="chars" 
									data-splitout="none" 
									data-responsive_offset="on" 

									data-elementdelay="0.05" 
									
									style="z-index: 5; white-space: nowrap;">Tránh phát nổ điện thoại</div>
              
              <!-- LAYER NR. 2 -->
              <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-16-layer-4" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['52','52','52','51']" 
												data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="1500" 
									data-splitin="none" 
									data-splitout="none" 
									data-responsive_offset="on" 

									
									style="z-index: 6; white-space: nowrap;">Điện thoại phát nổ, nguyên nhân và cách khắc phục</div>
              
              <!-- LAYER NR. 3 -->
              <div class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-16-layer-8" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['-68','-68','-68','-68']" 
												data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
										data-style_hover="cursor:default;"
						 
									 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="2000" 
									data-splitin="none" 
									data-splitout="none" 
									data-responsive_offset="on" 

									
									style="z-index: 7; white-space: nowrap;"><i class="pe-7s-refresh"></i> </div>
                                    
                                    
                                     <!-- LAYER NR. 3 -->
              <div class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-1" 
									 id="slide-17-layer-8" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['120','100','100','100']" 
												data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
										data-style_hover="cursor:default;"
						 
									 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="2000" 
									data-splitin="none" 
									data-splitout="none" 
									data-responsive_offset="on" 

									
									style="z-index: 7; white-space: nowrap;"><a href="https://www.dienmayxanh.com/kinh-nghiem-hay/top-4-nguyen-nhan-khien-dien-thoai-phat-no-va-cach-911830">Tìm hiểu thêm</a></div>
            </li>
            <!-- SLIDE  -->
            
            <!-- SLIDE  -->
            <li data-index="rs-18" data-transition="zoomin" data-slotamount="7"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="template/web/images/slide-img2.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Ken Burns" data-description=""> 
              <!-- MAIN IMAGE --> 
              <img src="template/web/images/slide-img2.jpg"  alt=""> 
              <!-- LAYERS --> 
              
              <!-- LAYER NR. 1 -->
              <div class="tp-caption tp-shape tp-shapewrapper   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-18-layer-9" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['15','15','15','15']" 
												data-width="600"
									data-height="155"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:0px;" 
									 data-mask_out="x:inherit;y:inherit;" 
									data-start="2000" 
									data-responsive_offset="on" 

									
									style="z-index: 5;background-color:rgba(0, 0, 0, 0.75);border-color:rgba(0, 0, 0, 0.50);"> </div>
              
              <!-- LAYER NR. 2 -->
              <div class="tp-caption NotGeneric-Title   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-18-layer-1" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
									data-lineheight="['70','70','70','50']"
									data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="y:[-100%];z:0;rZ:35deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="1000" 
									data-splitin="chars" 
									data-splitout="none" 
									data-responsive_offset="on" 

									data-elementdelay="0.05" 
									
									style="z-index: 6; white-space: nowrap;">Mega Sale </div>
              
              <!-- LAYER NR. 3 -->
              <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-18-layer-4" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['52','51','51','31']" 
												data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="1500" 
									data-splitin="none" 
									data-splitout="none" 
									data-responsive_offset="on" 

									
									style="z-index: 7; white-space: nowrap;">Lorem ipsum dolor sit amet, consectetur </div>
            </li>
            <!-- SLIDE  -->
            <li data-index="rs-19" data-transition="zoomout" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="template/web/images/video-img.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="HTML5 Video" data-description=""> 
              <!-- MAIN IMAGE --> 
              <img src="template/web/images/video-img.jpg"  alt=""> 
              <!-- LAYERS --> 
              
              <!-- BACKGROUND VIDEO LAYER -->
              <div class="rs-background-video-layer" 
									data-forcerewind="on" 
									data-volume="mute" 
									data-videowidth="100%" 
									data-videoheight="100%" 
									data-videomp4="template/web/images/bg1.mp4"
									data-videowebm="template/web/images/bg1.webm"  
									data-videopreload="preload" 
									data-videoloop="none" 
									data-forceCover="1" 
									data-aspectratio="16:9" 
									data-autoplay="true" 
									data-autoplayonlyfirsttime="false" 
									data-nextslideatend="true" 
								></div>
              
              <!-- LAYER NR. 1 -->
              <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0" 
									 id="slide-19-layer-10" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
												data-width="full"
									data-height="full"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="opacity:0;s:2000;e:Power3.easeInOut;" 
									 data-transform_out="opacity:0;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									data-start="2000" 
									data-basealign="slide" 
									data-responsive_offset="on" 
									data-responsive="off"
									
									style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0);"> </div>
              
              <!-- LAYER NR. 2 -->
              <div class="tp-caption NotGeneric-Title   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-19-layer-1" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
									data-lineheight="['70','70','70','50']"
									data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="1000" 
									data-splitin="chars" 
									data-splitout="none" 
									data-responsive_offset="on" 

									data-elementdelay="0.05" 
									
									style="z-index: 6; white-space: nowrap;">Hot deals</div>
              
              <!-- LAYER NR. 3 -->
              <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-19-layer-4" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['52','52','52','51']" 
												data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
						 
									 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="1500" 
									data-splitin="none" 
									data-splitout="none" 
									data-responsive_offset="on" 

									
									style="z-index: 7; white-space: nowrap;">Lorem ipsum dolor sit amet, consectetur </div>
              
              <!-- LAYER NR. 4 -->
              <div class="tp-caption NotGeneric-Icon   tp-resizeme rs-parallaxlevel-0" 
									 id="slide-19-layer-8" 
									 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
									 data-y="['middle','middle','middle','middle']" data-voffset="['-68','-68','-68','-68']" 
												data-width="none"
									data-height="none"
									data-whitespace="nowrap"
									data-transform_idle="o:1;"
										data-style_hover="cursor:default;"
						 
									 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;" 
									 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
									 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
									 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
									data-start="2000" 
									data-splitin="none" 
									data-splitout="none" 
									data-responsive_offset="on" 

									
									style="z-index: 8; white-space: nowrap;"><i class="pe-7s-ball"></i> </div>
            </li>
            <!-- SLIDE  -->
            
          </ul>
          <div class="tp-static-layers"></div>
          <div class="tp-bannertimer" style="height: 7px; background-color: rgba(255, 255, 255, 0.25);"></div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- end Slider -->
  

  
  <!-- Featured Slider -->
  <section class="featured-pro container wow bounceInUp animated">
    <div class="slider-items-products container">
      <div class="new_title center">
        <h2>Superb Products</h2>
        <div class="starSeparator"></div>
      </div>
      <div id="featured-slider" class="product-flexslider hidden-buttons">
        <div class="slider-items slider-width-col4 products-grid">
	        <c:forEach items="${listP}" var="i">
	        	<div class="item">
	            <div class="item-inner">
	              <div class="item-img">
	                <div class="item-img-info"> <a class="product-image" title="${i.tenphukien}" href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}"> <img alt="Retis lapen casen" src="${i.cover}"> </a>
	                  <div class="new-label new-top-left">new</div>
	                  <div class="box-timer">
	                      <div class="countbox_2 timer-grid"></div>
	                    </div>
	                  <div class="actions">
	                    <div class="quick-view-btn"><a href="#" data-toggle="tooltip" data-placement="right" title="" data-original-title="Quick View"> <span>Quick View</span></a></div>
	                    <p data-original-title="Out of Stock" title="" data-placement="right" data-toggle="tooltip" class="availability out-of-stock"><span class="ava-out-of-stock">Out of stock</span></p>
	                  </div>
	                  <div class="rating">
	                    <div class="ratings">
	                      <div class="rating-box">
	                        <div style="width:80%" class="rating"></div>
	                      </div>
	                      <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
	                    </div>
	                  </div>
	                </div>
	              </div>
	              <div class="item-info">
	                <div class="info-inner">
	                  <div class="item-title"> <a title="${i.tenphukien}" href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}">${i.tenphukien}</a> </div>
	                  <div class="item-content">
	                    <div class="item-price">
	                      <div class="price-box"> <span class="regular-price"> <span class="price">${i.giaban}</span> </span><small>VND</small>
	                       </div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- end item -->   
	        </c:forEach>
                                
        </div>
      </div>
    </div>
  </section>
  <!-- End Featured Slider -->
  
   <!--Promotion Banner-->
  <div class="offer-slider parallax parallax-2">
    <div class="container">
      <h2> Deals of the day</h2>
         <div class="starSeparator"></div>
      <p>Cửa hàng phụ kiện được cập nhật thường xuyên các ưu đãi.</p>
     <div class="box-timer">
                      <div class="countbox_1 timer-grid"></div>
                    </div>
      <a href="#" class="shop-now">Shop Now</a> </div>
  </div>
  <!--Promotion Banner End--> 
  
  <div class="container">
    <div class="row">
      <div class="products-grid">
        <div class="col-md-12">
          <div class="std">
            <div class="home-tabs wow bounceInUp animated">
              <div class="producttabs">
                <div id="thm_producttabs1" class="thm-producttabs"> 
                  <!--<h3></h3>-->
                  <div class="thm-pdt-container"> 
                    <!--Begin Tab Nav -->
                    <div class="thm-pdt-nav">
                      <ul class="pdt-nav">
                        <li class="item-nav" data-type="order" data-catid="" data-orderby="best_sales" data-href="pdt_best_sales"><span class="title-navi">Best Seller</span></li>
                        <li class="item-nav tab-loaded tab-nav-actived" data-type="order" data-catid="" data-orderby="new_arrivals" data-href="pdt_new_arrivals"><span class="title-navi">New Arrivals</span></li>
                        <li class="item-nav" data-type="order" data-catid="" data-orderby="featured" data-href="pdt_featured"><span class="title-navi">Featured</span></li>
                      </ul>
                    </div>
                    <!-- End Tab Nav --> 
                    <!--Begin Tab Content -->
                    <!-- Hien danh sach san pham moi -->
                    <div class="thm-pdt-content wide-5">
                      <div class="pdt-content is-loaded pdt_best_sales">
                        <ul class="pdt-list products-grid zoomOut play">
	                        <c:forEach items="${listP}" var="i">
	                        <li class="item item-animate wide-first">
                            <div class="item-inner">
                              <div class="item-img">
                                <div class="item-img-info"><a href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}" title="${i.tenphukien}" class="product-image"><img src="${i.cover}" alt="San pham"></a>
                      
                                  <div class="actions">
                                    <div class="quick-view-btn"><a href="#" data-toggle="tooltip" data-placement="right" title="" data-original-title="Quick View"> <span>Quick View</span></a></div>
                                    <div class="add_cart">
                                     <button class="button btn-cart" type="button" data-toggle="tooltip" data-placement="right" title="" data-original-title="Add to Cart"><span>Add to Cart</span></button>
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
                                      <div class="price-box"><span class="regular-price"><span class="price">${i.giaban}</span> </span><small>VND</small>
                                       </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </li>
	                      </c:forEach>
	                  </ul>                         
                      </div>
                      <!-- Hien danh sach san pham hot -->
                      <div class="pdt-content pdt_new_arrivals is-loaded  tab-content-actived">
                        <ul class="pdt-list products-grid zoomOut play">
                        <c:forEach items="${listP}" var="i">
                        	<li class="item item-animate wide-first">
                            <div class="item-inner">
                              <div class="item-img">
                                <div class="item-img-info"><a href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}" title="${i.tenphukien}" class="product-image"><img src="${i.cover}" alt="Retis lapen casen"></a>
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
                                      <div class="price-box"><span class="regular-price"><span class="price">${i.giaban}</span> </span><small>VND</small>
                                       </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </li>
                        </c:forEach>                        
                        </ul>
                      </div>
                      <div class="pdt-content pdt_featured is-loaded">
                        <ul class="pdt-list products-grid zoomOut play">
                          <c:forEach items="${listP}" var="i">
                        	<li class="item item-animate wide-first">
                            <div class="item-inner">
                              <div class="item-img">
                                <div class="item-img-info"><a href="${pageContext.request.contextPath}/DetaiProduct?pid=${i.IDPhukien}" title="${i.tenphukien}" class="product-image"><img src="${i.cover}" alt="Retis lapen casen"></a>
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
                                      <div class="price-box"><span class="regular-price"><span class="price">${i.giaban}</span> </span><small>VND</small>
                                       </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </li>
                        </c:forEach>        
                                                                              
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
 
  
  <!-- Latest Blog -->
  <!-- End Latest Blog -->
  
  <div class="brand-logo wow bounceInUp animated">
    <div class="container">
      <div class="slider-items-products">
        <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6"> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo3.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo2.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo1.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo4.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo5.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo6.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo1.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"><a href="#"><img src="template/web/images/b-logo4.png" alt="Image"></a> </div>
            <!-- End Item --> 
            
          </div>
        </div>
      </div>
    </div>
  </div>
  
  
  
  <div class="our-features-box">
    <div class="container">
      <ul>
        <li>
          <div class="feature-box red_bg"> <span class="icon-globe-alt"></span>
            <div class="content">
              <h3>FREE SHIPPING WORLDWIDE</h3>
            </div>
          </div>
        </li>
                <li>
          <div class="feature-box yellow_bg"> <span class="icon-support"></span>
            <div class="content">
              <h3>24/7 CUSTOMER SUPPORT</h3>
            </div>
          </div>
        </li>
          <li class="last">
          <div class="feature-box brown_bg"> <span class="icon-share-alt"></span>
            <div class="content">
              <h3>RETURNS AND EXCHANGES</h3>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</body>
</html>