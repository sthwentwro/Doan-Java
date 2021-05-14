package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.User;
import utils.AppUtils;
import utils.SecurityUtils;

/**
 * Servlet implementation class loginadmincontroller
 */
@WebServlet(urlPatterns = {"/admin/login-admin"})
public class loginadmincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginadmincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/admin/login-admin.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		UserDAO dao = new UserDAO();
		User user = dao.getUser(userName, pass);
		//neu user la null thi thong bao loi
		if(user == null) {
			String errorMessage = "Tên đăng nhập hoặc mật khẩu không đúng";
			 
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("/views/admin/login-admin.jsp").forward(request, response);
            return;
		}
		else if(SecurityUtils.hasPermission(request,user.getRoleid())) {
			//luu thong tin nguoi dung vao session
			AppUtils.storeLoginedUser(request.getSession(), user);
			response.sendRedirect(request.getContextPath()+"/admin/");
        	return;
		}
		else {
			String errorMessage = "Không có quyền truy cập trang này";
			 
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("/views/admin/login-admin.jsp").forward(request, response);
            return;
		}
	}

}
