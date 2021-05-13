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
<!-- Khai báo sử dụng JSTL Core Tags -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Tai nghe chính hãng</title>
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
            <li class="level0 parent drop-menu active"><a href="${pageContext.request.contextPath}/Home"><span>Home</span></a>
            </li>
            <li class="level0 parent drop-menu"><a href="${pageContext.request.contextPath}/Home"><span>Product</span> </a>
              <ul class="level1" style="display: none;">
              <c:forEach items="${listc}" var="item">
              <li class="level1 first"><a href="danhsachsanpham?idcategory=${item.idcategory}"><span>${item.tenloai}</span></a></li>
              </c:forEach>
              </ul>
            </li>
            <li class="mega-menu"><a href="grid.html" class="level-top"><span>Women</span></a>
              <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="col-1">
                      <div class="nav-block nav-block-center">
                        <ul class="level0">
                          <li class="level1 nav-6-1 parent item"><a href="#.html" class=""><span>Handbags</span></a>
                            <ul class="level1">
                              <li class="level2 nav-6-1-1"><a href="#" class=""><span>Clutch Handbags</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/diaper-bags.html" class=""><span>Diaper Bags</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/bags.html" class=""><span>Bags</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/hobo-handbags.html" class=""><span>Hobo handbags</span></a></li>
                            </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item"><a href="#.html"><span>JACKETS</span></a>
                            <ul class="level1">
                              <li class="level2 nav-6-1-1"><a href="#/beaded-handbags.html"><span>Bathtime Goods </span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/fabric-handbags.html"><span>Bedding</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/handbags.html"><span>Blankets</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/leather-handbags.html"><span>Shower Curtains</span></a></li>
                            </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item"><a href="#.html"><span>Shoes</span></a>
                            <ul class="level1">
                              <li class="level2 nav-6-1-1"><a href="#/flat-shoes.html"><span>Flat Shoes</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/flat-sandals.html"><span>Flat Sandals</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/boots.html"><span>Boots</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/heels.html"><span>Heels</span></a></li>
                            </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item"><a href="#.html"><span>Jwellery</span></a>
                            <ul class="level1">
                              <li class="level2 nav-6-1-1"><a href="#/bracelets.html"><span>Bracelets</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#"><span>Necklaces &amp; Pendent</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/pendants.html"><span>Pendants</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/pins-brooches.html"><span>Pins &amp; Brooches</span></a></li>
                            </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item"><a href="#.html"><span>Dresses</span></a>
                            <ul class="level1">
                              <li class="level2 nav-6-1-1"><a href="#/casual-dresses.html"><span>Casual Dresses</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/evening.html"><span>Evening</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/designer.html"><span>Designer</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/party.html"><span>Party</span></a></li>
                            </ul>
                          </li>
                          <li class="level1 nav-6-1 parent item"><a href="#/swimwear.html"><span>Swimwear</span></a>
                            <ul class="level1">
                              <li class="level2 nav-6-1-1"><a href="#/swimwear/swimsuits.html"><span>Swimsuits</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/swimwear/beach-clothing.html"><span>Beach Clothing</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/swimwear/clothing.html"><span>Clothing</span></a></li>
                              <li class="level2 nav-6-1-1"><a href="#/swimwear/bikinis.html"><span>Bikinis</span></a></li>
                            </ul>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <!--nav-block nav-block-center-->
                    <div class="col-2">
                      <div class="menu_image"><a href="#" title=""><img src="images/menu_image.png" alt="menu_image"></a></div>
                    </div>
                  </div>
                  <!--level0-wrapper2--> </div>
              </div>
            </li>
            <li class="mega-menu"><a href="grid.html" class="level-top"><span>Men</span></a>
              <div  style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="nav-block nav-block-center">
                      <ul class="level0">
                        <li class="level1 nav-6-1 parent item"><a href="#.html" class=""><span>Shoes</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/sport-shoes.html"><span>Sport Shoes</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/casual-shoes.html"><span>Casual Shoes</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/leather-shoes.html"><span>Leather Shoes</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/canvas-shoes.html"><span>canvas shoes</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#.html"><span>Dresses</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/casual-dresses.html"><span>Casual Dresses</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/evening.html"><span>Evening</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/designer.html"><span>Designer</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/party.html"><span>Party</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#.html"><span>Jackets</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/coats.html"><span>Coats</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/formal-jackets.html"><span>Formal Jackets</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/leather-jackets.html"><span>Leather Jackets</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/blazers.html"><span>Blazers</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#.html"><span>Watches</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/fasttrack.html"><span>Fasttrack</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/casio.html"><span>Casio</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/titan.html"><span>Titan</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/tommy-hilfiger.html"><span>Tommy-Hilfiger</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#/sunglasses.html"><span>Sunglasses</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/sunglasses/ray-ban.html"><span>Ray Ban</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/sunglasses/fasttrack.html"><span>Fasttrack</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/sunglasses/police.html"><span>Police</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/sunglasses/oakley.html"><span>Oakley</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#/accesories.html"><span>Accesories</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/accesories/backpacks.html"><span>Backpacks</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/accesories/wallets.html"><span>Wallets</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/accesories/laptops-bags.html"><span>Laptops Bags</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/accesories/belts.html"><span>Belts</span></a></li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                    <!--level0-wrapper2-->
                    
                  </div>
                </div>
              </div>
            </li>
            </ul>
            <ul class="nav hidden-xs menu-item menu-item-right">
            <li class="mega-menu"><a href="grid.html" class="level-top"><span>Electronics</span></a>
              <div style="left: 0px; display: none;" class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="nav-block nav-block-center">
                      <ul class="level0">
                        <li class="level1 nav-6-1 parent item"><a href="#/mobiles.html"><span>Mobiles</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/mobiles/samsung.html"><span>Samsung</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/mobiles/nokia.html"><span>Nokia</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/mobiles/iphone.html"><span>IPhone</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/mobiles/sony.html"><span>Sony</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#.html" class=""><span>Accesories</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/mobile-memory-cards.html"><span>Mobile Memory Cards</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/cases-covers.html"><span>Cases &amp; Covers</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/mobile-haedphones.html"><span>Mobile Headphones</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/bluetooth-headsets.html"><span>Bluetooth Headsets</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#/cameras.html"><span>Cameras</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/cameras/camcorders.html"><span>Camcorders</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/cameras/point-shoot.html"><span>Point &amp; Shoot</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/cameras/digital-slr.html"><span>Digital SLR</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#camera-accesories.html"><span>Camera Accesories</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#/audio-video.html"><span>Audio &amp; Video</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/audio-video/mp3-players.html"><span>MP3 Players</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/audio-video/ipods.html"><span>IPods</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/audio-video/speakers.html"><span>Speakers</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/audio-video/video-players.html"><span>Video Players</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#/computer.html"><span>Computer</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/external-hard-disk.html"><span>External Hard Disk</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/computer/pendrives.html"><span>Pendrives</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/computer/headphones.html"><span>Headphones</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/computer/pc-components.html"><span>PC Components</span></a></li>
                          </ul>
                        </li>
                        <li class="level1 nav-6-1 parent item"><a href="#/home-appliances.html"><span>Appliances</span></a>
                          <ul class="level1">
                            <li class="level2 nav-6-1-1"><a href="#/vaccum-cleaners.html"><span>Vaccum Cleaners</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/indoor-lighting.html"><span>Indoor Lighting</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/kitchen-tools.html"><span>Kitchen Tools</span></a></li>
                            <li class="level2 nav-6-1-1"><a href="#/water-purifier.html"><span>Water Purifier</span></a></li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <!--level0-wrapper2--> 
                  
                </div>
              </div>
            </li>
            <li class="mega-menu"><a class="level-top" href="grid.html"><span>Furniture</span></a>
              
            </li>
            <li class="level0 nav-8 level-top"><a href="grid.html" class="level-top"><span>Kids</span></a></li>
          
          </ul>
          
          
       
    </div>
  </nav>
