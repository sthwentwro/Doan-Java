package admin;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.CategoryDAO;
import dao.ProductDAO;
import dao.ThuonghieuDAO;
import utils.MessageUtils;

/**
 * Servlet implementation class listproductcontroller
 */
@WebServlet("/admin/list-product")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,//2MB
                 maxFileSize = 1024*1024*10,//10MB
                 maxRequestSize = 1024*1024*50)//50MB
public class listproductcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDAO daoP;
	private ThuonghieuDAO daoT;
	boolean result = false;//ket qua thuc hien cac thao tac

    public listproductcontroller() {
    	daoP = new ProductDAO();
    	daoT = new ThuonghieuDAO();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "new":
			showAddProduct(request, response);
			break;
		case "insert":
            insertProduct(request, response);
            break;	
		case "edit":
			showEditProduct(request, response);
			break;
		case "update":
			updateProduct(request, response);
			break;
		case "delete":
			deleteProduct(request,response);
			break;
		default:
			listProduct(request, response);
			break;
		}
		
	}
	private void listProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String page = request.getParameter("page");
		//neu page rong thi cho vao trang 1
		int index = 1 ;
		if(page != null) {
			index = Integer.parseInt(page);
		}
		int count = daoP.getTotalProduct();//lay tong so user
		int endPage = count/8;
		if(count % 8 !=0) {
			endPage++;
		}
		request.setAttribute("tag", index);
		request.setAttribute("endP", endPage);
		request.setAttribute("listP", daoP.pagingProduct(index));
		request.getServletContext().getRequestDispatcher("/views/admin/listproduct.jsp").forward(request, response);
	}
	private void showEditProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{		
		int id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("listt", daoT.getAll());//lay danh sach thuong hieu san pham
		request.setAttribute("listc", daoP.getListCategory());//lay danh sach loai san pham
		request.setAttribute("detail", daoP.getProductbyId(id));		
		request.getServletContext().getRequestDispatcher("/views/admin/editproduct.jsp").forward(request, response);
	}
	private void updateProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
        String id = request.getParameter("id");
		String tensanpham = request.getParameter("productname");
		String giaban = request.getParameter("giaban");
		String slt = request.getParameter("slton");
		String mota = request.getParameter("mota");
		String noidung = request.getParameter("noidung");
		String cover = request.getParameter("cover");
		String loai = request.getParameter("loai");
		String thuonghieu = request.getParameter("thuonghieu");
		String baohanh = request.getParameter("baohanh");
		result = daoP.updateProduct(tensanpham, loai, thuonghieu, mota, slt, giaban, cover, id, noidung,baohanh);		
		showEditProduct(request, response);
	}
	private void showAddProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		request.setAttribute("listt", daoT.getAll());//lay danh sach thuong hieu san pham
		request.setAttribute("listc", daoP.getListCategory());//lay danh sach loai san pham
		request.getServletContext().getRequestDispatcher("/views/admin/addproduct.jsp").forward(request, response);
	}
	private void insertProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String tensanpham = request.getParameter("productname");
		String giaban = request.getParameter("giaban");
		String slt = request.getParameter("slton");
		String mota = request.getParameter("mota");
		String noidung = request.getParameter("noidung");
		String cover = request.getParameter("cover");
		String loai = request.getParameter("loai");
		String thuonghieu = request.getParameter("thuonghieu");
		String baohanh = request.getParameter("baohanh");
		result = daoP.insertProduct(tensanpham, loai, thuonghieu, mota, slt, giaban, cover, noidung, baohanh,"admin");
		listProduct(request, response);
	}
	private void deleteProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{
		  String id = request.getParameter("id");
		  daoP.deleteProduct(id);
		  listProduct(request, response);

    }
	/*
	 * private String uploadfile(HttpServletRequest request, HttpServletResponse
	 * response) throws IOException, ServletException { //thu muc luu file String
	 * SAVE_DIRECTORY = "image";
	 * 
	 * // Đường dẫn tuyệt đối tới thư mục gốc của web app. String appPath =
	 * request.getServletContext().getRealPath("/"); appPath = appPath.replace('\\',
	 * '/');
	 * 
	 * // Thư mục để save file tải lên. String fullSavePath = null; if
	 * (appPath.endsWith("/")) { fullSavePath = appPath + SAVE_DIRECTORY; } else {
	 * fullSavePath = appPath + "/" + SAVE_DIRECTORY; }
	 * 
	 * // Tạo thư mục nếu nó không tồn tại. File fileSaveDir = new
	 * File(fullSavePath); if (!fileSaveDir.exists()) { fileSaveDir.mkdir(); }
	 * 
	 * // Danh mục các phần đã upload lên (Có thể là nhiều file). for (Part part :
	 * request.getParts()) { String fileName = extractFileName(part); if (fileName
	 * != null && fileName.length() > 0) { String filePath = fullSavePath +
	 * File.separator + fileName; // Ghi vào file. part.write(filePath); return
	 * filePath; } } return null; } private String extractFileName(Part part) {
	 * String contentDisp = part.getHeader("content-disposition"); String[] items =
	 * contentDisp.split(";"); for (String s : items) { if
	 * (s.trim().startsWith("filename")) { String clientFileName =
	 * s.substring(s.indexOf("=") + 2, s.length() - 1); clientFileName =
	 * clientFileName.replace("\\", "/"); int i = clientFileName.lastIndexOf('/');
	 * return clientFileName.substring(i + 1); } } return null; }
	 */
}
