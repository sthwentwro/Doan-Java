<!-- Footer -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp"%>
  <footer>
    <div class="footer-inner">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-xs-12 col-lg-8">
            <div class="footer-column pull-left">
              <h4>CUSTOMMER SERVICE</h4>
              <ul class="links">
                <li class="first"><a href="#" title="Contact us">My Account</a></li>
                <li><a href="#" title="About us">Order History</a></li>
                <li><a href="#" title="faq">FAQ</a></li>
                <li><a href="#" title="Popular Searches">Specials</a></li>
                <li class="last"><a href="#" title="Where is my order?">Help Center</a></li>
              </ul>
            </div>
            <div class="footer-column pull-left">
              <h4>Corporation</h4>
              <ul class="links">
                <li class="first"><a title="Your Account" href="#">About us</a></li>
                <li><a title="Information" href="#">Customer Service</a></li>
                <li><a title="Addresses" href="#">Company</a></li>
                <li><a title="Addresses" href="#">Investor Relations</a></li>
                <li class="last"><a title="#" href="#">Advanced Search</a></li>              
              </ul>
            </div>
            <div class="footer-column pull-left">
              <h4>Why choose Us</h4>
              <ul class="links">
                <li class="first"><a href="#" title="About us">Shopping Guide</a></li>
                <li><a href="#" title="Blog">Blog</a></li>
                <li><a href="#" title="Company">Company</a></li>
                <li><a href="#" title="Investor Relations">Investor Relations</a></li>
                <li class=" last"><a href="#" title="Suppliers">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-xs-12 col-lg-4">
            <div class="footer-column-last">
              <div class="newsletter-wrap">
                <h4>Sign up for emails</h4>
                <form id="newsletter-validate-detail" method="post" action="#">
                  <div id="container_form_news">
                    <div id="container_form_news2">
                      <input type="text" class="input-text required-entry validate-email" value="Enter your email address" onFocus=" this.value='' " title="Sign up for our newsletter" id="newsletter" name="email">
                      <button class="button subscribe" title="Subscribe" type="submit"><span>Subscribe</span></button>
                    </div>
                  </div>
                </form>
              </div>
              <br>
              <div class="social">
                <h4>Follow Us</h4>
                <ul class="link">
                  <li class="fb pull-left"><a href="#"></a></li>
                  <li class="tw pull-left"><a href="#"></a></li>
                  <li class="googleplus pull-left"><a href="#"></a></li>
                  <li class="rss pull-left"><a href="#"></a></li>
                  <li class="pintrest pull-left"><a href="#"></a></li>
                  <li class="linkedin pull-left"><a href="#"></a></li>
                  <li class="youtube pull-left"><a href="#"></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
      <div class="col-sm-12 col-xs-12 footer-logo"><img alt="Datson" src="${pageContext.request.contextPath}/template/web/images/logo.png"></div>
      <address>
          <i class="fa fa-map-marker"></i>475A Điện Biên Phủ, Phường 25, Bình Thạnh, Thành phố Hồ Chí Minh <i class="fa fa-mobile"></i><span> +0916081126</span> <i class="fa fa-envelope"></i><span> superb@phukien.com</span>
          </address>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-xs-12 coppyright">&copy; 2021 All Rights Reserved.</div>
        </div>
      </div>
    </div>
  </footer>
<div id="mobile-menu">
  <ul>
    <li>
      <div class="mm-search">
        <form action="search" method="get" id="search_mob">
            <div class="input-group">
                <div class="input-group-btn">                        
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>                        
                 </div>
                 <input name="txt" placeholder="Search" class="form-control simple" type="text" placeholder="Search ...">
              </div>
         </form>
      </div>
    </li>
    <li>
      <div class="home"><a href="Home"><i class="icon-home"></i>Home</a> </div>
    </li>
    <li><a href="#">Thương hiệu</a>
      <ul>
      <c:forEach items="${thuonghieu}" var="item">
                <li> <a href="danhsachsanpham?idth=${item.IDThuongHieu}"> <span>${item.tenThuongHieu}</span> </a> </li>   
      </c:forEach>        
       </ul>   
    </li>
    <li><a href="#">Sản phẩm</a>
      <ul>
        <c:forEach items="${listc}" var="item">
              <li class="level1 first"><a href="danhsachsanpham?idcategory=${item.idcategory}"><span>${item.tenloai}</span></a></li>
            </c:forEach>
      </ul>
    </li>   
  </ul>              
</div>

<!-- End Footer --> 