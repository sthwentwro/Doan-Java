<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sửa chi tiết sản phẩm</title>
</head>
<body>
    <c:if test="${not empty messageRespone}">
				<div class="alert alert-${alert}">
					${messageRespone}
				</div>
	</c:if>	
	<div class="card">
		<div class="card-header">
			<h5 class="card-title">Chi tiết sản phẩm</h5>
		</div>
		<div class="card-body">
			<form method="post" action="<%=request.getContextPath()%>/admin/list-product" enctype="multipart/form-data">
			<input name="action" value="update" hidden="">
			<div class="form-group">
			       <div class="col-sm-3">
					<label class="form-label">ID sản phẩm</label>					 
					   <input type="text" class="form-control" value="${detail.IDPhukien}" name="id" readonly>
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Tên sản phẩm</label> 
					<input type="text" class="form-control" value="${detail.tenphukien}" name="productname" required="required">
				</div>
				</div>
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Giá bán</label> <input type="text"
						class="form-control" value="${detail.giaban}" name="giaban">
				</div>
				</div>
				<div class="form-group">
						<label for="inputState" class="col-form-label col-sm-2 form-label w-100">Thương hiệu</label> 
						<div class="col-sm-2">
						<select id="inputState"	class="form-control" name="thuonghieu">
							<c:forEach items="${listt}" var="i">
								<c:choose>
									<c:when test="${detail.IDthuonghieu == i.IDThuongHieu}">
	            		               <option value=${ i.IDThuongHieu} selected>${i.tenThuongHieu}</option>
	            	                </c:when>
	            	                <c:otherwise>
								         <option value=${ i.IDThuongHieu}>${i.tenThuongHieu}</option>
								   </c:otherwise>
								</c:choose>								   
							</c:forEach>							
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="inputState" class="col-form-label col-sm-2 form-label w-100">Loại sản phẩm</label> 
						<div class="col-sm-2">
						<select id="inputState"	class="form-control" name="loai">
							<c:forEach items="${listc}" var="i">
								<c:choose>
									<c:when test="${detail.IDloaiPK == i.idcategory}">
	            		               <option value=${ i.idcategory} selected>${i.tenloai}</option>
	            	                </c:when>
	            	                <c:otherwise>
								         <option value=${ i.idcategory}>${i.tenloai}</option>
								   </c:otherwise>
								</c:choose>								   
							</c:forEach>							
						</select>
						</div>
					</div>
				<div class="form-group">
					<div class="col-sm-2">
					<label class="form-label">Số lượng tồn</label> 
					<input type="number" class="form-control" value="${detail.soluongton}" name="slton">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
					<label class="form-label">Bảo hành</label> 
					<input type="number" class="form-control" value="${detail.baohanh}" name="baohanh">
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Mô tả sản phẩm</label>
					<textarea class="form-control" rows="3" id="editor" name="mota">${detail.mota}</textarea>
					</div>
				</div>
				<div class="form-group">
					<img src="${detail.cover}" width="20%">
				</div>				
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Link ảnh</label>
					<input class="form-control" name="cover" value="${detail.cover}">
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Nội dung sản phẩm</label>
					<textarea class="form-control" rows="3" id="editor1" name="noidung">${detail.noidungSP}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="form-label w-100">File ảnh</label>
					    <input type="file" name="file" value="${detail.cover}">				
				</div>								
				<button type="submit" class="btn btn-primary">Cập nhật</button>
			</form>
		</div>
	</div>
</body>
</html>