<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết hóa đơn</title>
</head>
<body>
	<div class="container-fluid p-0">
					<h1 class="h3 mb-3">Chi tiết hóa đơn</h1>
					<div class="row">
						<div class="col-12">
							<div class="card">
							<form action="<%=request.getContextPath()%>/admin/list-order" method="post">
							<input name="action" value="update" hidden="">
								<div class="card-body m-sm-3 m-md-5">
									<div class="row">
										<div class="col-md-6">
											<div class="text-muted">Mã đơn hàng</div>
											<input name ="ma" value="${bill.maDonHang}" readonly="readonly">
										</div>
										<div class="col-md-6 text-md-right">
											<div class="text-muted">Ngày đặt</div>
											<strong>${bill.ngaydat}</strong>
										</div>
										<div class="col-md-6"></div>
										<div class="col-md-6 text-md-right">
											<div class="text-muted">Ngày giao</div>
											
											<input type="text" value="${bill.ngaygiao}" name="ngaygiao" required="required" placeholder="yyyy-mm-dd 00:00:00.0">
										</div>
									</div>

									<hr class="my-4" />

									<div class="row mb-4">
										<div class="col-md-6">
											<div class="text-muted">ID Khách hàng</div>
											<input name="iduser" value="${bill.IDUser}" readonly="readonly">
											<a href="<%=request.getContextPath()%>/admin/list-user/edit?id=${bill.IDUser}"><button type="button" class="btn btn-info">Chi tiết khách hàng</button></a>							
										</div>
										<div class="col-md-6 text-md-right">
											<div class="text-muted">Địa chỉ nhận hàng</div>
                                               <textarea class="form-control" name="diachi">${bill.diachigiao}</textarea>
										</div>
									</div>

									<table class="table table-sm">
										<thead>
											<tr>
												<th>Mã sản phẩm</th>
												<th>Số lượng</th>
												<th class="text-right">Số tiền</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${billdetail}" var ="i">
											<tr>		
											<td>${i.maPhuKien}</td>										
												<td>${i.soluong}</td>
												<td class="text-right"><fmt:formatNumber value="${i.soluong * i.dongia}" type="number" maxFractionDigits="3"/></td>
												
											</tr>
											</c:forEach>																														
										</tbody>
									</table>
									<div class="col-md-12 text-md-right">
									     <label>Tổng tiền: </label> <strong><fmt:formatNumber value="${bill.total}" type="number" maxFractionDigits="3"/></strong>
									</div>

									<div class="text-center">										
										<button type="submit" class="btn btn-primary">Cập nhật</button>
									</div>
								</div>
							</form>								
							</div>
						</div>
					</div>
				</div>
</body>
</html>