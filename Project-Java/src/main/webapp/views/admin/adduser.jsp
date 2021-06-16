<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Them user</title>
</head>
<body>	
			<c:if test="${not empty messageRespone}">
				<div class="alert alert-${alert}">
					${messageRespone}
				</div>
			</c:if>	
		<div class="card">
			<div class="card-header">
				<h5 class="card-title">Thêm người dùng mới</h5>
			</div>		
			<div class="card-body">
				<form method="POST" action="${pageContext.request.contextPath}/admin/list-user/new">
					<div class="form-group row">
						<label class="col-form-label col-sm-2 text-sm-right">Username</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" placeholder="Username" name="username" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-sm-2 text-sm-right">Password</label>
						<div class="col-sm-10">
							<input type="password" class="form-control"	placeholder="Password" name="password" required>
						</div>
					</div>
					<div class="form-group row">
					<label class="col-form-label col-sm-2 text-sm-right">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" placeholder="Email" name="email">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-sm-2 text-sm-right">Họ và tên</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="fullname" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-sm-2 text-sm-right">SDT</label>
						<div class="col-sm-3">
							<input type="number" class="form-control" name="SDT">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-form-label col-sm-2 text-sm-right">Địa chỉ</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="3" name="address"></textarea>
						</div>
					</div>
					<div class="form-group row"  style="margin-bottom: 50px;">
						<label for="inputState" class="col-form-label col-sm-2 text-sm-right">Vai trò</label> 
						<div class="col-sm-2">
						<select id="inputState"	class="form-control">
							<option selected>Khách hàng</option>
						</select>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10 ml-sm-auto">
							<button type="submit" class="btn btn-primary">Xác nhận</button>
						</div>
					</div>
				</form>
			</div>
		</div>
</body>
</html>