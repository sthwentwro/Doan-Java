package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.User;
import utils.MessageUtils;

/**
 * Servlet implementation class updateusercontroller
 */
@WebServlet("/admin/list-user/edit")
public class updateusercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO dao;   

    public updateusercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		dao = new UserDAO();
		User user = dao.getUserByID(id);
		request.setAttribute("user", user);
		request.getRequestDispatcher("/views/admin/edituser.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("iduser"));
		String username = request.getParameter("username").trim();
		String pass = request.getParameter("password").trim();
		String email = request.getParameter("email").trim();
		String fullname = request.getParameter("fullname").trim();
		String sdt = request.getParameter("SDT");
		String diachi = request.getParameter("address").trim();
		int roleid = Integer.parseInt(request.getParameter("role"));
		dao = new UserDAO();
		boolean result = dao.updateUser(id, username, pass, email, sdt, diachi, fullname, roleid);
		MessageUtils.showMessage(request, result);
		request.getRequestDispatcher("/views/admin/edituser.jsp").forward(request, response);
	}

}
