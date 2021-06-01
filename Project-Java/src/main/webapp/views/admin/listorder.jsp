<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách đơn hàng</title>
</head>
<body>
	<div class="card">
			<div class="card-header">
				<h4 class="card-title">Danh sách đơn hàng</h4>				
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="width: 15%;">Mã đơn hàng</th>						
						<th class="d-none d-md-table-cell" style="width: 15%">Giá trị đơn hàng</th>
						<th style="width: 15%">Tình trạng đơn hàng</th>
						<th style="width: 15%">Tình trạng giao hàng</th>
						<th style="width: 15%">ID người mua</th> 
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${listO}" var="i">
					<tr>
						<td>${i.maDonHang}</td>						
						<td class="d-none d-md-table-cell"><fmt:formatNumber value="${i.total}" type="number" maxFractionDigits="3"/> VND</td>						
						<td>
						   <c:choose>
						  	<c:when test="${i.dathanhtoan == true}">
						  	     <span class="badge badge-success">Đã thanh toán</span>
						  	</c:when>
						  	<c:otherwise>
						  		<span class="badge badge-warning">Chưa thanh toán</span>
						  	</c:otherwise>
						  </c:choose>
						  <a href="<%=request.getContextPath()%>/admin/list-order?action=changett&ma=${i.maDonHang}&status=${i.dathanhtoan}"><i class="align-middle mr-2" data-feather="refresh-ccw"></i></a>
						</td>
						<td>
						  <c:choose>
						  	<c:when test="${i.tinhtrangdonhang == true}">
						  	     <span class="badge badge-success">Đã giao</span>
						  	</c:when>
						  	<c:otherwise>
						  		<span class="badge badge-warning">Đang giao</span>
						  	</c:otherwise>
						  </c:choose>
						  <a href="<%=request.getContextPath()%>/admin/list-order?action=changesh&ma=${i.maDonHang}&status=${i.tinhtrangdonhang}"><i class="align-middle mr-2" data-feather="refresh-ccw"></i></a>						  						  
						</td>
						<td>${i.IDUser}</td>
						<td class="table-action">
						<a href="<%=request.getContextPath()%>/admin/list-order?action=edit&ma=${i.maDonHang}"><i class="align-middle" data-feather="edit-2"></i></a> 
						<button onclick="showMessOrder(${i.maDonHang})"><i class="align-middle" data-feather="trash"></i></button></td>
					</tr>	
				</c:forEach>									
				</tbody>
			</table>
		</div>
		<ul class="pagination pagination-md">
			<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-left"></i></a></li>
			<c:forEach begin="1" end="${endP}" var="p">
			   <li class="page-item ${tag == p ? "active":""}"><a class="page-link" href="<%=request.getContextPath()%>/admin/list-order?action=list&page=${p}">${p}</a></li>
			</c:forEach>	
			<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
		</ul>
</body>
</html>