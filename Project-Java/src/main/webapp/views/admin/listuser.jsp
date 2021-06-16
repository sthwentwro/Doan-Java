<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách user</title>
</head>
<body>
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Danh sách người dùng</h4>
				<a href="<%=request.getContextPath()%>/admin/list-user/new"><i class="align-middle mr-2" data-feather="user-plus"></i><span class="align-middle">Thêm user</span></a>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="width: 40%;">Name</th>
						<th style="width: 25%">Phone Number</th>
						<th class="d-none d-md-table-cell" style="width: 25%">Role</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${listUser}" var="i">
					<tr>
						<td>${i.username}</td>
						<td>${i.sdt}</td>
						<td class="d-none d-md-table-cell">${i.rolename}</td>
						<td class="table-action"><a href="<%=request.getContextPath()%>/admin/list-user/edit?id=${i.ID}"><i
								class="align-middle" data-feather="edit-2"></i></a> <button onclick="showMess(${i.ID})"><i
								class="align-middle" data-feather="trash"></i></button></td>
					</tr>	
				</c:forEach>									
				</tbody>
			</table>
		</div>
		<ul class="pagination pagination-md">
			<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-left"></i></a></li>
			<c:forEach begin="1" end="${endP}" var="p">
			   <li class="page-item ${tag == p ? "active":""}"><a class="page-link" href="<%=request.getContextPath()%>/admin/list-user?page=${p}">${p}</a></li>
			</c:forEach>	
			<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
		</ul>
</body>
</html>