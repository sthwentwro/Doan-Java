<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav id="sidebar" class="sidebar">
	<div class="sidebar-content js-simplebar">
		<a class="sidebar-brand" href="index.html"> <span
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
				href="pages-settings.html"> <i class="align-middle"
					data-feather="settings"></i> <span class="align-middle">Settings</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="pages-invoice.html"> <i class="align-middle"
					data-feather="credit-card"></i> <span class="align-middle">Invoice</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="pages-blank.html"> <i class="align-middle"
					data-feather="book"></i> <span class="align-middle">Blank</span>
			</a></li>

			<li class="sidebar-header">Tools & Components</li>
			<li class="sidebar-item"><a href="#ui" data-toggle="collapse"
				class="sidebar-link collapsed"> <i class="align-middle"
					data-feather="briefcase"></i> <span class="align-middle">UI
						Elements</span>
			</a>
				<ul id="ui" class="sidebar-dropdown list-unstyled collapse "
					data-parent="#sidebar">
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-alerts.html">Alerts</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-buttons.html">Buttons</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-cards.html">Cards</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-general.html">General</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-grid.html">Grid</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-modals.html">Modals</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="ui-typography.html">Typography</a></li>
				</ul></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="icons-feather.html"> <i class="align-middle"
					data-feather="coffee"></i> <span class="align-middle">Icons</span>
			</a></li>

			<li class="sidebar-item"><a href="#forms" data-toggle="collapse"
				class="sidebar-link collapsed"> <i class="align-middle"
					data-feather="check-circle"></i> <span class="align-middle">Forms</span>
			</a>
				<ul id="forms" class="sidebar-dropdown list-unstyled collapse "
					data-parent="#sidebar">
					<li class="sidebar-item"><a class="sidebar-link"
						href="forms-layouts.html">Form Layouts</a></li>
					<li class="sidebar-item"><a class="sidebar-link"
						href="forms-basic-inputs.html">Basic Inputs</a></li>
				</ul></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="tables-bootstrap.html"> <i class="align-middle"
					data-feather="list"></i> <span class="align-middle">Tables</span>
			</a></li>

			<li class="sidebar-header">Plugins & Addons</li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="charts-chartjs.html"> <i class="align-middle"
					data-feather="bar-chart-2"></i> <span class="align-middle">Charts</span>
			</a></li>

			<li class="sidebar-item"><a class="sidebar-link"
				href="maps-google.html"> <i class="align-middle"
					data-feather="map"></i> <span class="align-middle">Maps</span>
			</a></li>
		</ul>
	</div>
</nav>