<div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Women</a></li>
            <li><a href="#">Holiday</a></li>
            <li><a href="#">Jeans</a></li>
            <li><a href="#">Retis lapen casen</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <section class="main-container col2-left-layout bounceInUp animated">
    <div class="container">
      <div class="row">
        <div class="col-main col-sm-9 col-sm-push-3">
          <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="" src="template/web/images/category-img1.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag"><span>Hot Sale</span> 49% OFF</div>
                      <h2 class="cat-heading">Women Collection</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                    </div>
                  </div>
                  <!-- End Item --> 
                  
                  <!-- Item -->
                  <div class="item"> <a href="#"><img alt="" src="template/web/images/category-img2.jpg"></a> 
                    
                    <!-- End Item --> 
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
          <article class="col-main">
            <div class="page-title">
              <h1>Women</h1>
            </div>
            <div class="toolbar">
              <div class="sorter">
                <div class="view-mode"> <span title="Grid" class="button button-active button-grid">&nbsp;</span><a href="list.html" title="List" class="button-list">&nbsp;</a> </div>
              </div>
              <div id="sort-by">
                <label class="left">Sort By: </label>
                <ul>
                  <li><a href="#">Position<span class="right-arrow"></span></a>
                    <ul>
                      <li><a href="#">Name</a></li>
                      <li><a href="#">Price</a></li>
                      <li><a href="#">Position</a></li>
                    </ul>
                  </li>
                </ul>
                <a class="button-asc left" href="#" title="Set Descending Direction"><span class="top_arrow"></span></a> </div>
              <div class="pager">
                <div id="limiter">
                  <label>View: </label>
                  <ul>
                    <li><a href="#">15<span class="right-arrow"></span></a>
                      <ul>
                        <li><a href="#">20</a></li>
                        <li><a href="#">30</a></li>
                        <li><a href="#">35</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
                <div class="pages">
                  <label>Page:</label>
                  <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="category-products">            
              <ul class="products-grid">
              <c:forEach items="${listP}" var="i">  
                <li class="item col-lg-4 col-md-3 col-sm-4 col-xs-6">
                  <div class="item-inner">
                    <div class="item-img">
                      <div class="item-img-info"><a href="#" title="Retis lapen casen" class="product-image"><img src="${i.cover}" alt="Retis lapen casen"></a>
                        <div class="new-label new-top-left">New</div>
                        <div class="actions">
                          <div class="quick-view-btn"><a href="#" data-toggle="tooltip" data-placement="right" title="" data-original-title="Quick View"> <span>Quick View</span></a></div>
                          <div class="link-wishlist"><a href="#" data-toggle="tooltip" data-placement="right" title="" data-original-title="Wishlist"><span>Add to Wishlist</span></a></div>
                          <div class="link-compare"><a href="#" data-toggle="tooltip" data-placement="right" title="" data-original-title="Compare"><span>Add to Compare</span></a></div>
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
                        <div class="item-title"><a href="#" title="Retis lapen casen">${i.tenphukien}</a> </div>
                        <div class="item-content">
                          <div class="item-price">
                            <div class="price-box"><span class="regular-price"><span class="price">${i.giaban}</span> </span> </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>  
                </c:forEach>  
              </ul>
            </div>
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="col-left sidebar">
            <div class="side-nav-categories">
              <div class="block-title"> Categories </div>
              <!--block-title--> 
              <!-- BEGIN BOX-CATEGORY -->
              <div class="box-content box-category">
                <ul>
                  <li> <a class="active" href="#/women.html">Women</a> <span class="subDropdown minus"></span>
                    <ul class="level0_415" style="display:block">
                      <li> <a href="#/women/tops.html"> Handbags </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/women/tops/evening-tops.html"> Clutch Handbags </a> </li>
                          <li> <a href="#/women/tops/shirts-blouses.html"> Diaper Bags </a> </li>
                          <li> <a href="#/women/tops/tunics.html"> Back Bags </a> </li>
                          <li> <a href="#/women/tops/vests.html"> Hobo handbags </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/women/bags.html"> Jackets </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/women/bags/bags.html"> Bags </a> </li>
                          <li> <a href="#/women/bags/designer-handbags.html"> Designer Handbags </a> </li>
                          <li> <a href="#/women/bags/purses.html"> Purses </a> </li>
                          <li> <a href="#/women/bags/shoulder-bags.html"> Shoulder Bags </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/women/shoes.html"> Shoes </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/women/shoes/flat-shoes.html"> Flat Shoes </a> </li>
                          <li> <a href="#/women/shoes/flat-sandals.html"> Flat Sandals </a> </li>
                          <li> <a href="#/women/shoes/boots.html"> Boots </a> </li>
                          <li> <a href="#/women/shoes/heels.html"> Heels </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/women/Jewellery.html"> Jewellery </a>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/women/Jewellery/bracelets.html"> Bracelets </a> </li>
                          <li> <a href="#/women/Jewellery/necklaces-pendants.html"> Necklaces &amp; Pendants </a> </li>
                          <li> <a href="#/women/Jewellery/pins-brooches.html"> Pins &amp; Brooches </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/women/dresses.html"> Dresses </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/women/dresses/casual-dresses.html"> Casual Dresses </a> </li>
                          <li> <a href="#/women/dresses/evening.html"> Evening </a> </li>
                          <li> <a href="#/women/dresses/designer.html"> Designer </a> </li>
                          <li> <a href="#/women/dresses/party.html"> Party </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      
                     
                      <!--level1-->
                      <li> <a href="#/women/swimwear.html"> Swimwear </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/women/swimwear/swimsuits.html"> Swimsuits </a> </li>
                          <li> <a href="#/women/swimwear/beach-clothing.html"> Beach Clothing </a> </li>
                          <li> <a href="#/women/swimwear/bikinis.html"> Bikinis </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                    </ul>
                    <!--level0--> 
                  </li>
                  <!--level 0-->
                  <li> <a href="#/men.html">Men</a> <span class="subDropdown plus"></span>
                    <ul class="level0_455" style="display:none">
                      <li> <a href="#/men/shoes.html"> Shoes </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/men/shoes/flat-shoes.html"> Flat Shoes </a> </li>
                          <li> <a href="#/men/shoes/boots.html"> Boots </a> </li>
                          <li> <a href="#/men/shoes/heels.html"> Heels </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/men/Jewellery.html"> Jewellery </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/men/Jewellery/bracelets.html"> Bracelets </a> </li>
                          <li> <a href="#/men/Jewellery/necklaces-pendants.html"> Necklaces &amp; Pendants </a> </li>
                          <li> <a href="#/men/Jewellery/pins-brooches.html"> Pins &amp; Brooches </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/men/dresses.html"> Dresses </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/men/dresses/casual-dresses.html"> Casual Dresses </a> </li>
                          <li> <a href="#/men/dresses/evening.html"> Evening </a> </li>
                          <li> <a href="#/men/dresses/designer.html"> Designer </a> </li>
                          <li> <a href="#/men/dresses/party.html"> Party </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/men/jackets.html"> Jackets </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/men/jackets/coats.html"> Coats </a> </li>
                          <li> <a href="#/men/jackets/jackets.html"> Jackets </a> </li>
                          <li> <a href="#/men/jackets/leather-jackets.html"> Leather Jackets </a> </li>
                          <li> <a href="#/men/jackets/blazers.html"> Blazers </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/men/swimwear.html"> Swimwear </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/men/swimwear/swimsuits.html"> Swimsuits </a> </li>
                          <li> <a href="#/men/swimwear/beach-clothing.html"> Beach Clothing </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                    </ul>
                    <!--level0--> 
                  </li>
                  <!--level 0-->
                  <li> <a href="#.html">Electronics</a> <span class="subDropdown plus"></span>
                    <ul class="level0_482" style="display:none">
                      <li> <a href="#/smartphones.html"> Smartphones </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/smartphones/samsung.html"> Samsung </a> </li>
                          <li> <a href="#/smartphones/apple.html"> Apple </a> </li>
                          <li> <a href="#/smartphones/blackberry.html"> Blackberry </a> </li>
                          <li> <a href="#/smartphones/nokia.html"> Nokia </a> </li>
                          <li> <a href="#/smartphones/htc.html"> HTC </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/cameras.html"> Cameras </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/cameras/digital-cameras.html"> Digital Cameras </a> </li>
                          <li> <a href="#/cameras/camcorders.html"> Camcorders </a> </li>
                          <li> <a href="#/cameras/lenses.html"> Lenses </a> </li>
                          <li> <a href="#/cameras/filters.html"> Filters </a> </li>
                          <li> <a href="#/cameras/tripod.html"> Tripod </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                      <li> <a href="#/accesories.html"> Accesories </a> <span class="subDropdown plus"></span>
                        <ul class="level1" style="display:none">
                          <li> <a href="#/accesories/headsets.html"> HeadSets </a> </li>
                          <li> <a href="#/accesories/batteries.html"> Batteries </a> </li>
                          <li> <a href="#/accesories/screen-protectors.html"> Screen Protectors </a> </li>
                          <li> <a href="#/accesories/memory-cards.html"> Memory Cards </a> </li>
                          <li> <a href="#/accesories/cases.html"> Cases </a> </li>
                          <!--end for-each -->
                        </ul>
                        <!--level1--> 
                      </li>
                      <!--level1-->
                    </ul>
                    <!--level0--> 
                  </li>
                  <!--level 0-->
                  <li> <a href="#/digital.html">Furniture</a> </li>
                  <!--level 0-->
                  <li class="last"> <a href="#/fashion.html">Kids</a> </li>
                  <!--level 0-->
                </ul>
              </div>
              <!--box-content box-category--> 
            </div>
            
            <div class="block block-cart">
              <div class="block-title ">My Cart</div>
              <div class="block-content">
                <div class="summary">
                  <p class="amount">There are <a href="#">2 items</a> in your cart.</p>
                  <p class="subtotal"> <span class="label">Cart Subtotal:</span> <span class="price">$49.99</span> </p>
                </div>
                <div class="ajax-checkout">
                  <button class="button button-checkout" title="Submit" type="submit"><span>Checkout</span></button>
                </div>
                <p class="block-subtitle">Recently added item(s) </p>
                <ul>
                  <li class="item"> <a href="#" title="Retis lapen casen" class="product-image"><img src="template/web/products-images/product.jpg" alt="Fisher-Price Bubble Mower"></a>
                    <div class="product-details">
                      <div class="access"> <a href="#" title="Remove This Item" class="btn-remove1"> <span class="icon"></span> Remove </a> </div>
                      <strong>1</strong> x <span class="price">$19.99</span>
                      <p class="product-name"> <a href="#">Office Colored Ladies Shirt</a> </p>
                    </div>
                  </li>
                  <li class="item last"> <a href="#" title="Retis lapen casen" class="product-image"><img src="template/web/products-images/product.jpg" alt="Prince Lionheart Jumbo Toy Hammock"></a>
                    <div class="product-details">
                      <div class="access"> <a href="#" title="Remove This Item" class="btn-remove1"> <span class="icon"></span> Remove </a> </div>
                      <strong>1</strong> x <span class="price">$8.00</span>
                      <p class="product-name"> <a href="#">Office Colored Ladies Shirt</a> </p>
                      
                      <!--access clearfix--> 
                    </div>
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