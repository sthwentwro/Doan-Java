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
import dao.ThuonghieuDAO;
import dao.UserDAO;
import entity.Category;
import entity.Thuonghieu;
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
		ProductDAO dao = new ProductDAO();
		//lay danh sach cac loai san pham
		List<Category> listc = dao.getListCategory();
		request.setAttribute("listc", listc);
		ThuonghieuDAO th = new ThuonghieuDAO();	
		List<Thuonghieu> thuonghieu = th.getAll();
		request.setAttribute("thuonghieu", thuonghieu);
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
			ProductDAO daoP = new ProductDAO();
			//lay danh sach cac loai san pham
			List<Category> listc = daoP.getListCategory();
			request.setAttribute("listc", listc);
			ThuonghieuDAO th = new ThuonghieuDAO();	
			List<Thuonghieu> thuonghieu = th.getAll();
			request.setAttribute("thuonghieu", thuonghieu);
			String errorMessage = "T??n ????ng nh???p ho???c m???t kh???u kh??ng ????ng";
			 
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("views/web/login.jsp").forward(request, response);
            return;
		}
		//luu thong tin nguoi dung vao session
		AppUtils.storeLoginedUser(request.getSession(), user);
		
		int redirectId = -1;
        try {
        	String redirect = request.getParameter("redirectId");
        	if(!redirect.equals("")) {
        		redirectId = Integer.parseInt(redirect);
        	}
        } 
        catch (Exception e) 
        {
        	e.printStackTrace();
        }
        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
    		// M???c ?????nh sau khi ????ng nh???p th??nh c??ng
            // chuy???n h?????ng v??? trang ch???
            response.sendRedirect(request.getContextPath() + "/Home");
        }
	}

}
