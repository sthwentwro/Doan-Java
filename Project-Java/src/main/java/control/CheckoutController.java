package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import dao.ThuonghieuDAO;
import entity.Category;
import entity.Item;
import entity.Thuonghieu;

/**
 * Servlet implementation class CheckoutController
 */
@WebServlet("/thanhtoan")
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession s = request.getSession();
		List<Item> attribute = (List<Item>) s.getAttribute("cart");
		if(attribute==null)
		{
			response.sendRedirect(request.getContextPath()+"/");
			return ;
		}
		ProductDAO dao = new ProductDAO();
		List<Category> listc = dao.getListCategory();
		request.setAttribute("listc", listc);
		ThuonghieuDAO th = new ThuonghieuDAO();	
		List<Thuonghieu> thuonghieu = th.getAll();
		request.setAttribute("thuonghieu", thuonghieu);
		request.getRequestDispatcher("/views/web/checkout.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
