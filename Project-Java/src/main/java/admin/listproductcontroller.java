package admin;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.CategoryDAO;
import dao.ProductDAO;

/**
 * Servlet implementation class listproductcontroller
 */
@WebServlet("/admin/list-product")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,//2MB
                 maxFileSize = 1024*1024*10,//10MB
                 maxRequestSize = 1024*1024*50)//50MB
public class listproductcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDAO dao;   

    public listproductcontroller() {
    	dao = new ProductDAO();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "new":
			
			break;
		case "edit":
			showEditProduct(request, response);
			break;
		case "update":
			updateProduct(request, response);
			break;
		case "delete":
			
			break;
		default:
			listProduct(request, response);
			break;
		}
		
	}
	private void listProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		request.setAttribute("listP", dao.getListProduct());
		request.getServletContext().getRequestDispatcher("/views/admin/listproduct.jsp").forward(request, response);
	}
	private void showEditProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		int id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("listca", dao.getListCategory());//lay danh sach loai san pham
		request.setAttribute("detail", dao.getProductbyId(id));
		request.getServletContext().getRequestDispatcher("/views/admin/editproduct.jsp").forward(request, response);
	}
	private void updateProduct(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
        int id = Integer.parseInt(request.getParameter("id"));
		String tensanpham = request.getParameter("productname");
		int slt = Integer.parseInt(request.getParameter("slton"));
		String mota = request.getParameter("mota");
		String cover = uploadfile(request, response);
		int loai = Integer.parseInt(request.getParameter("loai"));
		
	}
	private String uploadfile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		//thu muc luu file
		String SAVE_DIRECTORY = "image";
		
		// Đường dẫn tuyệt đối tới thư mục gốc của web app.
        String appPath = "C:/Users/PC/Desktop";
        appPath = appPath.replace('\\', '/');
        
        // Thư mục để save file tải lên.
        String fullSavePath = null;
        if (appPath.endsWith("/")) {
            fullSavePath = appPath + SAVE_DIRECTORY;
        } else {
            fullSavePath = appPath + "/" + SAVE_DIRECTORY;
        }
        
        // Tạo thư mục nếu nó không tồn tại.
        File fileSaveDir = new File(fullSavePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
        
        // Danh mục các phần đã upload lên (Có thể là nhiều file).
        for (Part part : request.getParts()) {
            String fileName = extractFileName(part);
            if (fileName != null && fileName.length() > 0) {
                String filePath = fullSavePath + File.separator + fileName;
                // Ghi vào file.
                part.write(filePath);
                return filePath;
            }
        }
        return null;
	}
	private String extractFileName(Part part) {
	       String contentDisp = part.getHeader("content-disposition");
	       String[] items = contentDisp.split(";");
	       for (String s : items) {
	           if (s.trim().startsWith("filename")) {
	               String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
	               clientFileName = clientFileName.replace("\\", "/");
	               int i = clientFileName.lastIndexOf('/');
	               return clientFileName.substring(i + 1);
	           }
	       }
	       return null;
	   }
}
