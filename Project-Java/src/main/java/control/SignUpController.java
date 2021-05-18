package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dao.UserDAO;
import entity.Category;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/dangky")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao = new ProductDAO();
		//lay danh sach cac loai san pham
		List<Category> listc = dao.getListCategory();
		request.setAttribute("listc", listc);
		request.getRequestDispatcher("views/web/signup.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String diachi = request.getParameter("diachi");
		String sdt = request.getParameter("sdt");
		//neu pass va repass khong giong nhau thì thông báo lỗi
		if(!pass.equals(repass)) {
			String errorMessage = "Mật khẩu nhập lại không khớp";			 
            request.setAttribute("errorpass", errorMessage);
            request.getRequestDispatcher("views/web/signup.jsp").forward(request, response);
		}
		else {
			UserDAO dao = new UserDAO();
			//nếu không trùng tên đăng nhập thì cho phép đăng ký
			if(dao.checkUser(username)==null) {
				if(dao.signup(username, pass, email, sdt, diachi, fullname)) {
					 response.sendRedirect(request.getContextPath() + "/dangnhap");
				}
			}
			else {
				String errorMessage = "Tên tài khoản đã được sử dụng";			 
	            request.setAttribute("errorname", errorMessage);
	            request.getRequestDispatcher("views/web/signup.jsp").forward(request, response);
			}		
		}
	}

}
