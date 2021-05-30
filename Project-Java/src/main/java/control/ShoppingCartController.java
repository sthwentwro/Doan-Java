package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import entity.Category;
import entity.Item;
import dao.ProductDAO;

@WebServlet("/cart")
public class ShoppingCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	public ShoppingCartController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");	//Khai báo chuỗi hành động là Action		
		if(action ==null) {
			doGet_DisplayCart(request, response); //Nếu không làm gì cả thì để trưng giỏ hàng
		}else {
			//So sánh 2 chuỗi hành động
			if(action.equalsIgnoreCase("buy")) {  //Nếu là hành động mua "buy"
				doGet_Buy(request, response);		//thì thực hiện hàm mua
			}else if(action.equalsIgnoreCase("remove")) { //Còn muốn không mua sản phẩm đó
				doGet_Remove(request,response);				//Remove nó ra khỏi giỏ hàng
			}else if(action.equalsIgnoreCase("updatecart"))
				doGet_UpdateCart(request,response); 
		}
		
	}

	protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		request.setAttribute("listc", dao.getListCategory());
		request.getRequestDispatcher("/views/web/shoppingcart.jsp").forward(request, response);
	}
	
	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Tạo một session 
		HttpSession session = request.getSession();
		List<Item> attribute = (List<Item>) session.getAttribute("cart"); //Ràng buộc danh sách Item với "cart"
		List<Item> cart = attribute;
		int id = Integer.parseInt(request.getParameter("id")); //Khai báo id kiểu int và chuyển qua chuỗi
		int index = isExisting( cart,id);
		cart.remove(index);
		session.setAttribute("cart", cart); 
		response.sendRedirect(request.getContextPath()+"/cart");
		if(cart.isEmpty()==true) { //Nếu giỏ hàng nó rỗng thật
			//
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

	protected void doGet_UpdateCart(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
		HttpSession session = request.getSession();
        List<Item> cart = (List<Item>)session.getAttribute("cart");
        //lay danh sách các giá trị số lượng của từng sản phẩm trong giỏ hàng
        String[] quantity = request.getParameterValues("quantity");
        //set lại số lượng của từng sản phẩm
        for (int i = 0; i < cart.size(); i++) {
			cart.get(i).setQuantity(Integer.parseInt(quantity[i]));
		}
        session.setAttribute("cart", cart);
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
	public int count(List<Item> cart)
	{
		return cart.size();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
