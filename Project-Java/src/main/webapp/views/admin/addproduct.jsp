<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thêm sản phẩm</title>
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
			<input name="action" value="insert" hidden="">
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Tên sản phẩm</label> 
					<input type="text" class="form-control" value="" name="productname" required="required">
				</div>
				</div>
				<div class="form-group">
				<div class="col-sm-3">
					<label class="form-label">Giá bán</label> <input type="text"
						class="form-control" value="" name="giaban">
				</div>
				</div>
				<div class="form-group"  style="margin-bottom: 50px;">
						<label for="inputState" class="col-form-label col-sm-2 form-label w-100">Thương hiệu</label> 
						<div class="col-sm-2">
						<select id="inputState"	class="form-control" name="thuonghieu">
							<c:forEach items="${listt}" var="i">
								   <option value=${ i.IDThuongHieu}>${i.tenThuongHieu}</option>							   
							</c:forEach>							
						</select>
						</div>
					</div>
					<div class="form-group"  style="margin-bottom: 50px;">
						<label for="inputState" class="col-form-label col-sm-2 form-label w-100">Loại sản phẩm</label> 
						<div class="col-sm-2">
						<select id="inputState"	class="form-control" name="loai">
							<c:forEach items="${listc}" var="i">
								 <option value=${ i.idcategory}>${i.tenloai}</option>							   
							</c:forEach>							
						</select>
						</div>
					</div>
				<div class="form-group">
					<div class="col-sm-2">
					<label class="form-label">Số lượng tồn</label> 
					<input type="number" class="form-control" value="" name="slton">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2">
					<label class="form-label">Bảo hành</label> 
					<input type="number" class="form-control" value="" name="baohanh">
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Mô tả sản phẩm</label>
					<textarea class="form-control" rows="3" id="editor" name="mota"></textarea>
					</div>
				</div>				
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Link ảnh</label>
					<input class="form-control" name="cover" value="">
					</div>
				</div>
				<div class="form-group">
				<div class="col-sm-10">
					<label class="form-label">Nội dung sản phẩm</label>
					<textarea class="form-control" rows="3" id="editor1" name="noidung"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="form-label w-100">File ảnh</label>
					    <input type="file" name="file" value="">				
				</div>								
				<button type="submit" class="btn btn-primary">Thêm</button>
			</form>
		</div>
	</div>
</body>
</html>