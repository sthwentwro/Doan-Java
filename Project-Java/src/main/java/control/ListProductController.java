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
import entity.Category;
import entity.Product;

/**
 * Servlet implementation class ListProductController
 */
@WebServlet(urlPatterns ={"/danhsachsanpham"})
public class ListProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListProductController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		//lay danh sach cac loai san pham
		List<Category> listc = dao.getListCategory();
		request.setAttribute("listc", listc);
		String id=request.getParameter("idcategory");
		int idcategory=Integer.parseInt(id);
		List<Product> list = dao.getListProductByCategory(idcategory);
		request.setAttribute("tenloai", list.get(1).getTenloai());
		request.setAttribute("listP", list);		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/grid.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
