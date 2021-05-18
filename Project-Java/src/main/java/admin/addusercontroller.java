package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import utils.MessageUtils;

/**
 * Servlet implementation class addusercontroller
 */
@WebServlet("/admin/list-user/new")
public class addusercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO dao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addusercontroller() {
        dao = new UserDAO(); 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {																		
		request.getRequestDispatcher("/views/admin/adduser.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String diachi = request.getParameter("diachi");
		String sdt = request.getParameter("sdt");
		boolean result= false;
		//nếu không trùng tên đăng nhập thì cho phép đăng ký
		if(dao.checkUser(username)==null) {			
			result = dao.adduser(username, pass, email, sdt, diachi, fullname);			
		}
		MessageUtils.showMessage(request, result);
		request.getRequestDispatcher("/views/admin/adduser.jsp").forward(request, response);
	}

}
