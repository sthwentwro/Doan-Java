package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;

/**
 * Servlet implementation class listusercontroller
 */
@WebServlet(urlPatterns = {"/admin/list-user/","/admin/list-user"})
public class listusercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO dao;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listusercontroller() {
    	dao = new UserDAO();
    }

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		//neu page rong thi cho vao trang 1
		int index = 1 ;
		if(page != null) {
			index = Integer.parseInt(page);
		}
	
		int count = dao.getTotalUser();//lay tong so user
		int endPage = count/8;
		if(count % 8 !=0) {
			endPage++;
		}
		request.setAttribute("tag", index);
		request.setAttribute("endP", endPage);
		request.setAttribute("listUser", dao.pagingUser(index));
		request.getRequestDispatcher("/views/admin/listuser.jsp").forward(request, response);			
	}		
}
