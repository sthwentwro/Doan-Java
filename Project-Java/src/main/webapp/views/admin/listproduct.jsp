<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
</head>
<body>
	<div class="card">
			<div class="card-header">
				<h4 class="card-title">Danh sách sản phẩm</h4>
				<a href="<%=request.getContextPath()%>/admin/list-product/new"><i class="align-middle mr-2" data-feather="user-plus"></i><span class="align-middle">Thêm sản phẩm</span></a>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="width: 25%;">Tên sản phẩm</th>
						<th style="width: 25%">Ảnh sản phẩm</th>
						<th class="d-none d-md-table-cell" style="width: 25%">Giá</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${listP}" var="i">
					<tr>
						<td>${i.tenphukien}</td>
						<td><img src="${i.cover}" style="width: 50%"></td>
						<td class="d-none d-md-table-cell">${i.giaban}</td>
						<td class="table-action"><a href="<%=request.getContextPath()%>/admin/list-product?action=edit&id=${i.IDPhukien}"><i
								class="align-middle" data-feather="edit-2"></i></a> <button onclick="showMess(${i.IDPhukien})"><i
								class="align-middle" data-feather="trash"></i></button></td>
					</tr>	
				</c:forEach>									
				</tbody>
			</table>
		</div>
</body>
</html>