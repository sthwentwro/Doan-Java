package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.User;
import utils.AppUtils;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/dangnhap")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String pass = request.getParameter("password");
		UserDAO dao = new UserDAO();
		User user = dao.getUser(userName, pass);
		//neu user la null thi thong bao loi
		if(user == null) {
			String errorMessage = "Tên đăng nhập hoặc mật khẩu không đúng";
			 
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("views/web/login.jsp").forward(request, response);
            return;
		}
		//luu thong tin nguoi dung vao session
		AppUtils.storeLoginedUser(request.getSession(), user);
		
		int redirectId = -1;
        try {       	
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } 
        catch (Exception e) 
        {
        	e.printStackTrace();
        }
        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
    		// Mặc định sau khi đăng nhập thành công
            // chuyển hướng về trang chủ
            response.sendRedirect(request.getContextPath() + "/Home");
        }
	}

}
