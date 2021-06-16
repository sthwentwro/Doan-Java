package control;

import java.io.IOException;
import java.util.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BillDAO;
import dao.BillDetailDAO;
import dao.ThuonghieuDAO;
import entity.Bill;
import entity.BillDetail;
import entity.Item;
import entity.Thuonghieu;
import entity.User;

/**
 * Servlet implementation class PurChaseController
 */
@WebServlet("/PurChaseController")
public class PurChaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PurChaseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession();
		List<Item> attribute = (List<Item>) s.getAttribute("cart");
		if(attribute.isEmpty())
		{
			response.sendRedirect(request.getContextPath()+"/");
		}
		ThuonghieuDAO th = new ThuonghieuDAO();	
		List<Thuonghieu> thuonghieu = th.getAll();
		request.setAttribute("thuonghieu", thuonghieu);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession();			
		List<Item> attribute = (List<Item>) s.getAttribute("cart");
		User loginedUser = (User) s.getAttribute("loginedUser");
		String diachi = request.getParameter("diachi");
		int total = 0;
		for(int i =0 ;i<attribute.size();i++)
		{
			total += attribute.get(i).getQuantity()*attribute.get(i).getProduct().getGiaban();
		}
		if(!attribute.isEmpty())
		{
			Bill b = new Bill();
			b.setDathanhtoan(b.getDathanhtoan());
			b.setTinhtrangdonhang(b.getTinhtrangdonhang());
			b.setIDUser(loginedUser.getID());
			b.setTotal(total);
			b.setDiachigiao(diachi);
			/*
			 * int YYYY = Calendar.YEAR; int MM = Calendar.MONTH; int dd = Calendar.DATE;
			 * Date date = new Date(YYYY,MM,dd);
			 */
			Date date = new Date();
			Timestamp sqlDate = new Timestamp(date.getTime());
			
			 b.setNgaydat(sqlDate);
			 //SimpleDateFormat formatter = new  SimpleDateFormat("YYYY/MM/dd");
				
				 
				 String input = request.getParameter("bday2"); 
				 java.sql.Timestamp ts =java.sql.Timestamp.valueOf( input + " 00:00:00" );
				 b.setNgaygiao(ts);
				 
			
			BillDAO bi = new BillDAO();
			bi.addBill(b);
			int Id = bi.getLastBillID();
		for(int i=0 ; i < attribute.size();++i)
		{
			Item item = attribute.get(i);
			BillDetail bdetail = new BillDetail();
			bdetail.setMaDonHang(Id);
			bdetail.setMaPhuKien(item.getProduct().getIDPhukien());
			bdetail.setDongia(item.getProduct().getGiaban());
			bdetail.setSoluong(item.getQuantity());
			
			BillDetailDAO bde = new BillDetailDAO();
			bde.addBillDetail(bdetail);


		}
		s.setAttribute("cart", null);
		
		response.sendRedirect(request.getContextPath()+"/ThankyoubuyController");
		}
		
	}

}
