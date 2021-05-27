package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import entity.Category;
import entity.Item;
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
		String action = request.getParameter("action");	//Khai báo chuỗi hành động là Action
		ProductDAO dao = new ProductDAO();
		if(action ==null) {
			//lay danh sach cac loai san pham
			List<Category> listc = dao.getListCategory();
			request.setAttribute("listc", listc);
			String id=request.getParameter("idcategory");
			int idcategory=Integer.parseInt(id);
			String page = request.getParameter("page");
			//neu page rong thi cho vao trang 1
			int index = 1 ;
			if(page != null) {
				index = Integer.parseInt(page);
			}
			int count = dao.getTotalProductByCategory(idcategory);//lay tong so user
			int endPage = count/6;
			if(count % 6 !=0) {
				endPage++;
			}		
			List<Product> list = dao.getListProductByCategory(idcategory,index);
			request.setAttribute("tag", index);
			request.setAttribute("endP", endPage);
			request.setAttribute("tenloai", list.get(1).getTenloai());
			request.setAttribute("listP", list);		
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/grid.jsp");
			rd.forward(request, response);
		}else {
			//So sánh 2 chuỗi hành động
			if(action.equalsIgnoreCase("buy")) {  //Nếu là hành động mua "buy"
				doGet_Buy(request, response);		//thì thực hiện hàm mua
		}
		}
	}
	protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO productdao = new ProductDAO();
		HttpSession session = request.getSession();
		int qty = Integer.parseInt(request.getParameter("qty"));
		if(session.getAttribute("cart") == null) {  //Nếu đối tượng bị ràng buộc cart là rỗng
			List<Item> cart = new ArrayList<Item>();
			int id = Integer.parseInt(request.getParameter("id")); 
			cart.add(new Item(productdao.getProductbyId(id),qty)); //Thì add vào list cart mà lấy mã ID từ Item qua hàm getProductbyId 
			session.setAttribute("cart", cart);   //liên kết đối tượng cart với tên chỉ định là "cart"
		}else {
			List<Item> attribute = (List<Item>)session.getAttribute("cart");
			List<Item> cart = attribute;
			int id = Integer.parseInt(request.getParameter("id"));
			int index = isExisting( cart,id); //Khai báo index kiểu int = với giá trình từ của hàm kiểm tra có tồn tại hay không
			if(index == -1) { 
				cart.add(new Item(productdao.getProductbyId(id),qty));
			}else {
				int quantity = cart.get(index).getQuantity() +qty;  
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		response.sendRedirect(request.getContextPath()+"/cart");
	}

	//Hàm kiểm tra có tồn tại hay không
		private int isExisting( List<Item> cart, int id) {		
			for(int i= 0; i< cart.size();i++) { 
				if(cart.get(i).getProduct().getIDPhukien()==id) {	//Nếu get(i) là index và IDPhukien = id
					return i; //Trả về
				}
			}
			return -1; //Còn không thì thôi
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
