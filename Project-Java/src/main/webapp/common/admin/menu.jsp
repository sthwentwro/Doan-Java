<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav id="sidebar" class="sidebar">
	<div class="sidebar-content js-simplebar">
		<a class="sidebar-brand" href="${pageContext.request.contextPath}/admin/"> <span
			class="align-middle">Trang Admin</span>
		</a>

		<ul class="sidebar-nav">
			<li class="sidebar-header">Trang</li>

			<li class="sidebar-item active"><a class="sidebar-link"
				href="${pageContext.request.contextPath}/admin/"> <i class="align-middle"
					data-feather="sliders"></i> <span class="align-middle">Bảng điều khiển</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="${pageContext.request.contextPath}/admin/list-user/"> <i class="align-middle"
					data-feather="user"></i> <span class="align-middle">Danh sách user</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="${pageContext.request.contextPath}/admin/list-product?action=list"> <i class="align-middle"
					data-feather="settings"></i> <span class="align-middle">Danh sách sản phẩm</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="${pageContext.request.contextPath}/admin/list-order?action=list"> <i class="align-middle"
					data-feather="credit-card"></i> <span class="align-middle">Danh sách đơn hàng</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="#"> <i class="align-middle"
					data-feather="book"></i> <span class="align-middle">Blank</span>
			</a></li>

			<li class="sidebar-header">Tools & Components</li>
			<li class="sidebar-item"><a href="#" data-toggle="collapse"
				class="sidebar-link collapsed"> <i class="align-middle"
					data-feather="briefcase"></i> <span class="align-middle">UI
						Elements</span>
			</a>
				<ul id="ui" class="sidebar-dropdown list-unstyled collapse "
					data-parent="#sidebar">
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">Alerts</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">Buttons</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">Cards</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">General</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">Grid</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">Modals</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="#">Typography</a></li>
				</ul></li>						
		</ul>
	</div>
</nav>