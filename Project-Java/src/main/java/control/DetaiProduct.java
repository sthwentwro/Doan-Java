package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.ThuonghieuDAO;
import entity.Category;
import entity.Product;
import entity.Thuonghieu;

@WebServlet("/DetaiProduct")
public class DetaiProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DetaiProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("pid"));
		ProductDAO dao = new ProductDAO();
		Product p =dao.getProductbyId(id);
		//lay danh sach cac loai san pham
		List<Category> listc = dao.getListCategory();
		request.setAttribute("listc", listc);
		request.setAttribute("detail", p);
		ThuonghieuDAO th = new ThuonghieuDAO();	
		List<Thuonghieu> thuonghieu = th.getAll();
		request.setAttribute("thuonghieu", thuonghieu);
		request.getRequestDispatcher("/views/web/viewproduct.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
