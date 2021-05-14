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
				<h5 class="card-title">Danh sách người dùng</h5>
				<h6 class="card-subtitle text-muted">
					Add User					
				</h6>
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
						<td class="table-action"><a href="#"><i
								class="align-middle" data-feather="edit-2"></i></a> <a href="#"><i
								class="align-middle" data-feather="trash"></i></a></td>
					</tr>	
				</c:forEach>									
				</tbody>
			</table>
		</div>
</body>
</html>