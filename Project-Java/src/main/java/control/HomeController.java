package control;

import java.io.IOException;
import java.util.List;


import javax.servlet.RequestDispatcher;
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

/**
 * Servlet implementation class HomeController
 */
@WebServlet({"/Home"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		//lay danh sach 4 san pham
		List<Product> list = dao.getNumProduct(4);
		request.setAttribute("listP", list);
		List<Category> listc = dao.getListCategory();
		request.setAttribute("listc", listc);
		ThuonghieuDAO th = new ThuonghieuDAO();	
		List<Thuonghieu> thuonghieu = th.getAll();
		request.setAttribute("thuonghieu", thuonghieu);
		//chuyen huong sang trang chu
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
